import 'dart:io';
import 'package:build_runner/build_runner.dart';
import 'package:dart2ts/dart2ts.dart';
import 'package:path/path.dart' as path;

main() async {
  Directory dir = new Directory('.dart_tool');
  if (dir.existsSync()) dir.deleteSync(recursive: true);
  BuildResult res = await build([
    new BuildAction(new Dart2TsBuilder(new Config(modulePrefix: 'node_modules')), 'html5', inputs: ['lib/**.dart']),
  ], deleteFilesByDefault: true);

  if (res.status != BuildStatus.success) {
    throw "Build error";
  }
  Process npm = await Process.start('npm', ['run', 'build']);
  stdout.addStream(npm.stdout);
  stderr.addStream(npm.stderr);
  int exitCode = await npm.exitCode;
  if (exitCode != 0) {
    throw "Build error";
  }

  // Replace "node_modules" with relative url

  RegExp re = new RegExp("import([^\"]*)\"node_modules/(.*)");
  await for (FileSystemEntity f in new Directory('dist/lib').list(recursive: true)) {
    if (f is File) {
      List<String> lines = await f.readAsLines();
      IOSink sink = f.openWrite();
      lines.map((l) {
        Match m = re.matchAsPrefix(l);
        if (m != null) {
          l = "import${m[1]}\"../../${m[2]}";
        }

        return l;
      }).forEach((l) => sink.writeln(l));

      await sink.close();
    }
  }


  // Copy assets
  await for (FileSystemEntity f in new Directory('lib').list(recursive: true)) {
    if (f is File && f.path.endsWith('.js')) {
      File d = new File(path.join('dist/lib',path.relative(f.path,from:'lib')));
      if (!d.parent.existsSync()) {
        await d.parent.create(recursive: true);
      }
      await f.copy(d.path);
    }
  }
}
