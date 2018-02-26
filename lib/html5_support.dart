@JS('html5_support')
@JsMap('packages/html5/src/js/defs')
@Module('./src/js/defs_ts')
//@HtmlImport('js/defs.html')
library html5_support;

import 'package:js/js.dart';
import 'package:polymerize_common/html_import.dart';
import 'package:polymerize_common/init.dart';
import 'package:polymerize_common/map.dart';
import 'package:dart2ts/annotations.dart';

part 'html5_support.polymerize.dart';

@JS('asConstructor')
external asConstructor(Type dartType);

@JS('unregisterByName')
external unregisterByName(String def);
