define(['dart_sdk'],
  function(sdk) {

    function run(f) {
      sdk._isolate_helper.startRootIsolate((args) => f(args), sdk.dart.constFn(
        sdk.core.List$(sdk.core.String)));
    }

    return {
      run: run
    };

  });
