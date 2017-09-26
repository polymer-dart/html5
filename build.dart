import 'package:build_runner/build_runner.dart';
import 'package:polymerize/polymerize.dart';

main() {
  build([
    new BuildAction(polymerizePartBuilder(), 'html5'),
  ]);
}
