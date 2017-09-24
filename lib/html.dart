@JS('window')
library html_lib;

import 'dart:async';
import 'package:js/js.dart';
import 'package:js/js_util.dart';
import 'package:html5/html5_support.dart';
import 'package:polymerize_common/init.dart';
import 'dart:math' as math;

part 'html_gen.dart';
part 'html_addendum.dart';
part 'html.polymerize.dart';

void unregisterAll(List<String> defs) => defs.forEach((d) => unregisterByName(d));

@init
initHtml5() {
  unregisterAll(INTERFACES);
}

@JS('Promise')
class Promise<T> {
  external Promise<X> then<X>(X onFulfilled([T t]), [void onRejected([error])]);
  external JS$catch(void onRejected([error]));
}

/**
 * Promise to Future
 */
Future<X> asFuture<X>(Promise<X> promise) {
  Completer<X> completer = new Completer<X>();

  X onFullfilled([X x]) {
    completer.complete(x);
    return x;
  }

  void onRejected([error]) {
    completer.completeError(error);
  }

  // Type erasure
  (p) {
    callMethod(p, 'then', [onFullfilled]);
    callMethod(p, 'catch', [onRejected]);
  }(promise);
  return completer.future;
}

@JS('OriginAttributesDictionary')
class OriginAttributesDictionary {}

@JS('MediaStream')
class MediaStream {}

@JS('WindowProxy')
class WindowProxy {}

@JS('Navigator')
class Navigator {
  external String get language;
}

@JS('Performance')
class Performance {}

@JS('nsIEditor')
class nsIEditor {}

@JS('nsISupports')
class nsISupports {}

@JS('MozControllers')
class MozControllers {}

@JS('Counter')
class Counter {}

@JS('NodeFilter')
class NodeFilter {}

@JS('BufferSource')
class BufferSource {}

@JS('MozSelfSupport')
class MozSelfSupport {}

@JS('IID')
class IID {}

@JS('DOMHighResTimeStamp')
class DOMHighResTimeStamp {}

@JS('nsIBrowserDOMWindow')
class nsIBrowserDOMWindow {}

@JS('nsIMessageBroadcaster')
class nsIMessageBroadcaster {}

@JS('IdleDeadline')
class IdleDeadline {}

@JS('External')
class External {}

@JS('ApplicationCache')
class ApplicationCache {}

// TODO : actually webidlize it.
@JS('SVGSVGElement')
class SVGSVGElement {}

@JS('nsIDocShell')
class nsIDocShell {}

@JS('nsILoadGroup')
class nsILoadGroup {}

@JS('ArrayBuffer')
class ArrayBuffer {}

@JS('SubtleCrypto')
class SubtleCrypto {}

@JS('ArrayBufferView')
class ArrayBufferView {}

typedef void EventListener(Event ev);

@JS('nsIFile')
class nsIFile {}

@JS('nsIControllers')
class nsIControllers {}

@JS('MenuBuilder')
class MenuBuilder {}

@JS('imgINotificationObserver')
class imgINotificationObserver {}

@JS('imgIRequest')
class imgIRequest {}

@JS('IDBFactory')
class IDBFactory {}

@JS('XPathNSResolver')
abstract class XPathNSResolver {
  external String lookupNamespaceURI(String prefix);
}

@JS('document')
external Document get document;

@JS('window')
external Window get window;

@JS('URL.createObjectURL')
external String createObjectURL(var blob);
@JS('URL.createObjectURL')
external void revokeObjectURL(String url);


typedef void FileCallback(File file);
typedef void FileSystemEntryCallback(FileSystemEntry entry);
typedef void ErrorCallback(err);
typedef void VoidCallback();
typedef void FileSystemEntriesCallback(List<FileSystemEntry> entries);

class EventHandler<E> {
  StreamController<E> _streamController = new StreamController.broadcast();
  Stream<E> get stream => _streamController.stream;

  void call(E event) => _streamController.add(event);
}

class HttpRequest {
  static final Expando<HttpRequest> _requests = new Expando<HttpRequest>();

  String method;
  String url;
  bool isAsync;
  String user;
  String password;
  bool withCredentials;
  var responseType;
  String overrideMimeType;
  Map<String, String> headers;

  List<XMLHttpRequest> _runningRequests = [];

  factory HttpRequest.forAjax(XMLHttpRequest ajax) => _requests[ajax];

  HttpRequest(
      {this.method: 'GET',
      this.url,
      this.isAsync: true,
      this.user,
      this.password,
      this.responseType: '',
      this.headers,
      this.withCredentials,
      this.overrideMimeType});

  Future<XMLHttpRequest> send(
      {var data,
      StreamSink<ProgressEvent> progressConsumer,
      StreamSink<ProgressEvent> uploadProgressConsumer}) {
    XMLHttpRequest _ajax;
    _ajax = new XMLHttpRequest();
    _requests[_ajax] = this;
    _ajax.open(method, url, isAsync, user, password);
    _ajax.withCredentials = withCredentials;
    if (responseType != null) _ajax.responseType = responseType;
    if (overrideMimeType != null) _ajax.overrideMimeType(overrideMimeType);

    if (this.headers != null) {
      this.headers.forEach((k, v) => _ajax.setRequestHeader(k, v));
    }

    _runningRequests.add(_ajax);

    //if (progressConsumer != null) _ajax.onprogress = (Event evt) => progressConsumer.add(evt as ProgressEvent);

    if (uploadProgressConsumer != null)
      _ajax.upload.onprogress = (Event evt) => uploadProgressConsumer.add(evt as ProgressEvent);

    void closeSinks() {
      if (progressConsumer != null) {
        progressConsumer.close();
      }
      if (uploadProgressConsumer != null) {
        uploadProgressConsumer.close();
      }
    }

    Completer<XMLHttpRequest> completer = new Completer();
    _ajax.onprogress = (Event ev) {
      if (_ajax.status != 200 && _ajax.status != 301) {
        _runningRequests.remove(_ajax);
        if (!completer.isCompleted)
          completer.completeError(ev as ProgressEvent);
        closeSinks();
      } else if (progressConsumer != null) {
        progressConsumer.add(ev as ProgressEvent);
      }
    };
    _ajax.onload = (Event evt) {
      if (!completer.isCompleted)
        completer.complete(_ajax);
      closeSinks();
    };
    _ajax.onerror = (Event evt) {
      _runningRequests.remove(_ajax);
      if (!completer.isCompleted)
        completer.completeError(evt as ProgressEvent);
      closeSinks();
    };
    _ajax.onabort = (Event evt) {
      _runningRequests.remove(_ajax);
      if (!completer.isCompleted)
        completer.completeError(evt as ProgressEvent);
      closeSinks();
    };

    try {
      _ajax.send(data);
    } catch (error) {
      _runningRequests.remove(_ajax);
      if (!completer.isCompleted)
        completer.completeError(error);
    }

    return completer.future;
  }

  Future abortAll() {
    List<XMLHttpRequest> _tmp = new List.from(_runningRequests);
    Future allAbort = Future.wait(_tmp.map((r) {
      Completer _c = new Completer();

      _wrapper(func) => (Event ev) {
            _c.complete();
            func(ev);
          };

      r.onload = _wrapper(r.onload);
      r.onerror = _wrapper(r.onerror);
      r.onabort = _wrapper(r.onabort);

      return _c.future;
    }));

    _tmp.forEach((x) => x.abort());
    return allAbort;
  }
}
