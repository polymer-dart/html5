@JS('html5_support')
@JsMap('packages/html5/src/js/defs')
//@HtmlImport('js/defs.html')
library html5_support;

import 'package:js/js.dart';
import 'package:polymerize_common/html_import.dart';
import 'package:polymerize_common/init.dart';
import 'package:polymerize_common/map.dart';

@JS('asConstructor')
external asConstructor(Type dartType);

@JS('unregisterByName')
external unregisterByName(String def);
