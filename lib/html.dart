@JS('window')
library html_lib;

import 'dart:async';
import 'dart:io';
import 'package:js/js.dart';
export 'package:html5/src/html5_support.dart';
import 'dart:io' as io show HttpClient;

part 'html_gen.dart';

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

  promise.then(onFullfilled, onRejected);

  return completer.future;
}

@JS('OriginAttributesDictionary')
class OriginAttributesDictionary {}

@JS('MediaStream')
class MediaStream {}

@JS('WindowProxy')
class WindowProxy {}

@JS('Navigator')
class Navigator {}

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

@JS('EventListener')
abstract class EventListener {
  void handleEvent(Event ev);
}

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

class EventHandler<E> {
  StreamController<E> _streamController = new StreamController.broadcast();
  Stream<E> get stream => _streamController.stream;

  void call(E event) => _streamController.add(event);
}

class HttpRequest {
  String method;
  String url;
  bool isAsync;
  String user;
  String password;
  bool withCredentials;
  String responseType;

  HttpRequest(
      {this.method,
      this.url,
      this.isAsync: true,
      this.user,
      this.password,
      this.responseType:''});

  Future<XMLHttpRequest> send(
      {var data,
      StreamConsumer<ProgressEvent> progressConsumer,
      StreamConsumer<ProgressEvent> uploadProgressConsumer}) {
    XMLHttpRequest _ajax;
    _ajax = new XMLHttpRequest();
    _ajax.open(method, url, isAsync, user, password);
    _ajax.withCredentials = withCredentials;
    _ajax.responseType = responseType;

    StreamController<ProgressEvent> progressEventStreamController =
        new StreamController();
    _ajax.onprogress =
        (Event evt) => progressEventStreamController.add(evt as ProgressEvent);

    StreamController<ProgressEvent> uploadProgressEventStreamController =
        new StreamController();
    _ajax.upload.onprogress =
        (Event evt) => uploadProgressEventStreamController.add(evt as ProgressEvent);

    Completer<XMLHttpRequest> completer = new Completer();
    _ajax.onload = (Event evt) {
      completer.complete(_ajax);
      progressEventStreamController.close();
      uploadProgressEventStreamController.close();
    };
    _ajax.onerror = (Event evt) {
      completer.completeError(evt as ProgressEvent);
      progressEventStreamController.close();
      uploadProgressEventStreamController.close();
    };
    _ajax.onabort = (Event evt) {
      completer.completeError(evt as ProgressEvent);
      progressEventStreamController.close();
      uploadProgressEventStreamController.close();
    };
    if (progressConsumer != null) {
      progressConsumer.addStream(progressEventStreamController.stream);
    }
    if (uploadProgressConsumer != null) {
      uploadProgressConsumer
          .addStream(uploadProgressEventStreamController.stream);
    }
    _ajax.send(data);

    return completer.future;
  }
}
