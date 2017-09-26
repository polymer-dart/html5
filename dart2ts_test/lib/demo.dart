import 'package:html5/html.dart';

class TestClass extends HTMLElement {
  String message = 'here we are!';

  TestClass() {
    ShadowRoot r = this.attachShadow(new ShadowRootInit()..mode = 'open');
    HTMLTemplateElement templateElement =
        document.querySelector('#myTemplate') as HTMLTemplateElement;

    for (Node n in asIterable(templateElement.content.childNodes)) {
      r.appendChild(
          document.importNode(n, true));
    }

    this.onclick = (Event ev) => alert('clicked on custom (${message})');
  }

  void connectedCallback() {
    print(message);
  }
}

void main(List<String> args) {
  /// Using package:html5 :

  HTMLDivElement div = document.createElement('div')
    ..innerHTML = '<h1>Dart2TS + package:html5 DEMO</h1>';
  HTMLBodyElement body = document.querySelector('body');
  body.appendChild(div);

  HTMLDivElement div2 = document.createElement('div')
    ..className = 'myclass'
    ..innerHTML = 'PRESS HERE!!!';
  body.appendChild(div2);

  div2.onclick = (Event ev) => alert('Hello!');

  /// Defining our custom element

  window.customElements.define('my-custom-elem', TestClass);

  /// Creating one instance with document.createElement

  TestClass myElem = document.createElement('my-custom-elem')
      as TestClass; // Cast is necessary for TS!

  body.appendChild(myElem);

  TestClass myElem2 = document.createElement('my-custom-elem') as TestClass;

  body.appendChild(myElem2);

  // Now create it as a normal class :
  TestClass myElem3 = new TestClass()..message = 'different';
  body
    ..appendChild(myElem3)
    ..appendChild(new TestClass())
    ..appendChild(new TestClass());
}
