import 'package:html_lib/html.dart';

void main() {
  HTMLDivElement div = window.document.createElement('div',null);
  div.innerHTML = "<h1>hello</h1>";
  document.querySelector('body').appendChild(div);
}
