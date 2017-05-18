@JS('html5_support')
@HtmlImport('js/defs.html')
library html5_support;

import 'package:js/js.dart';
import 'package:polymerize_common/html_import.dart';

@JS('asConstructor')
external asConstructor(Type dartType);

@JS('unregisterByName')
external unregisterByName(String def);

void unregisterAll(List<String> defs) => defs.forEach((d) => unregisterByName(d));
