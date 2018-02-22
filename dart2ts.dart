import 'dart:io';
import 'package:build_runner/build_runner.dart';
import 'package:dart2ts/dart2ts.dart';

main() {
  Directory dir = new Directory('.dart_tool');
  if (dir.existsSync()) dir.deleteSync(recursive: true);
  build([
    new BuildAction(new Dart2TsBuilder(), 'html5', inputs: ['lib/**.dart']),
  ], deleteFilesByDefault: true);
}
