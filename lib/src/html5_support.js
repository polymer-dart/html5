define(['dart_sdk'], function(sdk) {
  function unregister(x) {
    if (!x) {
      return;
    }
    x.__proto__ && unregister(x.__proto__);
    x.prototype && unregister(x.prototype);
    delete x[sdk.dart._extensionType];
  }

  function unregisterByName(name) {
    unregister(window[name]);
  }

  function asConstructor(dartType) {
    let unwrappedType = sdk.dart.unwrapType(dartType);

    let jsClass = class extends unwrappedType {
      constructor() {
        super();
        super.new();
      }

      static _check(x) {
        return x;
      }
    };

    Object.defineProperty(unwrappedType, '_check', {
      get: function() {
        return function(x) {
          if (x.constructor == jsClass) {
            return x;
          }
          throw "Not a " + unwrappedType.name;
        };
      }
    });

    return jsClass;
  };


  window.html5_support = window.html5_support || {
    unregister: unregister,
    unregisterByName: unregisterByName,
    asConstructor: asConstructor
  };


  return window.html5_support;
})
