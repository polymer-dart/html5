### v0.1.7-dev
 - added `MessageEvent` and `onMessage` `EventStreamProvider`.
 - moved support for `http` in a different package
 - added `Console`
 
### v0.1.6
 - added `FileReader`
 - added support for `http` (v0.12-dev)

### v0.1.5
 - added `DocumentOrShadowRoot` 
   - *WARN* : `DocumentOrShadowRoot` is not implemented in `ShadyDOM` (=> Firefox, etc.) 
      see [here](https://github.com/webcomponents/shadydom/issues/113)
 - added some more utils, some copied from `dart:html`, notably:
   - key codes
   - a simplified version of `EventStreamProvider`
   - some event stream providers 

### v0.1.4
 - better support for `HttpRequest`

### v0.1.3
 - added service workers API 

### v0.1.2+1
 - added missing `KeyboardEvent` (!!)

### v0.1.1
 - adding HTMLSlotElement and Sloatable from https://html.spec.whatwg.org/multipage/scripting.html#htmlslotelement

### v0.1.0
 - working with pub+ddc dart 1.24

### v0.0.7
 - fixed an issue being too aggressive removing `dart._extensionType` marker

### v0.0.6
 - support for latest polymerize (^0.8.1)

### v0.0.5

 - Changed module name convention

### v0.0.3
 - added factory
 - switched to abstract classes with implements
 - added `XMLHttpRequest`
 - added `Promise` and `asFuture`
