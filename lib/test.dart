@JS('window')
library html_test;

import 'package:html5/html.dart';
import 'package:js/js.dart';

class MyComponent extends HTMLElement {
  MyComponent() {
    print("Hi there");
    createShadowRoot()..innerHTML = "<div> Hi!!!!!!! shadow </div>";
    onclick = new EventHandler<Event>()
      ..stream.listen((Event evt) {
        MouseEvent mouseEvent = evt as MouseEvent;
        print("CLICKED HERE : ${mouseEvent.x},${mouseEvent.y}");
      });
  }
}

void main() {
  // Needed to disable normal html <-> dart
  unregisterAll(INTERFACES);

  HTMLDivElement div = window.document.createElement('div');
  div.innerHTML = "<h1>hello</h1>";
  HTMLBodyElement body = document.querySelector('body');
  HTMLInputElement input = window.document.createElement('input');
  input
    ..type = "text"
    ..placeholder = "write something"
    ..value = "Prova";
  body.appendChild(div);
  body.appendChild(input);

  window.customElements.define('my-component', asConstructor(MyComponent));

  MyComponent comp = window.document.createElement('my-component', null);

  body.appendChild(comp);
}
