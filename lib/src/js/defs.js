define(['dart_sdk'], function (sdk) {

    // PATCH LAZY CHECK AS ETC.
    // Why should ever this be needed if we're already in strong & sound mode ?
    //sdk.dart.LazyJSType.prototype.is = function is_T(object) {
    //    return true;
    //};
    sdk.dart.LazyJSType.prototype.as = function as_T(object) {
        return object;
    };
    sdk.dart.LazyJSType.prototype._check = function check_T(object) {
        return object;
    };


    function unregister(x) {
        if (!x || x === Object || x === Array || x === Object.prototype || x === Array.prototype) {
            return;
        }

        // Stop recursion at HTMLElement ...
        if (x!==HTMLElement && x!== HTMLElement.prototype) {
            x.__proto__ && unregister(x.__proto__);
            x.prototype && unregister(x.prototype);
        }
        //x[sdk.dart._extensionType]= x.constructor;
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
            get: function () {
                return function (x) {
                    if (x.constructor === jsClass) {
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
            asConstructor: asConstructor,

            html5_support: {
                initModule  () {
                    console.log('html5 loaded');
                },
                isLoaded:true,
            }
        };


    return window.html5_support;
})
