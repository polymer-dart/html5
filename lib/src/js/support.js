define(['external/html5/src/js/defs', 'dart_sdk', 'external/html5/html5'],
  function(_, sdk, html) {

    function run(f) {
      html.src__html5_support.unregisterAll(html.html.INTERFACES);
      sdk._isolate_helper.startRootIsolate((args) => f(args), sdk.dart.constFn(
        sdk.core.List$(sdk.core.String)));
    }

    return {
      run: run
    };

  });
