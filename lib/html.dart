@JS('window')
library html_lib;

import 'dart:async';
import 'package:js/js.dart';
export 'package:html5/src/html5_support.dart';


part 'html_gen.dart';


@JS('Promise')
class Promise<T> {

}

@JS('MediaStream')
class MediaStream {

}

@JS('WindowProxy')
class WindowProxy {

}

@JS('Navigator')
class Navigator {

}

@JS('Performance')
class Performance {

}

@JS('nsIEditor')
class nsIEditor {

}

@JS('nsISupports')
class nsISupports {

}



@JS('MozControllers')
class MozControllers {

}

@JS('Counter')
class Counter {

}

@JS('NodeFilter')
class NodeFilter {

}

@JS('BufferSource')
class BufferSource {

}

@JS('MozSelfSupport')
class MozSelfSupport {

}

@JS('IID')
class IID {

}

@JS('DOMHighResTimeStamp')
class DOMHighResTimeStamp {

}

@JS('nsIBrowserDOMWindow')
class nsIBrowserDOMWindow {

}

@JS('nsIMessageBroadcaster')
class nsIMessageBroadcaster {

}

@JS('IdleDeadline')
class IdleDeadline {

}

@JS('External')
class External {

}

@JS('ApplicationCache')
class ApplicationCache {

}

// TODO : actually webidlize it.
@JS('SVGSVGElement')
class SVGSVGElement {

}

@JS('nsIDocShell')
class nsIDocShell {

}

@JS('nsILoadGroup')
class nsILoadGroup {

}

@JS('ArrayBuffer')
class ArrayBuffer {

}

@JS('SubtleCrypto')
class SubtleCrypto {

}

@JS('ArrayBufferView')
class ArrayBufferView {

}

@JS('EventListener')
abstract class EventListener {
  void handleEvent(Event ev);
}

@JS('nsIFile')
class nsIFile {

}

@JS('nsIControllers')
class nsIControllers {

}

@JS('MenuBuilder')
class MenuBuilder {

}

@JS('imgINotificationObserver')
class imgINotificationObserver {

}

@JS('imgIRequest')
class imgIRequest {

}

@JS('IDBFactory')
class IDBFactory {

}

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
