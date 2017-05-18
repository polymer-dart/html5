@JS('window')
@HtmlImport('support.html')
library html_lib;

import 'dart:async';
import 'package:js/js.dart';
export 'package:html5/src/html5_support.dart';
import 'package:html5/src/html5_support.dart' show unregisterAll;
import 'package:polymerize_common/html_import.dart';
import 'package:polymerize_common/init.dart';

part 'html_gen.dart';

// TODO ANNOTARE
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
      this.responseType: ''});

  Future<XMLHttpRequest> send(
      {var data,
      StreamSink<ProgressEvent> progressConsumer,
      StreamSink<ProgressEvent> uploadProgressConsumer}) {
    XMLHttpRequest _ajax;
    _ajax = new XMLHttpRequest();
    _ajax.open(method, url, isAsync, user, password);
    _ajax.withCredentials = withCredentials;
    _ajax.responseType = responseType;

    if (progressConsumer != null)
      _ajax.onprogress =
          (Event evt) => progressConsumer.add(evt as ProgressEvent);

    if (uploadProgressConsumer != null)
      _ajax.upload.onprogress =
          (Event evt) => uploadProgressConsumer.add(evt as ProgressEvent);

    void closeSinks() {
      if (progressConsumer != null) {
        progressConsumer.close();
      }
      if (uploadProgressConsumer != null) {
        uploadProgressConsumer.close();
      }
    }

    Completer<XMLHttpRequest> completer = new Completer();
    _ajax.onload = (Event evt) {
      completer.complete(_ajax);
      closeSinks();
    };
    _ajax.onerror = (Event evt) {
      completer.completeError(evt as ProgressEvent);
      closeSinks();
    };
    _ajax.onabort = (Event evt) {
      completer.completeError(evt as ProgressEvent);
      closeSinks();
    };

    _ajax.send(data);

    return completer.future;
  }
}
