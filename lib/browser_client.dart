// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'package:html5/html.dart' as html;
import 'dart:typed_data';

import 'package:async/async.dart';
import 'package:stack_trace/stack_trace.dart';

import 'package:http/src/base_client.dart';
import 'package:http/src/exception.dart';
import 'package:http/src/request.dart';
import 'package:http/src/response.dart';

abstract class WithProgressRequest {
  StreamSink<html.ProgressEvent> get progressConsumer;
  StreamSink<html.ProgressEvent> get uploadProgressConsumer;
  set progressConsumer(StreamSink<html.ProgressEvent> v);
  set uploadProgressConsumer(StreamSink<html.ProgressEvent> v);
}

class ExtendedRequest implements Request, WithProgressRequest {
  static final Expando<ExtendedRequest> _expando = new Expando<ExtendedRequest>();
  StreamSink<html.ProgressEvent> progressConsumer;
  StreamSink<html.ProgressEvent> uploadProgressConsumer;
  Request _request;

  factory ExtendedRequest(String method, url, {body, Encoding encoding, Map<String, String> headers, Map<String, Object> context}) =>
      new ExtendedRequest.forRequest(new Request(method, url, body: body, encoding: encoding, headers: headers, context: context));

  ExtendedRequest._(this._request);

  factory ExtendedRequest.forRequest(Request req) {
    ExtendedRequest res;
    res = _expando[req];
    if (res == null) {
      res = new ExtendedRequest._(req);
      _expando[req] = res;
    }
    return res;
  }

  @override
  Request change({Map<String, String> headers, Map<String, Object> context, body}) => _request.change(headers: headers, body: body);

  @override
  int get contentLength => _request.contentLength;

  @override
  Map<String, Object> get context => _request.context;

  @override
  Encoding get encoding => _request.encoding;

  @override
  Map<String, String> get headers => _request.headers;

  @override
  bool get isEmpty => _request.isEmpty;

  @override
  String get method => _request.method;

  @override
  String get mimeType => _request.mimeType;

  @override
  Stream<List<int>> read() => _request.read();

  @override
  Future<String> readAsString([Encoding encoding]) => _request.readAsString(encoding);

  @override
  Uri get url => _request.url;
}

// TODO(nweiz): Move this under src/, re-export from lib/http.dart, and use this
// automatically from [new Client] once sdk#24581 is fixed.

/// A `dart:html`-based HTTP client that runs in the browser and is backed by
/// XMLHttpRequests.
///
/// This client inherits some of the limitations of XMLHttpRequest. It ignores
/// the [BaseRequest.contentLength], [BaseRequest.persistentConnection],
/// [BaseRequest.followRedirects], and [BaseRequest.maxRedirects] fields. It is
/// also unable to stream requests or responses; a request will only be sent and
/// a response will only be returned once all the data is available.
class BrowserClient extends BaseClient {
  /// The currently active XHRs.
  ///
  /// These are aborted if the client is closed.
  final _xhrs = new Set<html.XMLHttpRequest>();

  /// Creates a new HTTP client.
  BrowserClient();

  /// Sends an HTTP request and asynchronously returns the response.
  Future<Response> send(Request request) async {
    var bytes = await collectBytes(request.read());
    var xhr = new html.XMLHttpRequest();
    _xhrs.add(xhr);
    _openHttpRequest(xhr, request.method, request.url.toString(), asynch: true);
    xhr.responseType = 'blob';
    xhr.withCredentials = request.context['html.withCredentials'] ?? false;
    request.headers.forEach(xhr.setRequestHeader);

    var completer = new Completer<Response>();
    xhr.onload = (_) {
      // TODO(nweiz): Set the response type to "arraybuffer" when issue 18542
      // is fixed.
      var blob = xhr.response == null ? new html.Blob([]) : xhr.response;
      var reader = new html.FileReader();

      ExtendedRequest extreq = new ExtendedRequest.forRequest(request);

      if (extreq?.progressConsumer != null) xhr.onprogress = (html.Event evt) => extreq.progressConsumer.add(evt as html.ProgressEvent);

      if (extreq?.uploadProgressConsumer != null) xhr.upload.onprogress = (html.Event evt) => extreq.uploadProgressConsumer.add(evt as html.ProgressEvent);

      reader.onload = (_) {
        var body = reader.result as Uint8List;
        completer.complete(
            new Response(xhr.responseURL, xhr.status, reasonPhrase: xhr.statusText, body: new Stream.fromIterable([body]), headers: _toHeaders(xhr.getAllResponseHeaders())));
      };

      reader.onerror = (error) {
        completer.completeError(new ClientException(error.toString(), request.url), new Chain.current());
      };

      reader.readAsArrayBuffer(blob);
    };

    xhr.onerror = (_) {
      // Unfortunately, the underlying XMLHttpRequest API doesn't expose any
      // specific information about the error itself.
      completer.completeError(new ClientException("XMLHttpRequest error.", request.url), new Chain.current());
    };

    xhr.send(bytes);

    try {
      return await completer.future;
    } finally {
      _xhrs.remove(xhr);
    }
  }

  // TODO(nweiz): Remove this when sdk#24637 is fixed.
  void _openHttpRequest(html.XMLHttpRequest request, String method, String url, {bool asynch, String user, String password}) {
    request.open(method, url, asynch, user, password);
  }

  /// Closes the client.
  ///
  /// This terminates all active requests.
  void close() {
    for (var xhr in _xhrs) {
      xhr.abort();
    }
  }
}

_toHeaders(String x) => x == null ? null : new Map.fromIterable(x.split('\n').map((l) => l.split(':')), key: (sp) => sp[0], value: (sp) => sp[1]);
