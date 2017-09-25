import 'package:html5/html.dart';

class Init implements ShadowRootInit {
  var mode;
  bool delegatesFocus;
  Init([this.mode = 'open', this.delegatesFocus = false]);
}

class TestClass extends HTMLElement {
  TestClass() {
    ShadowRoot r = this.attachShadow(new Init());
    Element decl = document.createElement('style');
    decl.textContent = '.myclass {' +
        'background-color:green;' +
        'display:inline-block;' +
        'padding:1em;' +
        'margin:1em;' +
        'color:white;' +
        '}';
    r.appendChild(decl);
    HTMLDivElement btn = document.createElement('div')
      ..className = 'myclass'
      ..innerHTML = 'Custom Element!';
    r.appendChild(btn);

    btn.onclick = (Event ev) => alert('clicked on custom');
  }
}

void main(List<String> args) {
  HTMLDivElement div = document.createElement('div')
    ..innerHTML = '<h1>Dart2TS + package:html5 demo</h1>';
  HTMLBodyElement body = document.querySelector('body');
  body.appendChild(div);

  HTMLDivElement div2 = document.createElement('div')
    ..className = 'myclass'
    ..innerHTML = 'PRESS HERE';
  body.appendChild(div2);

  div2.onclick = (Event ev) => alert('ciao');

  window.customElements.define('my-custom-elem', TestClass);

  TestClass myElem = document.createElement('my-custom-elem');

  body.appendChild(myElem);

  TestClass myElem2 = document.createElement('my-custom-elem');

  body.appendChild(myElem2);
}
