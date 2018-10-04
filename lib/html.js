var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var HttpRequest_1, KeyCode_1;
import { defaultConstructor, namedFactory, DartClass, op, Op } from "@dart2ts/dart/utils";
import * as core from "@dart2ts/dart/core";
import * as async from "@dart2ts/dart/async";
import * as js_util from "@dart2ts/dart/js_util";
import * as math from "@dart2ts/dart/math";
export var asFuture = (promise) => {
    let completer = new async.DartCompleter();
    var onFullfilled = (x) => {
        completer.complete(x);
        return x;
    };
    var onRejected = (error) => {
        completer.completeError(error);
    };
    ((p) => {
        js_util.callMethod(p, 'then', new core.DartList.literal(onFullfilled));
        js_util.callMethod(p, 'catch', new core.DartList.literal(onRejected));
    })(promise);
    return completer.future;
};
let EventHandler = class EventHandler {
    constructor() {
        this._streamController = new async.DartStreamController.broadcast();
    }
    get stream() {
        return this._streamController.stream;
    }
    call(event) {
        return this._streamController.add(event);
    }
};
EventHandler = __decorate([
    DartClass
], EventHandler);
export { EventHandler };
let HttpRequest = HttpRequest_1 = class HttpRequest {
    constructor(_namedArguments) {
        this._runningRequests = new core.DartList.literal();
    }
    static _forAjax(ajax) {
        return HttpRequest_1._requests.get(ajax);
    }
    HttpRequest(_namedArguments) {
        let { method, url, isAsync, user, password, responseType, headers, withCredentials, overrideMimeType } = Object.assign({
            "method": 'GET',
            "isAsync": true,
            "responseType": ''
        }, _namedArguments);
        this.method = method;
        this.url = url;
        this.isAsync = isAsync;
        this.user = user;
        this.password = password;
        this.responseType = responseType;
        this.headers = headers;
        this.withCredentials = withCredentials;
        this.overrideMimeType = overrideMimeType;
    }
    send(_namedArguments) {
        let { data, progressConsumer, uploadProgressConsumer } = Object.assign({}, _namedArguments);
        let _ajax;
        _ajax = new XMLHttpRequest();
        HttpRequest_1._requests.set(_ajax, this);
        _ajax.open(this.method, this.url, this.isAsync, this.user, this.password);
        _ajax.withCredentials = this.withCredentials;
        if (this.responseType != null)
            _ajax.responseType = this.responseType;
        if (this.overrideMimeType != null)
            _ajax.overrideMimeType(this.overrideMimeType);
        if (this.headers != null) {
            this.headers.forEach((k, v) => {
                return _ajax.setRequestHeader(k, v);
            });
        }
        this._runningRequests.add(_ajax);
        if (uploadProgressConsumer != null)
            _ajax.upload.onprogress = (evt) => {
                return uploadProgressConsumer.add(evt);
            };
        var closeSinks = () => {
            if (progressConsumer != null) {
                progressConsumer.close();
            }
            if (uploadProgressConsumer != null) {
                uploadProgressConsumer.close();
            }
        };
        let completer = new async.DartCompleter();
        _ajax.onprogress = (ev) => {
            if (_ajax.status != 200 && _ajax.status != 301) {
                this._runningRequests.remove(_ajax);
                if (!completer.isCompleted)
                    completer.completeError(ev);
                closeSinks();
            }
            else if (progressConsumer != null) {
                progressConsumer.add(ev);
            }
        };
        _ajax.onload = (evt) => {
            if (!completer.isCompleted)
                completer.complete(_ajax);
            closeSinks();
        };
        _ajax.onerror = (evt) => {
            this._runningRequests.remove(_ajax);
            if (!completer.isCompleted)
                completer.completeError(evt);
            closeSinks();
        };
        _ajax.onabort = (evt) => {
            this._runningRequests.remove(_ajax);
            if (!completer.isCompleted)
                completer.completeError(evt);
            closeSinks();
        };
        try {
            _ajax.send(data);
        }
        catch (error) {
            this._runningRequests.remove(_ajax);
            if (!completer.isCompleted)
                completer.completeError(error);
        }
        return completer.future;
    }
    abortAll() {
        let _tmp = new core.DartList.from(this._runningRequests);
        let allAbort = async.Future.wait(_tmp.map((r) => {
            let _c = new async.DartCompleter();
            var _wrapper = (func) => {
                return (ev) => {
                    _c.complete();
                    func(ev);
                };
            };
            r.onload = _wrapper(r.onload);
            r.onerror = _wrapper(r.onerror);
            r.onabort = _wrapper(r.onabort);
            return _c.future;
        }));
        _tmp.forEach((x) => {
            return x.abort();
        });
        return allAbort;
    }
};
HttpRequest._requests = new core.DartExpando();
__decorate([
    defaultConstructor
], HttpRequest.prototype, "HttpRequest", null);
__decorate([
    namedFactory
], HttpRequest, "_forAjax", null);
HttpRequest = HttpRequest_1 = __decorate([
    DartClass
], HttpRequest);
export { HttpRequest };
export var domPoint = (x, y) => {
    return new math.Point(x, y);
};
let _EventStreamProvider = class _EventStreamProvider {
    constructor(tgt, type) {
        this._count = 0;
    }
    _startListen() {
        if (this._count == 0) {
            this._handler = (x) => {
                this._controller.add(x);
            };
            this._target.addEventListener(this._type, this._handler);
        }
        this._count++;
    }
    _stopListen() {
        this._count--;
        if (this._count == 0 && this._handler != null) {
            this._target.removeEventListener(this._type, this._handler);
            this._handler = null;
        }
    }
    _EventStreamProvider(tgt, type) {
        this._target = tgt;
        this._type = type;
        this._controller = new async.DartStreamController.broadcast({
            onListen: this._startListen.bind(this), onCancel: this._stopListen.bind(this), sync: true
        });
    }
};
__decorate([
    defaultConstructor
], _EventStreamProvider.prototype, "_EventStreamProvider", null);
_EventStreamProvider = __decorate([
    DartClass
], _EventStreamProvider);
export { _EventStreamProvider };
let EventStreamProvider = class EventStreamProvider {
    constructor(type) {
    }
    EventStreamProvider(type) {
        this._type = type;
    }
    forTarget(tgt) {
        return new _EventStreamProvider(tgt, this._type)._controller.stream;
    }
    call(t) {
        return this.forTarget(t);
    }
};
__decorate([
    defaultConstructor
], EventStreamProvider.prototype, "EventStreamProvider", null);
EventStreamProvider = __decorate([
    DartClass
], EventStreamProvider);
export { EventStreamProvider };
let _KeyName = class _KeyName {
};
_KeyName.ACCEPT = "Accept";
_KeyName.ADD = "Add";
_KeyName.AGAIN = "Again";
_KeyName.ALL_CANDIDATES = "AllCandidates";
_KeyName.ALPHANUMERIC = "Alphanumeric";
_KeyName.ALT = "Alt";
_KeyName.ALT_GRAPH = "AltGraph";
_KeyName.APPS = "Apps";
_KeyName.ATTN = "Attn";
_KeyName.BROWSER_BACK = "BrowserBack";
_KeyName.BROWSER_FAVORTIES = "BrowserFavorites";
_KeyName.BROWSER_FORWARD = "BrowserForward";
_KeyName.BROWSER_NAME = "BrowserHome";
_KeyName.BROWSER_REFRESH = "BrowserRefresh";
_KeyName.BROWSER_SEARCH = "BrowserSearch";
_KeyName.BROWSER_STOP = "BrowserStop";
_KeyName.CAMERA = "Camera";
_KeyName.CAPS_LOCK = "CapsLock";
_KeyName.CLEAR = "Clear";
_KeyName.CODE_INPUT = "CodeInput";
_KeyName.COMPOSE = "Compose";
_KeyName.CONTROL = "Control";
_KeyName.CRSEL = "Crsel";
_KeyName.CONVERT = "Convert";
_KeyName.COPY = "Copy";
_KeyName.CUT = "Cut";
_KeyName.DECIMAL = "Decimal";
_KeyName.DIVIDE = "Divide";
_KeyName.DOWN = "Down";
_KeyName.DOWN_LEFT = "DownLeft";
_KeyName.DOWN_RIGHT = "DownRight";
_KeyName.EJECT = "Eject";
_KeyName.END = "End";
_KeyName.ENTER = "Enter";
_KeyName.ERASE_EOF = "EraseEof";
_KeyName.EXECUTE = "Execute";
_KeyName.EXSEL = "Exsel";
_KeyName.FN = "Fn";
_KeyName.F1 = "F1";
_KeyName.F2 = "F2";
_KeyName.F3 = "F3";
_KeyName.F4 = "F4";
_KeyName.F5 = "F5";
_KeyName.F6 = "F6";
_KeyName.F7 = "F7";
_KeyName.F8 = "F8";
_KeyName.F9 = "F9";
_KeyName.F10 = "F10";
_KeyName.F11 = "F11";
_KeyName.F12 = "F12";
_KeyName.F13 = "F13";
_KeyName.F14 = "F14";
_KeyName.F15 = "F15";
_KeyName.F16 = "F16";
_KeyName.F17 = "F17";
_KeyName.F18 = "F18";
_KeyName.F19 = "F19";
_KeyName.F20 = "F20";
_KeyName.F21 = "F21";
_KeyName.F22 = "F22";
_KeyName.F23 = "F23";
_KeyName.F24 = "F24";
_KeyName.FINAL_MODE = "FinalMode";
_KeyName.FIND = "Find";
_KeyName.FULL_WIDTH = "FullWidth";
_KeyName.HALF_WIDTH = "HalfWidth";
_KeyName.HANGUL_MODE = "HangulMode";
_KeyName.HANJA_MODE = "HanjaMode";
_KeyName.HELP = "Help";
_KeyName.HIRAGANA = "Hiragana";
_KeyName.HOME = "Home";
_KeyName.INSERT = "Insert";
_KeyName.JAPANESE_HIRAGANA = "JapaneseHiragana";
_KeyName.JAPANESE_KATAKANA = "JapaneseKatakana";
_KeyName.JAPANESE_ROMAJI = "JapaneseRomaji";
_KeyName.JUNJA_MODE = "JunjaMode";
_KeyName.KANA_MODE = "KanaMode";
_KeyName.KANJI_MODE = "KanjiMode";
_KeyName.KATAKANA = "Katakana";
_KeyName.LAUNCH_APPLICATION_1 = "LaunchApplication1";
_KeyName.LAUNCH_APPLICATION_2 = "LaunchApplication2";
_KeyName.LAUNCH_MAIL = "LaunchMail";
_KeyName.LEFT = "Left";
_KeyName.MENU = "Menu";
_KeyName.META = "Meta";
_KeyName.MEDIA_NEXT_TRACK = "MediaNextTrack";
_KeyName.MEDIA_PAUSE_PLAY = "MediaPlayPause";
_KeyName.MEDIA_PREVIOUS_TRACK = "MediaPreviousTrack";
_KeyName.MEDIA_STOP = "MediaStop";
_KeyName.MODE_CHANGE = "ModeChange";
_KeyName.NEXT_CANDIDATE = "NextCandidate";
_KeyName.NON_CONVERT = "Nonconvert";
_KeyName.NUM_LOCK = "NumLock";
_KeyName.PAGE_DOWN = "PageDown";
_KeyName.PAGE_UP = "PageUp";
_KeyName.PASTE = "Paste";
_KeyName.PAUSE = "Pause";
_KeyName.PLAY = "Play";
_KeyName.POWER = "Power";
_KeyName.PREVIOUS_CANDIDATE = "PreviousCandidate";
_KeyName.PRINT_SCREEN = "PrintScreen";
_KeyName.PROCESS = "Process";
_KeyName.PROPS = "Props";
_KeyName.RIGHT = "Right";
_KeyName.ROMAN_CHARACTERS = "RomanCharacters";
_KeyName.SCROLL = "Scroll";
_KeyName.SELECT = "Select";
_KeyName.SELECT_MEDIA = "SelectMedia";
_KeyName.SEPARATOR = "Separator";
_KeyName.SHIFT = "Shift";
_KeyName.SOFT_1 = "Soft1";
_KeyName.SOFT_2 = "Soft2";
_KeyName.SOFT_3 = "Soft3";
_KeyName.SOFT_4 = "Soft4";
_KeyName.STOP = "Stop";
_KeyName.SUBTRACT = "Subtract";
_KeyName.SYMBOL_LOCK = "SymbolLock";
_KeyName.UP = "Up";
_KeyName.UP_LEFT = "UpLeft";
_KeyName.UP_RIGHT = "UpRight";
_KeyName.UNDO = "Undo";
_KeyName.VOLUME_DOWN = "VolumeDown";
_KeyName.VOLUMN_MUTE = "VolumeMute";
_KeyName.VOLUMN_UP = "VolumeUp";
_KeyName.WIN = "Win";
_KeyName.ZOOM = "Zoom";
_KeyName.BACKSPACE = "Backspace";
_KeyName.TAB = "Tab";
_KeyName.CANCEL = "Cancel";
_KeyName.ESC = "Esc";
_KeyName.SPACEBAR = "Spacebar";
_KeyName.DEL = "Del";
_KeyName.DEAD_GRAVE = "DeadGrave";
_KeyName.DEAD_EACUTE = "DeadEacute";
_KeyName.DEAD_CIRCUMFLEX = "DeadCircumflex";
_KeyName.DEAD_TILDE = "DeadTilde";
_KeyName.DEAD_MACRON = "DeadMacron";
_KeyName.DEAD_BREVE = "DeadBreve";
_KeyName.DEAD_ABOVE_DOT = "DeadAboveDot";
_KeyName.DEAD_UMLAUT = "DeadUmlaut";
_KeyName.DEAD_ABOVE_RING = "DeadAboveRing";
_KeyName.DEAD_DOUBLEACUTE = "DeadDoubleacute";
_KeyName.DEAD_CARON = "DeadCaron";
_KeyName.DEAD_CEDILLA = "DeadCedilla";
_KeyName.DEAD_OGONEK = "DeadOgonek";
_KeyName.DEAD_IOTA = "DeadIota";
_KeyName.DEAD_VOICED_SOUND = "DeadVoicedSound";
_KeyName.DEC_SEMIVOICED_SOUND = "DeadSemivoicedSound";
_KeyName.UNIDENTIFIED = "Unidentified";
_KeyName = __decorate([
    DartClass
], _KeyName);
export { _KeyName };
let KeyCode = KeyCode_1 = class KeyCode {
    static isCharacterKey(keyCode) {
        if ((keyCode >= KeyCode_1.ZERO && keyCode <= KeyCode_1.NINE) || (keyCode >= KeyCode_1.NUM_ZERO && keyCode <= KeyCode_1.NUM_MULTIPLY) || (keyCode >= KeyCode_1.A && keyCode <= KeyCode_1.Z)) {
            return true;
        }
        return (keyCode == KeyCode_1.SPACE || keyCode == KeyCode_1.QUESTION_MARK || keyCode == KeyCode_1.NUM_PLUS || keyCode == KeyCode_1.NUM_MINUS || keyCode == KeyCode_1.NUM_PERIOD || keyCode == KeyCode_1.NUM_DIVISION || keyCode == KeyCode_1.SEMICOLON || keyCode == KeyCode_1.FF_SEMICOLON || keyCode == KeyCode_1.DASH || keyCode == KeyCode_1.EQUALS || keyCode == KeyCode_1.FF_EQUALS || keyCode == KeyCode_1.COMMA || keyCode == KeyCode_1.PERIOD || keyCode == KeyCode_1.SLASH || keyCode == KeyCode_1.APOSTROPHE || keyCode == KeyCode_1.SINGLE_QUOTE || keyCode == KeyCode_1.OPEN_SQUARE_BRACKET || keyCode == KeyCode_1.BACKSLASH || keyCode == KeyCode_1.CLOSE_SQUARE_BRACKET);
    }
    static _convertKeyCodeToKeyName(keyCode) {
        switch (keyCode) {
            case KeyCode_1.ALT:
                return _KeyName.ALT;
            case KeyCode_1.BACKSPACE:
                return _KeyName.BACKSPACE;
            case KeyCode_1.CAPS_LOCK:
                return _KeyName.CAPS_LOCK;
            case KeyCode_1.CTRL:
                return _KeyName.CONTROL;
            case KeyCode_1.DELETE:
                return _KeyName.DEL;
            case KeyCode_1.DOWN:
                return _KeyName.DOWN;
            case KeyCode_1.END:
                return _KeyName.END;
            case KeyCode_1.ENTER:
                return _KeyName.ENTER;
            case KeyCode_1.ESC:
                return _KeyName.ESC;
            case KeyCode_1.F1:
                return _KeyName.F1;
            case KeyCode_1.F2:
                return _KeyName.F2;
            case KeyCode_1.F3:
                return _KeyName.F3;
            case KeyCode_1.F4:
                return _KeyName.F4;
            case KeyCode_1.F5:
                return _KeyName.F5;
            case KeyCode_1.F6:
                return _KeyName.F6;
            case KeyCode_1.F7:
                return _KeyName.F7;
            case KeyCode_1.F8:
                return _KeyName.F8;
            case KeyCode_1.F9:
                return _KeyName.F9;
            case KeyCode_1.F10:
                return _KeyName.F10;
            case KeyCode_1.F11:
                return _KeyName.F11;
            case KeyCode_1.F12:
                return _KeyName.F12;
            case KeyCode_1.HOME:
                return _KeyName.HOME;
            case KeyCode_1.INSERT:
                return _KeyName.INSERT;
            case KeyCode_1.LEFT:
                return _KeyName.LEFT;
            case KeyCode_1.META:
                return _KeyName.META;
            case KeyCode_1.NUMLOCK:
                return _KeyName.NUM_LOCK;
            case KeyCode_1.PAGE_DOWN:
                return _KeyName.PAGE_DOWN;
            case KeyCode_1.PAGE_UP:
                return _KeyName.PAGE_UP;
            case KeyCode_1.PAUSE:
                return _KeyName.PAUSE;
            case KeyCode_1.PRINT_SCREEN:
                return _KeyName.PRINT_SCREEN;
            case KeyCode_1.RIGHT:
                return _KeyName.RIGHT;
            case KeyCode_1.SCROLL_LOCK:
                return _KeyName.SCROLL;
            case KeyCode_1.SHIFT:
                return _KeyName.SHIFT;
            case KeyCode_1.SPACE:
                return _KeyName.SPACEBAR;
            case KeyCode_1.TAB:
                return _KeyName.TAB;
            case KeyCode_1.UP:
                return _KeyName.UP;
            case KeyCode_1.WIN_IME:
            case KeyCode_1.WIN_KEY:
            case KeyCode_1.WIN_KEY_LEFT:
            case KeyCode_1.WIN_KEY_RIGHT:
                return _KeyName.WIN;
            default:
                return _KeyName.UNIDENTIFIED;
        }
    }
};
KeyCode.WIN_KEY_FF_LINUX = 0;
KeyCode.MAC_ENTER = 3;
KeyCode.BACKSPACE = 8;
KeyCode.TAB = 9;
KeyCode.NUM_CENTER = 12;
KeyCode.ENTER = 13;
KeyCode.SHIFT = 16;
KeyCode.CTRL = 17;
KeyCode.ALT = 18;
KeyCode.PAUSE = 19;
KeyCode.CAPS_LOCK = 20;
KeyCode.ESC = 27;
KeyCode.SPACE = 32;
KeyCode.PAGE_UP = 33;
KeyCode.PAGE_DOWN = 34;
KeyCode.END = 35;
KeyCode.HOME = 36;
KeyCode.LEFT = 37;
KeyCode.UP = 38;
KeyCode.RIGHT = 39;
KeyCode.DOWN = 40;
KeyCode.NUM_NORTH_EAST = 33;
KeyCode.NUM_SOUTH_EAST = 34;
KeyCode.NUM_SOUTH_WEST = 35;
KeyCode.NUM_NORTH_WEST = 36;
KeyCode.NUM_WEST = 37;
KeyCode.NUM_NORTH = 38;
KeyCode.NUM_EAST = 39;
KeyCode.NUM_SOUTH = 40;
KeyCode.PRINT_SCREEN = 44;
KeyCode.INSERT = 45;
KeyCode.NUM_INSERT = 45;
KeyCode.DELETE = 46;
KeyCode.NUM_DELETE = 46;
KeyCode.ZERO = 48;
KeyCode.ONE = 49;
KeyCode.TWO = 50;
KeyCode.THREE = 51;
KeyCode.FOUR = 52;
KeyCode.FIVE = 53;
KeyCode.SIX = 54;
KeyCode.SEVEN = 55;
KeyCode.EIGHT = 56;
KeyCode.NINE = 57;
KeyCode.FF_SEMICOLON = 59;
KeyCode.FF_EQUALS = 61;
KeyCode.QUESTION_MARK = 63;
KeyCode.A = 65;
KeyCode.B = 66;
KeyCode.C = 67;
KeyCode.D = 68;
KeyCode.E = 69;
KeyCode.F = 70;
KeyCode.G = 71;
KeyCode.H = 72;
KeyCode.I = 73;
KeyCode.J = 74;
KeyCode.K = 75;
KeyCode.L = 76;
KeyCode.M = 77;
KeyCode.N = 78;
KeyCode.O = 79;
KeyCode.P = 80;
KeyCode.Q = 81;
KeyCode.R = 82;
KeyCode.S = 83;
KeyCode.T = 84;
KeyCode.U = 85;
KeyCode.V = 86;
KeyCode.W = 87;
KeyCode.X = 88;
KeyCode.Y = 89;
KeyCode.Z = 90;
KeyCode.META = 91;
KeyCode.WIN_KEY_LEFT = 91;
KeyCode.WIN_KEY_RIGHT = 92;
KeyCode.CONTEXT_MENU = 93;
KeyCode.NUM_ZERO = 96;
KeyCode.NUM_ONE = 97;
KeyCode.NUM_TWO = 98;
KeyCode.NUM_THREE = 99;
KeyCode.NUM_FOUR = 100;
KeyCode.NUM_FIVE = 101;
KeyCode.NUM_SIX = 102;
KeyCode.NUM_SEVEN = 103;
KeyCode.NUM_EIGHT = 104;
KeyCode.NUM_NINE = 105;
KeyCode.NUM_MULTIPLY = 106;
KeyCode.NUM_PLUS = 107;
KeyCode.NUM_MINUS = 109;
KeyCode.NUM_PERIOD = 110;
KeyCode.NUM_DIVISION = 111;
KeyCode.F1 = 112;
KeyCode.F2 = 113;
KeyCode.F3 = 114;
KeyCode.F4 = 115;
KeyCode.F5 = 116;
KeyCode.F6 = 117;
KeyCode.F7 = 118;
KeyCode.F8 = 119;
KeyCode.F9 = 120;
KeyCode.F10 = 121;
KeyCode.F11 = 122;
KeyCode.F12 = 123;
KeyCode.NUMLOCK = 144;
KeyCode.SCROLL_LOCK = 145;
KeyCode.FIRST_MEDIA_KEY = 166;
KeyCode.LAST_MEDIA_KEY = 183;
KeyCode.SEMICOLON = 186;
KeyCode.DASH = 189;
KeyCode.EQUALS = 187;
KeyCode.COMMA = 188;
KeyCode.PERIOD = 190;
KeyCode.SLASH = 191;
KeyCode.APOSTROPHE = 192;
KeyCode.TILDE = 192;
KeyCode.SINGLE_QUOTE = 222;
KeyCode.OPEN_SQUARE_BRACKET = 219;
KeyCode.BACKSLASH = 220;
KeyCode.CLOSE_SQUARE_BRACKET = 221;
KeyCode.WIN_KEY = 224;
KeyCode.MAC_FF_META = 224;
KeyCode.WIN_IME = 229;
KeyCode.UNKNOWN = -1;
KeyCode = KeyCode_1 = __decorate([
    DartClass
], KeyCode);
export { KeyCode };
export var matchesWithAncestors = (elem, selectors) => {
    do {
        if (elem.matches(selectors))
            return true;
        elem = elem.parentElement;
    } while (elem != null);
    return false;
};
export var asList = (nodeList) => {
    return new core.DartList.from(asIterable(nodeList));
};
export var asIterable = (nodeList) => core.iter(() => (function* () {
    for (let i = 0; i < nodeList.length; i++)
        yield op(Op.INDEX, nodeList, i);
}).call(this));
export class _Properties {
    constructor() {
        this.INTERFACES = new core.DartList.literal('ParentNode', 'TimeEvent', 'BarProp', 'DOMMatrixReadOnly', 'DOMMatrix', 'AbstractWorker', 'Body', 'DOMRectList', 'Window', 'WindowSessionStorage', 'WindowLocalStorage', 'WindowModal', 'ChromeWindow', 'AnimationEffectReadOnly', 'ProgressEvent', 'DOMTokenList', 'CSSKeyframesRule', 'HTMLHyperlinkElementUtils', 'HTMLBRElement', 'HTMLHtmlElement', 'HTMLElement', 'TouchEventHandlers', 'HTMLUnknownElement', 'HTMLTableColElement', 'Text', 'XPathExpression', 'GlobalU2F', 'U2F', 'SourceBufferList', 'HTMLTableCellElement', 'DOMPointReadOnly', 'DOMPoint', 'FileSystemFileEntry', 'CanvasCaptureMediaStream', 'MediaSource', 'PushManagerImpl', 'PushManager', 'HTMLOutputElement', 'HTMLOptionsCollection', 'AnimationPlaybackEvent', 'CharacterData', 'FetchEvent', 'MouseEvent', 'FileSystemDirectoryReader', 'Slotable', 'Element', 'HTMLSlotElement', 'HTMLHeadingElement', 'HTMLAudioElement', 'CSSCounterStyleRule', 'MutationRecord', 'MutationObserver', 'HTMLTableSectionElement', 'DocumentFragment', 'CaretPosition', 'Blob', 'ServiceWorkerRegistration', 'TouchList', 'HTMLTemplateElement', 'MediaKeyStatusMap', 'DOMStringList', 'FileSystemDirectoryEntry', 'Cache', 'PushSubscriptionOptions', 'HTMLFrameElement', 'HTMLMapElement', 'BlobEvent', 'HTMLProgressElement', 'HTMLParamElement', 'HTMLTextAreaElement', 'CSSValue', 'Range', 'CSSValueList', 'MessageEvent', 'HTMLAllCollection', 'NodeList', 'CSSFontFeatureValuesRule', 'URLSearchParams', 'HTMLSpanElement', 'Grid', 'GridDimension', 'GridLines', 'GridLine', 'GridTracks', 'GridTrack', 'GridArea', 'Comment', 'HTMLBaseElement', 'CSSPageRule', 'VideoPlaybackQuality', 'HTMLAnchorElement', 'EventSource', 'Rect', 'CSSNamespaceRule', 'DOMRect', 'DOMRectReadOnly', 'CaretStateChangedEvent', 'URL', 'ServiceWorkerMessageEvent', 'VideoTrackList', 'Location', 'XPathResult', 'CSSKeyframeRule', 'HTMLScriptElement', 'CSSPseudoElement', 'CSSRuleList', 'HTMLLegendElement', 'Touch', 'HTMLCanvasElement', 'MozCanvasPrintState', 'HTMLMetaElement', 'HTMLFontElement', 'HTMLTimeElement', 'Screen', 'HTMLTitleElement', 'TextTrackCueList', 'HTMLEmbedElement', 'StyleSheetChangeEvent', 'PromiseNativeHandler', 'DataTransferItemList', 'HTMLIFrameElement', 'HTMLFieldSetElement', 'HTMLTrackElement', 'Event', 'ImageBitmap', 'CSSPrimitiveValue', 'FileSystem', 'FontFaceSetIterator', 'FontFaceSet', 'CSSSupportsRule', 'Headers', 'HTMLFormElement', 'OffscreenCanvas', 'HTMLDataElement', 'DOMCursor', 'HTMLFormControlsCollection', 'HTMLSelectElement', 'HTMLDListElement', 'HTMLQuoteElement', 'HTMLBodyElement', 'Notification', 'HTMLLinkElement', 'AudioTrackList', 'FontFace', 'TimeRanges', 'CacheStorage', 'CSSConditionRule', 'HTMLShadowElement', 'FileList', 'CDATASection', 'FontFaceSource', 'DOMRequestShared', 'DOMRequest', 'MediaKeys', 'AnimationTimeline', 'XMLHttpRequestUpload', 'NamedNodeMap', 'MediaError', 'Response', 'Client', 'WindowClient', 'HTMLStyleElement', 'HTMLAppletElement', 'StyleSheetList', 'DOMQuad', 'DocumentOrShadowRoot', 'Document', 'ShadowRoot', 'XMLHttpRequestEventTarget', 'ChildNode', 'NonDocumentTypeChildNode', 'RGBColor', 'HTMLAreaElement', 'DataTransferItem', 'StorageEvent', 'WindowRoot', 'VTTCue', 'HTMLVideoElement', 'HTMLObjectElement', 'MozObjectLoadingContent', 'WorkerLocation', 'WorkerNavigator', 'HTMLSourceElement', 'CSSStyleDeclaration', 'HTMLDocument', 'Attr', 'HTMLContentElement', 'Selection', 'History', 'HTMLDataListElement', 'Worklet', 'Animatable', 'HTMLTableCaptionElement', 'ServiceWorker', 'TouchEvent', 'WorkerGlobalScope', 'NetworkInformation', 'AnimationEffectTimingReadOnly', 'DOMImplementation', 'StyleSheet', 'CSSImportRule', 'VideoTrack', 'AutocompleteErrorEvent', 'WindowOrWorkerGlobalScope', 'HTMLLabelElement', 'AudioTrack', 'Worker', 'ChromeWorker', 'HTMLImageElement', 'MozImageLoadingContent', 'KeyEvent', 'GlobalEventHandlers', 'WindowEventHandlers', 'DocumentAndElementEventHandlers', 'OnErrorEventHandlerForNodes', 'OnErrorEventHandlerForWindow', 'HTMLInputElement', 'MozPhonetic', 'DOMStringMap', 'GlobalCrypto', 'Crypto', 'Clients', 'HTMLHRElement', 'HTMLModElement', 'HTMLOListElement', 'DOMError', 'TextTrack', 'MediaQueryList', 'HTMLOptGroupElement', 'AnimationEvent', 'HTMLLIElement', 'CSSMozDocumentRule', 'Request', 'PushSubscription', 'TextTrackList', 'FileReader', 'FileSystemEntry', 'XMLHttpRequest', 'CSSTransition', 'HTMLPictureElement', 'HTMLMeterElement', 'CustomEvent', 'File', 'CSS', 'ServiceWorkerGlobalScope', 'MediaKeyError', 'Principal', 'URI', 'Node', 'HTMLMenuElement', 'HTMLButtonElement', 'MediaList', 'AnimationEffectTiming', 'NodeIterator', 'FormData', 'StyleSheetApplicableStateChangeEvent', 'ExtendableEvent', 'VTTRegion', 'HTMLParagraphElement', 'MediaKeySession', 'CSSStyleRule', 'KeyframeEffectReadOnly', 'KeyframeEffect', 'HTMLOptionElement', 'KeyboardEvent', 'CSSGroupingRule', 'HTMLTableElement', 'HTMLCollection', 'HTMLHeadElement', 'GeometryUtils', 'HTMLDivElement', 'XPathEvaluator', 'HTMLMenuItemElement', 'HTMLPreElement', 'ProcessingInstruction', 'CSSLexer', 'DragEvent', 'HTMLFrameSetElement', 'TreeWalker', 'Storage', 'ScreenOrientation', 'SourceBuffer', 'DocumentType', 'HTMLDirectoryElement', 'HTMLDialogElement', 'DocumentTimeline', 'UIEvent', 'CSSStyleSheet', 'TextTrackCue', 'HTMLTableRowElement', 'HTMLDetailsElement', 'ServiceWorkerContainer', 'HTMLMediaElement', 'CSSAnimation', 'MessagePort', 'LinkStyle', 'DataTransfer', 'CSSMediaRule', 'ValidityState', 'CustomElementRegistry', 'CSSRule', 'Animation', 'EventTarget', 'HTMLUListElement', 'CSSFontFaceRule', 'AnonymousContent');
        this.onKeyDown = new EventStreamProvider('keydown');
        this.onBlur = new EventStreamProvider('blur');
        this.onTouchMove = new EventStreamProvider('touchmove');
        this.onTouchEnd = new EventStreamProvider('touchend');
        this.onTouchStart = new EventStreamProvider('touchstart');
        this.onTouchCancel = new EventStreamProvider('touchcancel');
        this.onMouseMove = new EventStreamProvider('mousemove');
        this.onMouseUp = new EventStreamProvider('mouseup');
        this.onMouseDown = new EventStreamProvider('mousedown');
        this.onClick = new EventStreamProvider('click');
        this.onMessage = new EventStreamProvider('message');
    }
    get body() {
        return document.querySelector('body');
    }
}
export const properties = new _Properties();
//# sourceMappingURL=html.js.map