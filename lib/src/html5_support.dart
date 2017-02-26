@JS('html5_support')
library html5_support;

import 'package:js/js.dart';

@JS('asConstructor')
external asConstructor(Type dartType);

@JS('unregisterByName')
external unregisterByName(String def);

void unregisterAll(List<String> defs) => defs.forEach((d) => unregisterByName(d));
