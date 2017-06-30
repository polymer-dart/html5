part of html_lib;
@JS('AbstractWorker')
abstract class AbstractWorker {
    external EventHandlerNonNull get onerror;
    external set onerror (EventHandlerNonNull val);
}

@JS()
@anonymous
class AddEventListenerOptions extends EventListenerOptions {
    external bool get passive;
    external set passive (bool val);
    external bool get once;
    external set once (bool val);
}

@JS('Animatable')
abstract class Animatable {
    external Animation animate(Object keyframes,[var options]);
    external List<Animation> getAnimations([AnimationFilter filter]);
}

@JS('Animation')
abstract class Animation implements EventTarget {
    external factory Animation([AnimationEffectReadOnly effect,AnimationTimeline timeline]);
    external String get id;
    external set id (String val);
    external AnimationEffectReadOnly get effect;
    external set effect (AnimationEffectReadOnly val);
    external AnimationTimeline get timeline;
    external set timeline (AnimationTimeline val);
    external num get startTime;
    external set startTime (num val);
    external num get currentTime;
    external set currentTime (num val);
    external num get playbackRate;
    external set playbackRate (num val);
    external String get playState;
    external Promise<Animation> get ready;
    external Promise<Animation> get finished;
    external EventHandlerNonNull get onfinish;
    external set onfinish (EventHandlerNonNull val);
    external EventHandlerNonNull get oncancel;
    external set oncancel (EventHandlerNonNull val);
    external void cancel();
    external void finish();
    external void play();
    external void pause();
    external void reverse();
    external bool get isRunningOnCompositor;
}

@JS('AnimationEffectReadOnly')
abstract class AnimationEffectReadOnly {
    external AnimationEffectTimingReadOnly get timing;
    external ComputedTimingProperties getComputedTiming();
}

@JS('AnimationEffectTiming')
abstract class AnimationEffectTiming implements AnimationEffectTimingReadOnly {
    external num get delay;
    external set delay (num val);
    external num get endDelay;
    external set endDelay (num val);
    external String get fill;
    external set fill (String val);
    external num get iterationStart;
    external set iterationStart (num val);
    external num get iterations;
    external set iterations (num val);
    external  get duration;
    external set duration (var val);
    external String get direction;
    external set direction (String val);
    external String get easing;
    external set easing (String val);
}

@JS()
@anonymous
class AnimationEffectTimingProperties {
    external num get delay;
    external set delay (num val);
    external num get endDelay;
    external set endDelay (num val);
    external String get fill;
    external set fill (String val);
    external num get iterationStart;
    external set iterationStart (num val);
    external num get iterations;
    external set iterations (num val);
    external  get duration;
    external set duration (var val);
    external String get direction;
    external set direction (String val);
    external String get easing;
    external set easing (String val);
}

@JS('AnimationEffectTimingReadOnly')
abstract class AnimationEffectTimingReadOnly {
    external num get delay;
    external num get endDelay;
    external String get fill;
    external num get iterationStart;
    external num get iterations;
    external  get duration;
    external String get direction;
    external String get easing;
}

@JS('AnimationEvent')
abstract class AnimationEvent implements Event {
    external factory AnimationEvent(String type,[AnimationEventInit eventInitDict]);
    external String get animationName;
    external num get elapsedTime;
    external String get pseudoElement;
}

@JS()
@anonymous
class AnimationEventInit extends EventInit {
    external String get animationName;
    external set animationName (String val);
    external num get elapsedTime;
    external set elapsedTime (num val);
    external String get pseudoElement;
    external set pseudoElement (String val);
}

@JS()
@anonymous
class AnimationFilter {
    external bool get subtree;
    external set subtree (bool val);
}

@JS('AnimationPlaybackEvent')
abstract class AnimationPlaybackEvent implements Event {
    external factory AnimationPlaybackEvent(String type,[AnimationPlaybackEventInit eventInitDict]);
    external num get currentTime;
    external num get timelineTime;
}

@JS()
@anonymous
class AnimationPlaybackEventInit extends EventInit {
    external num get currentTime;
    external set currentTime (num val);
    external num get timelineTime;
    external set timelineTime (num val);
}

@JS()
@anonymous
class AnimationPropertyDetails {
    external String get property;
    external set property (String val);
    external bool get runningOnCompositor;
    external set runningOnCompositor (bool val);
    external String get warning;
    external set warning (String val);
    external List<AnimationPropertyValueDetails> get values;
    external set values (List<AnimationPropertyValueDetails> val);
}

@JS()
@anonymous
class AnimationPropertyValueDetails {
    external num get offset;
    external set offset (num val);
    external String get value;
    external set value (String val);
    external String get easing;
    external set easing (String val);
    external String get composite;
    external set composite (String val);
}

@JS('AnimationTimeline')
abstract class AnimationTimeline {
    external num get currentTime;
}

@JS('AnonymousContent')
abstract class AnonymousContent {
    external String getTextContentForElement(String elementId);
    external void setTextContentForElement(String elementId,String text);
    external String getAttributeForElement(String elementId,String attributeName);
    external void setAttributeForElement(String elementId,String attributeName,String value);
    external void removeAttributeForElement(String elementId,String attributeName);
    external nsISupports getCanvasContext(String elementId,String contextId);
    external Animation setAnimationForElement(String elementId,Object keyframes,[var options]);
    external void setCutoutRectsForElement(String elementId,List<DOMRect> rects);
}

typedef  AnyCallback(var value);

@JS()
@anonymous
class AssignedNodesOptions {
    external bool get flatten;
    external set flatten (bool val);
}

@JS('Attr')
abstract class Attr implements Node {
    external String get localName;
    external String get value;
    external set value (String val);
    external String get name;
    external String get namespaceURI;
    external String get prefix;
    external bool get specified;
    external Element get ownerElement;
}

@JS('AudioTrack')
abstract class AudioTrack {
    external String get id;
    external String get kind;
    external String get label;
    external String get language;
    external bool get enabled;
    external set enabled (bool val);
}

@JS('AudioTrackList')
abstract class AudioTrackList implements EventTarget {
    external num get length;
    external AudioTrack operator[](num index);
    external AudioTrack getTrackById(String id);
    external EventHandlerNonNull get onchange;
    external set onchange (EventHandlerNonNull val);
    external EventHandlerNonNull get onaddtrack;
    external set onaddtrack (EventHandlerNonNull val);
    external EventHandlerNonNull get onremovetrack;
    external set onremovetrack (EventHandlerNonNull val);
}

@JS('AutocompleteErrorEvent')
abstract class AutocompleteErrorEvent implements Event {
    external factory AutocompleteErrorEvent(String type,[AutocompleteErrorEventInit eventInitDict]);
    external String get reason;
}

@JS()
@anonymous
class AutocompleteErrorEventInit extends EventInit {
    external String get reason;
    external set reason (String val);
}

@JS()
@anonymous
class AutocompleteInfo {
    external String get section;
    external set section (String val);
    external String get addressType;
    external set addressType (String val);
    external String get contactType;
    external set contactType (String val);
    external String get fieldName;
    external set fieldName (String val);
}

@JS('BarProp')
abstract class BarProp {
    external bool get visible;
    external set visible (bool val);
}

@JS()
@anonymous
class BaseComputedKeyframe extends BaseKeyframe {
    external num get computedOffset;
    external set computedOffset (num val);
}

@JS()
@anonymous
class BaseKeyframe {
    external num get offset;
    external set offset (num val);
    external String get easing;
    external set easing (String val);
    external String get composite;
    external set composite (String val);
    external bool get simulateComputeValuesFailure;
    external set simulateComputeValuesFailure (bool val);
}

@JS()
@anonymous
class BasePropertyIndexedKeyframe {
    external String get easing;
    external set easing (String val);
    external String get composite;
    external set composite (String val);
}

@JS('Blob')
abstract class Blob {
    external factory Blob([List<dynamic> blobParts,BlobPropertyBag options]);
    external num get size;
    external String get type;
    external Blob slice([num start,num end,String contentType]);
}

typedef void BlobCallback(Blob blob);

@JS('BlobEvent')
abstract class BlobEvent implements Event {
    external factory BlobEvent(String type,[BlobEventInit eventInitDict]);
    external Blob get data;
}

@JS()
@anonymous
class BlobEventInit extends EventInit {
    external Blob get data;
    external set data (Blob val);
}

@JS()
@anonymous
class BlobPropertyBag {
    external String get type;
    external set type (String val);
    external String get endings;
    external set endings (String val);
}

@JS('Body')
abstract class Body {
    external bool get bodyUsed;
    external Promise<ArrayBuffer> arrayBuffer();
    external Promise<Blob> blob();
    external Promise<FormData> formData();
    external Promise<Object> json();
    external Promise<String> text();
}

@JS()
@anonymous
class BoxQuadOptions {
    external String get box;
    external set box (String val);
    external  get relativeTo;
    external set relativeTo (var val);
}

@JS('CDATASection')
abstract class CDATASection implements Text {
}

@JS('CSS')
abstract class CSS {
    external bool supports(String conditionText);
    external String escape(String ident);
}

@JS('CSSAnimation')
abstract class CSSAnimation implements Animation {
    external String get animationName;
}

@JS('CSSConditionRule')
abstract class CSSConditionRule implements CSSGroupingRule {
    external String get conditionText;
    external set conditionText (String val);
}

@JS('CSSCounterStyleRule')
abstract class CSSCounterStyleRule implements CSSRule {
    external String get name;
    external set name (String val);
    external String get system;
    external set system (String val);
    external String get symbols;
    external set symbols (String val);
    external String get additiveSymbols;
    external set additiveSymbols (String val);
    external String get negative;
    external set negative (String val);
    external String get prefix;
    external set prefix (String val);
    external String get suffix;
    external set suffix (String val);
    external String get range;
    external set range (String val);
    external String get pad;
    external set pad (String val);
    external String get speakAs;
    external set speakAs (String val);
    external String get fallback;
    external set fallback (String val);
}

@JS('CSSFontFaceRule')
abstract class CSSFontFaceRule implements CSSRule {
    external CSSStyleDeclaration get style;
}

@JS('CSSFontFeatureValuesRule')
abstract class CSSFontFeatureValuesRule implements CSSRule {
    external String get fontFamily;
    external set fontFamily (String val);
    external String get valueText;
    external set valueText (String val);
}

@JS('CSSGroupingRule')
abstract class CSSGroupingRule implements CSSRule {
    external CSSRuleList get cssRules;
    external num insertRule(String rule,num index);
    external void deleteRule(num index);
}

@JS('CSSImportRule')
abstract class CSSImportRule implements CSSRule {
    external String get href;
    external MediaList get media;
    external CSSStyleSheet get styleSheet;
}

@JS('CSSKeyframeRule')
abstract class CSSKeyframeRule implements CSSRule {
    external String get keyText;
    external set keyText (String val);
    external CSSStyleDeclaration get style;
}

@JS('CSSKeyframesRule')
abstract class CSSKeyframesRule implements CSSRule {
    external String get name;
    external set name (String val);
    external CSSRuleList get cssRules;
    external void appendRule(String rule);
    external void deleteRule(String select);
    external CSSKeyframeRule findRule(String select);
}

@JS('CSSLexer')
abstract class CSSLexer {
    external num get lineNumber;
    external num get columnNumber;
    external String performEOFFixup(String inputString,bool preserveBackslash);
    external CSSToken nextToken();
}

@JS('CSSMediaRule')
abstract class CSSMediaRule implements CSSConditionRule {
    external MediaList get media;
}

@JS('CSSMozDocumentRule')
abstract class CSSMozDocumentRule implements CSSConditionRule {
}

@JS('CSSNamespaceRule')
abstract class CSSNamespaceRule implements CSSRule {
}

@JS('CSSPageRule')
abstract class CSSPageRule implements CSSRule {
    external CSSStyleDeclaration get style;
}

@JS('CSSPrimitiveValue')
abstract class CSSPrimitiveValue implements CSSValue {
    external num get primitiveType;
    external void setFloatValue(num unitType,num floatValue);
    external num getFloatValue(num unitType);
    external void setStringValue(num stringType,String stringValue);
    external String getStringValue();
    external Counter getCounterValue();
    external Rect getRectValue();
    external RGBColor getRGBColorValue();
}

@JS('CSSPseudoElement')
abstract class CSSPseudoElement {
    external String get type;
    external Element get parentElement;
}

@JS('CSSRule')
abstract class CSSRule {
    external num get type;
    external String get cssText;
    external set cssText (String val);
    external CSSRule get parentRule;
    external CSSStyleSheet get parentStyleSheet;
}

@JS('CSSRuleList')
abstract class CSSRuleList {
    external num get length;
    external CSSRule operator[](num index);
}

@JS('CSSStyleDeclaration')
abstract class CSSStyleDeclaration {
    external String get cssText;
    external set cssText (String val);
    external num get length;
    external String operator[](num index);
    external String getPropertyValue(String property);
    external CSSValue getPropertyCSSValue(String property);
    external String getPropertyPriority(String property);
    external void setProperty(String property,String value,[String priority]);
    external String removeProperty(String property);
    external CSSRule get parentRule;
    external String getAuthoredPropertyValue(String property);
}

@JS('CSSStyleRule')
abstract class CSSStyleRule implements CSSRule {
    external String get selectorText;
    external set selectorText (String val);
    external CSSStyleDeclaration get style;
}

@JS('CSSStyleSheet')
abstract class CSSStyleSheet implements StyleSheet {
    external CSSRule get ownerRule;
    external CSSRuleList get cssRules;
    external String get parsingMode;
    external num insertRule(String rule,num index);
    external void deleteRule(num index);
}

@JS('CSSSupportsRule')
abstract class CSSSupportsRule implements CSSConditionRule {
}

@JS()
@anonymous
class CSSToken {
    external String get tokenType;
    external set tokenType (String val);
    external num get startOffset;
    external set startOffset (num val);
    external num get endOffset;
    external set endOffset (num val);
    external num get number;
    external set number (num val);
    external bool get hasSign;
    external set hasSign (bool val);
    external bool get isInteger;
    external set isInteger (bool val);
    external String get text;
    external set text (String val);
}

@JS('CSSTransition')
abstract class CSSTransition implements Animation {
    external String get transitionProperty;
}

@JS('CSSValue')
abstract class CSSValue {
    external String get cssText;
    external set cssText (String val);
    external num get cssValueType;
}

@JS('CSSValueList')
abstract class CSSValueList implements CSSValue {
    external num get length;
    external CSSValue operator[](num index);
}

@JS('Cache')
abstract class Cache {
    external Promise<Response> match(var request,[CacheQueryOptions options]);
    external Promise<List<Response>> matchAll([var request,CacheQueryOptions options]);
    external Promise<dynamic> add(var request);
    external Promise<dynamic> addAll(List<dynamic> requests);
    external Promise<dynamic> put(var request,Response response);
    external Promise<bool> delete(var request,[CacheQueryOptions options]);
    external Promise<List<Request>> keys([var request,CacheQueryOptions options]);
}

@JS()
@anonymous
class CacheBatchOperation {
    external String get type;
    external set type (String val);
    external Request get request;
    external set request (Request val);
    external Response get response;
    external set response (Response val);
    external CacheQueryOptions get options;
    external set options (CacheQueryOptions val);
}

@JS()
@anonymous
class CacheQueryOptions {
    external bool get ignoreSearch;
    external set ignoreSearch (bool val);
    external bool get ignoreMethod;
    external set ignoreMethod (bool val);
    external bool get ignoreVary;
    external set ignoreVary (bool val);
    external String get cacheName;
    external set cacheName (String val);
}

@JS('CacheStorage')
abstract class CacheStorage {
    external Promise<Response> match(var request,[CacheQueryOptions options]);
    external Promise<bool> has(String cacheName);
    external Promise<Cache> open(String cacheName);
    external Promise<bool> delete(String cacheName);
    external Promise<List<String>> keys();
}

@JS('CanvasCaptureMediaStream')
abstract class CanvasCaptureMediaStream implements MediaStream {
    external HTMLCanvasElement get canvas;
    external void requestFrame();
}

@JS('CaretPosition')
abstract class CaretPosition {
    external Node get offsetNode;
    external num get offset;
    external DOMRect getClientRect();
}

@JS('CaretStateChangedEvent')
abstract class CaretStateChangedEvent implements Event {
    external factory CaretStateChangedEvent(String type,[CaretStateChangedEventInit eventInit]);
    external bool get collapsed;
    external DOMRectReadOnly get boundingClientRect;
    external String get reason;
    external bool get caretVisible;
    external bool get caretVisuallyVisible;
    external bool get selectionVisible;
    external bool get selectionEditable;
    external String get selectedTextContent;
}

@JS()
@anonymous
class CaretStateChangedEventInit extends EventInit {
    external bool get collapsed;
    external set collapsed (bool val);
    external DOMRectReadOnly get boundingClientRect;
    external set boundingClientRect (DOMRectReadOnly val);
    external String get reason;
    external set reason (String val);
    external bool get caretVisible;
    external set caretVisible (bool val);
    external bool get caretVisuallyVisible;
    external set caretVisuallyVisible (bool val);
    external bool get selectionVisible;
    external set selectionVisible (bool val);
    external bool get selectionEditable;
    external set selectionEditable (bool val);
    external String get selectedTextContent;
    external set selectedTextContent (String val);
}

@JS()
@anonymous
class ChannelPixelLayout {
    external num get offset;
    external set offset (num val);
    external num get width;
    external set width (num val);
    external num get height;
    external set height (num val);
    external String get dataType;
    external set dataType (String val);
    external num get stride;
    external set stride (num val);
    external num get skip;
    external set skip (num val);
}

@JS('CharacterData')
abstract class CharacterData implements Node,ChildNode,NonDocumentTypeChildNode {
    external String get data;
    external set data (String val);
    external num get length;
    external String substringData(num offset,num count);
    external void appendData(String data);
    external void insertData(num offset,String data);
    external void deleteData(num offset,num count);
    external void replaceData(num offset,num count,String data);
}

@JS('ChildNode')
abstract class ChildNode {
    external void before(var nodes);
    external void after(var nodes);
    external void replaceWith(var nodes);
    external void remove();
}

@JS()
@anonymous
class ChromeFilePropertyBag extends FilePropertyBag {
    external String get name;
    external set name (String val);
}

@JS('ChromeWindow')
abstract class ChromeWindow {
    external num get windowState;
    external nsIBrowserDOMWindow get browserDOMWindow;
    external set browserDOMWindow (nsIBrowserDOMWindow val);
    external void getAttention();
    external void getAttentionWithCycleCount(num aCycleCount);
    external void setCursor(String cursor);
    external void maximize();
    external void minimize();
    external void restore();
    external void notifyDefaultButtonLoaded(Element defaultButton);
    external nsIMessageBroadcaster get messageManager;
    external nsIMessageBroadcaster getGroupMessageManager(String aGroup);
    external void beginWindowMove(Event mouseDownEvent,[Element panel]);
}

@JS('ChromeWorker')
abstract class ChromeWorker implements Worker {
    external factory ChromeWorker(String scriptURL);
}

@JS('Client')
abstract class Client {
    external String get url;
    external String get frameType;
    external String get type;
    external String get id;
    external void postMessage(var message,[List<Object> transfer]);
}

@JS()
@anonymous
class ClientQueryOptions {
    external bool get includeUncontrolled;
    external set includeUncontrolled (bool val);
    external String get type;
    external set type (String val);
}

@JS()
@anonymous
class ClientRectsAndTexts {
    external DOMRectList get rectList;
    external set rectList (DOMRectList val);
    external DOMStringList get textList;
    external set textList (DOMStringList val);
}

@JS('Clients')
abstract class Clients {
    external Promise<dynamic> get(String id);
    external Promise<List<Client>> matchAll([ClientQueryOptions options]);
    external Promise<WindowClient> openWindow(String url);
    external Promise<dynamic> claim();
}

@JS('Comment')
abstract class Comment implements CharacterData {
    external factory Comment([String data]);
}

@JS()
@anonymous
class ComputedTimingProperties extends AnimationEffectTimingProperties {
    external num get endTime;
    external set endTime (num val);
    external num get activeDuration;
    external set activeDuration (num val);
    external num get localTime;
    external set localTime (num val);
    external num get progress;
    external set progress (num val);
    external num get currentIteration;
    external set currentIteration (num val);
}

@JS()
@anonymous
class ConvertCoordinateOptions {
    external String get fromBox;
    external set fromBox (String val);
    external String get toBox;
    external set toBox (String val);
}

@JS('Crypto')
abstract class Crypto {
    external SubtleCrypto get subtle;
    external ArrayBufferView getRandomValues(ArrayBufferView array);
}

@JS('CustomElementRegistry')
abstract class CustomElementRegistry {
    external void define(String name,var functionConstructor,[ElementDefinitionOptions options]);
    external  get(String name);
    external Promise<dynamic> whenDefined(String name);
}

@JS('CustomEvent')
abstract class CustomEvent implements Event {
    external factory CustomEvent(String type,[CustomEventInit eventInitDict]);
    external  get detail;
    external void initCustomEvent(String type,bool canBubble,bool cancelable,var detail);
}

@JS()
@anonymous
class CustomEventInit extends EventInit {
    external  get detail;
    external set detail (var val);
}

@JS('DOMCursor')
abstract class DOMCursor implements EventTarget,DOMRequestShared {
    external bool get done;
    external void doContinue();
}

@JS('DOMError')
abstract class DOMError {
    external factory DOMError(String name,[String message]);
    external String get name;
    external String get message;
}

@JS('DOMImplementation')
abstract class DOMImplementation {
    external bool hasFeature();
    external DocumentType createDocumentType(String qualifiedName,String publicId,String systemId);
    external Document createDocument(String namespace,String qualifiedName,[DocumentType doctype]);
    external Document createHTMLDocument([String title]);
}

@JS('DOMMatrix')
abstract class DOMMatrix implements DOMMatrixReadOnly {
    external factory DOMMatrix();
    external num get a;
    external set a (num val);
    external num get b;
    external set b (num val);
    external num get c;
    external set c (num val);
    external num get d;
    external set d (num val);
    external num get e;
    external set e (num val);
    external num get f;
    external set f (num val);
    external num get m11;
    external set m11 (num val);
    external num get m12;
    external set m12 (num val);
    external num get m13;
    external set m13 (num val);
    external num get m14;
    external set m14 (num val);
    external num get m21;
    external set m21 (num val);
    external num get m22;
    external set m22 (num val);
    external num get m23;
    external set m23 (num val);
    external num get m24;
    external set m24 (num val);
    external num get m31;
    external set m31 (num val);
    external num get m32;
    external set m32 (num val);
    external num get m33;
    external set m33 (num val);
    external num get m34;
    external set m34 (num val);
    external num get m41;
    external set m41 (num val);
    external num get m42;
    external set m42 (num val);
    external num get m43;
    external set m43 (num val);
    external num get m44;
    external set m44 (num val);
    external DOMMatrix multiplySelf(DOMMatrix other);
    external DOMMatrix preMultiplySelf(DOMMatrix other);
    external DOMMatrix translateSelf(num tx,num ty,[num tz]);
    external DOMMatrix scaleSelf(num scale,[num originX,num originY]);
    external DOMMatrix scale3dSelf(num scale,[num originX,num originY,num originZ]);
    external DOMMatrix scaleNonUniformSelf(num scaleX,[num scaleY,num scaleZ,num originX,num originY,num originZ]);
    external DOMMatrix rotateSelf(num angle,[num originX,num originY]);
    external DOMMatrix rotateFromVectorSelf(num x,num y);
    external DOMMatrix rotateAxisAngleSelf(num x,num y,num z,num angle);
    external DOMMatrix skewXSelf(num sx);
    external DOMMatrix skewYSelf(num sy);
    external DOMMatrix invertSelf();
    external DOMMatrix setMatrixValue(String transformList);
}

@JS('DOMMatrixReadOnly')
abstract class DOMMatrixReadOnly {
    external num get a;
    external num get b;
    external num get c;
    external num get d;
    external num get e;
    external num get f;
    external num get m11;
    external num get m12;
    external num get m13;
    external num get m14;
    external num get m21;
    external num get m22;
    external num get m23;
    external num get m24;
    external num get m31;
    external num get m32;
    external num get m33;
    external num get m34;
    external num get m41;
    external num get m42;
    external num get m43;
    external num get m44;
    external DOMMatrix translate(num tx,num ty,[num tz]);
    external DOMMatrix scale(num scale,[num originX,num originY]);
    external DOMMatrix scale3d(num scale,[num originX,num originY,num originZ]);
    external DOMMatrix scaleNonUniform(num scaleX,[num scaleY,num scaleZ,num originX,num originY,num originZ]);
    external DOMMatrix rotate(num angle,[num originX,num originY]);
    external DOMMatrix rotateFromVector(num x,num y);
    external DOMMatrix rotateAxisAngle(num x,num y,num z,num angle);
    external DOMMatrix skewX(num sx);
    external DOMMatrix skewY(num sy);
    external DOMMatrix multiply(DOMMatrix other);
    external DOMMatrix flipX();
    external DOMMatrix flipY();
    external DOMMatrix inverse();
    external bool get is2D;
    external bool get identity;
    external DOMPoint transformPoint([DOMPointInit point]);
    external  toFloat32Array();
    external  toFloat64Array();
}

@JS('DOMPoint')
abstract class DOMPoint implements DOMPointReadOnly {
    external factory DOMPoint([DOMPointInit point]);
    external num get x;
    external set x (num val);
    external num get y;
    external set y (num val);
    external num get z;
    external set z (num val);
    external num get w;
    external set w (num val);
}

@JS()
@anonymous
class DOMPointInit {
    external num get x;
    external set x (num val);
    external num get y;
    external set y (num val);
    external num get z;
    external set z (num val);
    external num get w;
    external set w (num val);
}

@JS('DOMPointReadOnly')
abstract class DOMPointReadOnly {
    external num get x;
    external num get y;
    external num get z;
    external num get w;
}

@JS('DOMQuad')
abstract class DOMQuad {
    external factory DOMQuad([DOMPointInit p1,DOMPointInit p2,DOMPointInit p3,DOMPointInit p4]);
    external DOMPoint get p1;
    external DOMPoint get p2;
    external DOMPoint get p3;
    external DOMPoint get p4;
    external DOMRectReadOnly get bounds;
}

@JS('DOMRect')
abstract class DOMRect implements DOMRectReadOnly {
    external factory DOMRect();
    external num get x;
    external set x (num val);
    external num get y;
    external set y (num val);
    external num get width;
    external set width (num val);
    external num get height;
    external set height (num val);
}

@JS()
@anonymous
class DOMRectInit {
    external num get x;
    external set x (num val);
    external num get y;
    external set y (num val);
    external num get width;
    external set width (num val);
    external num get height;
    external set height (num val);
}

@JS('DOMRectList')
abstract class DOMRectList {
    external num get length;
    external DOMRect operator[](num index);
}

@JS('DOMRectReadOnly')
abstract class DOMRectReadOnly {
    external num get x;
    external num get y;
    external num get width;
    external num get height;
    external num get top;
    external num get right;
    external num get bottom;
    external num get left;
}

@JS('DOMRequest')
abstract class DOMRequest implements EventTarget,DOMRequestShared {
    external  then([AnyCallback fulfillCallback,AnyCallback rejectCallback]);
}

@JS('DOMRequestShared')
abstract class DOMRequestShared {
    external String get readyState;
    external  get result;
    external DOMError get error;
    external EventHandlerNonNull get onsuccess;
    external set onsuccess (EventHandlerNonNull val);
    external EventHandlerNonNull get onerror;
    external set onerror (EventHandlerNonNull val);
}

@JS('DOMStringList')
abstract class DOMStringList {
    external num get length;
    external String operator[](num index);
    external bool contains(String string);
}

@JS('DOMStringMap')
abstract class DOMStringMap {
    external String operator[](String name);
    external void operator[]=(String name,String value);
    // Deleter ?
}

@JS('DOMTokenList')
abstract class DOMTokenList {
    external num get length;
    external String operator[](num index);
    external bool contains(String token);
    external void add(String tokens);
    external void remove(String tokens);
    external void replace(String token,String newToken);
    external bool toggle(String token,[bool force]);
    external bool supports(String token);
    external String get value;
    external set value (String val);
    // isStringifier ?
}

@JS()
@anonymous
class DateTimeValue {
    external num get hour;
    external set hour (num val);
    external num get minute;
    external set minute (num val);
    external num get year;
    external set year (num val);
    external num get month;
    external set month (num val);
    external num get day;
    external set day (num val);
}

@JS('Document')
abstract class Document implements Node,DocumentOrShadowRoot,XPathEvaluator,GlobalEventHandlers,DocumentAndElementEventHandlers,TouchEventHandlers,ParentNode,OnErrorEventHandlerForNodes,GeometryUtils,FontFaceSource {
    external factory Document();
    external DOMImplementation get implementation;
    external String get URL;
    external String get documentURI;
    external String get compatMode;
    external String get characterSet;
    external String get charset;
    external String get inputEncoding;
    external String get contentType;
    external DocumentType get doctype;
    external Element get documentElement;
    external HTMLCollection getElementsByTagName(String localName);
    external HTMLCollection getElementsByTagNameNS(String namespace,String localName);
    external HTMLCollection getElementsByClassName(String classNames);
    external Element getElementById(String elementId);
    external Element createElement(String localName,[var options]);
    external Element createElementNS(String namespace,String qualifiedName,[var options]);
    external DocumentFragment createDocumentFragment();
    external Text createTextNode(String data);
    external Comment createComment(String data);
    external ProcessingInstruction createProcessingInstruction(String target,String data);
    external Node importNode(Node node,[bool deep]);
    external Node adoptNode(Node node);
    external Event createEvent(String interface);
    external Range createRange();
    external NodeIterator createNodeIterator(Node root,[num whatToShow,NodeFilter filter]);
    external TreeWalker createTreeWalker(Node root,[num whatToShow,NodeFilter filter]);
    external CDATASection createCDATASection(String data);
    external Attr createAttribute(String name);
    external Attr createAttributeNS(String namespace,String name);
    external Location get location;
    external String get referrer;
    external String get lastModified;
    external String get readyState;
    external String get title;
    external set title (String val);
    external String get dir;
    external set dir (String val);
    external WindowProxy get defaultView;
    external Element get activeElement;
    external bool hasFocus();
    external EventHandlerNonNull get onreadystatechange;
    external set onreadystatechange (EventHandlerNonNull val);
    external EventHandlerNonNull get onwheel;
    external set onwheel (EventHandlerNonNull val);
    external EventHandlerNonNull get onbeforescriptexecute;
    external set onbeforescriptexecute (EventHandlerNonNull val);
    external EventHandlerNonNull get onafterscriptexecute;
    external set onafterscriptexecute (EventHandlerNonNull val);
    external EventHandlerNonNull get onselectionchange;
    external set onselectionchange (EventHandlerNonNull val);
    external bool get mozSyntheticDocument;
    external Element get currentScript;
    external void releaseCapture();
    external void mozSetImageElement(String aImageElementId,Element aImageElement);
    external URI get documentURIObject;
    external num get referrerPolicy;
    external bool get fullscreen;
    external bool get mozFullScreen;
    external bool get fullscreenEnabled;
    external bool get mozFullScreenEnabled;
    external Element get fullscreenElement;
    external Element get mozFullScreenElement;
    external void exitFullscreen();
    external void mozCancelFullScreen();
    external EventHandlerNonNull get onfullscreenchange;
    external set onfullscreenchange (EventHandlerNonNull val);
    external EventHandlerNonNull get onfullscreenerror;
    external set onfullscreenerror (EventHandlerNonNull val);
    external Element get pointerLockElement;
    external void exitPointerLock();
    external EventHandlerNonNull get onpointerlockchange;
    external set onpointerlockchange (EventHandlerNonNull val);
    external EventHandlerNonNull get onpointerlockerror;
    external set onpointerlockerror (EventHandlerNonNull val);
    external Object registerElement(String name,[ElementRegistrationOptions options]);
    external bool get hidden;
    external String get visibilityState;
    external StyleSheetList get styleSheets;
    external String get selectedStyleSheetSet;
    external set selectedStyleSheetSet (String val);
    external String get lastStyleSheetSet;
    external String get preferredStyleSheetSet;
    external DOMStringList get styleSheetSets;
    external void enableStyleSheetsForSet(String name);
    external Element elementFromPoint(num x,num y);
    external List<Element> elementsFromPoint(num x,num y);
    external CaretPosition caretPositionFromPoint(num x,num y);
    external Element get scrollingElement;
    external Element querySelector(String selectors);
    external NodeList querySelectorAll(String selectors);
    external DocumentTimeline get timeline;
    external List<Animation> getAnimations();
    external SVGSVGElement get rootElement;
    external NodeList getAnonymousNodes(Element elt);
    external Element getAnonymousElementByAttribute(Element elt,String attrName,String attrValue);
    external Element getBindingParent(Node node);
    external void loadBindingDocument(String documentURL);
    external Touch createTouch([Window view,EventTarget target,num identifier,num pageX,num pageY,num screenX,num screenY,num clientX,num clientY,num radiusX,num radiusY,num rotationAngle,num force]);
    external TouchList createTouchList(List<Touch> touches);
    external bool get styleSheetChangeEventsEnabled;
    external set styleSheetChangeEventsEnabled (bool val);
    external void obsoleteSheet(String sheetURI);
    external nsIDocShell get docShell;
    external String get contentLanguage;
    external nsILoadGroup get documentLoadGroup;
    external URI get mozDocumentURIIfNotForErrorPages;
    external bool get isSrcdocDocument;
    external String get sandboxFlagsAsString;
    external AnonymousContent insertAnonymousContent(Element aElement);
    external void removeAnonymousContent(AnonymousContent aContent);
    external bool get userHasInteracted;
    external bool get hasScriptsBlockedBySandbox;
    external bool get inlineScriptAllowedByCSP;
    external String get documentFlashClassification;
}

@JS('DocumentAndElementEventHandlers')
abstract class DocumentAndElementEventHandlers {
    external EventHandlerNonNull get oncopy;
    external set oncopy (EventHandlerNonNull val);
    external EventHandlerNonNull get oncut;
    external set oncut (EventHandlerNonNull val);
    external EventHandlerNonNull get onpaste;
    external set onpaste (EventHandlerNonNull val);
}

@JS('DocumentFragment')
abstract class DocumentFragment implements Node,ParentNode {
    external factory DocumentFragment();
    external Element getElementById(String elementId);
    external Element querySelector(String selectors);
    external NodeList querySelectorAll(String selectors);
}

@JS('DocumentOrShadowRoot')
abstract class DocumentOrShadowRoot {
    external Selection getSelection();
    external Element elementFromPoint(num x,num y);
    external List<Element> elementsFromPoint(num x,num y);
    external CaretPosition caretPositionFromPoint(num x,num y);
    external Element get activeElement;
    external StyleSheetList get styleSheets;
}

@JS('DocumentTimeline')
abstract class DocumentTimeline implements AnimationTimeline {
    external factory DocumentTimeline([DocumentTimelineOptions options]);
}

@JS()
@anonymous
class DocumentTimelineOptions {
    external DOMHighResTimeStamp get originTime;
    external set originTime (DOMHighResTimeStamp val);
}

@JS('DocumentType')
abstract class DocumentType implements Node,ChildNode {
    external String get name;
    external String get publicId;
    external String get systemId;
}

@JS('Element')
abstract class Element implements Node,Slotable,ChildNode,NonDocumentTypeChildNode,ParentNode,Animatable,GeometryUtils {
    external String get namespaceURI;
    external String get prefix;
    external String get localName;
    external String get tagName;
    external String get id;
    external set id (String val);
    external String get className;
    external set className (String val);
    external DOMTokenList get classList;
    external NamedNodeMap get attributes;
    external List<String> getAttributeNames();
    external String getAttribute(String name);
    external String getAttributeNS(String namespace,String localName);
    external void setAttribute(String name,String value);
    external void setAttributeNS(String namespace,String name,String value);
    external void removeAttribute(String name);
    external void removeAttributeNS(String namespace,String localName);
    external bool hasAttribute(String name);
    external bool hasAttributeNS(String namespace,String localName);
    external bool hasAttributes();
    external Element closest(String selector);
    external bool matches(String selector);
    external bool webkitMatchesSelector(String selector);
    external HTMLCollection getElementsByTagName(String localName);
    external HTMLCollection getElementsByTagNameNS(String namespace,String localName);
    external HTMLCollection getElementsByClassName(String classNames);
    external Element insertAdjacentElement(String where,Element element);
    external void insertAdjacentText(String where,String data);
    external num get fontSizeInflation;
    external EventHandlerNonNull get onwheel;
    external set onwheel (EventHandlerNonNull val);
    external bool mozMatchesSelector(String selector);
    external void setPointerCapture(num pointerId);
    external void releasePointerCapture(num pointerId);
    external bool hasPointerCapture(num pointerId);
    external void setCapture([bool retargetToElement]);
    external void releaseCapture();
    external void setCaptureAlways([bool retargetToElement]);
    external Attr getAttributeNode(String name);
    external Attr setAttributeNode(Attr newAttr);
    external Attr removeAttributeNode(Attr oldAttr);
    external Attr getAttributeNodeNS(String namespaceURI,String localName);
    external Attr setAttributeNodeNS(Attr newAttr);
    external bool scrollByNoFlush(num dx,num dy);
    external List<Grid> getGridFragments();
    external DOMRectList getClientRects();
    external DOMRect getBoundingClientRect();
    external void scrollIntoView([ScrollIntoViewOptions options]);
    external num get scrollTop;
    external set scrollTop (num val);
    external num get scrollLeft;
    external set scrollLeft (num val);
    external num get scrollWidth;
    external num get scrollHeight;
    external void scroll([ScrollToOptions options]);
    external void scrollTo([ScrollToOptions options]);
    external void scrollBy([ScrollToOptions options]);
    external void mozScrollSnap();
    external num get clientTop;
    external num get clientLeft;
    external num get clientWidth;
    external num get clientHeight;
    external num get scrollTopMin;
    external num get scrollTopMax;
    external num get scrollLeftMin;
    external num get scrollLeftMax;
    external String get innerHTML;
    external set innerHTML (String val);
    external String get outerHTML;
    external set outerHTML (String val);
    external void insertAdjacentHTML(String position,String text);
    external Element querySelector(String selectors);
    external NodeList querySelectorAll(String selectors);
    external ShadowRoot createShadowRoot();
    external NodeList getDestinationInsertionPoints();
    external ShadowRoot get shadowRoot;
    external void requestFullscreen();
    external void mozRequestFullScreen();
    external void requestPointerLock();
}

@JS()
@anonymous
class ElementCreationOptions {
    @JS('is')
    external String get IS;
    @JS('is')
    external set IS (String val);
}

@JS()
@anonymous
class ElementDefinitionOptions {
    @JS('extends')
    external String get Extends;
    @JS('extends')
    external set Extends (String val);
}

@JS()
@anonymous
class ElementRegistrationOptions {
    external Object get prototype;
    external set prototype (Object val);
    @JS('extends')
    external String get Extends;
    @JS('extends')
    external set Extends (String val);
}

@JS('Event')
abstract class Event {
    external factory Event(String type,[EventInit eventInitDict]);
    external String get type;
    external EventTarget get target;
    external EventTarget get currentTarget;
    external num get eventPhase;
    external void stopPropagation();
    external void stopImmediatePropagation();
    external bool get bubbles;
    external bool get cancelable;
    external void preventDefault();
    external bool get defaultPrevented;
    external bool get defaultPreventedByChrome;
    external bool get defaultPreventedByContent;
    external bool get composed;
    external List<EventTarget> composedPath();
    external bool get isTrusted;
    external DOMHighResTimeStamp get timeStamp;
    external void initEvent(String type,bool bubbles,bool cancelable);
    external bool get cancelBubble;
    external set cancelBubble (bool val);
    external EventTarget get originalTarget;
    external EventTarget get explicitOriginalTarget;
    external EventTarget get composedTarget;
    external bool get multipleActionsPrevented;
    external bool get isSynthesized;
    external bool getPreventDefault();
}

typedef  EventHandlerNonNull(Event event);

@JS()
@anonymous
class EventInit {
    external bool get bubbles;
    external set bubbles (bool val);
    external bool get cancelable;
    external set cancelable (bool val);
    external bool get composed;
    external set composed (bool val);
}

@JS()
@anonymous
class EventListenerOptions {
    external bool get capture;
    external set capture (bool val);
    external bool get mozSystemGroup;
    external set mozSystemGroup (bool val);
}

@JS()
@anonymous
class EventModifierInit extends UIEventInit {
    external bool get ctrlKey;
    external set ctrlKey (bool val);
    external bool get shiftKey;
    external set shiftKey (bool val);
    external bool get altKey;
    external set altKey (bool val);
    external bool get metaKey;
    external set metaKey (bool val);
    external bool get modifierAltGraph;
    external set modifierAltGraph (bool val);
    external bool get modifierCapsLock;
    external set modifierCapsLock (bool val);
    external bool get modifierFn;
    external set modifierFn (bool val);
    external bool get modifierFnLock;
    external set modifierFnLock (bool val);
    external bool get modifierNumLock;
    external set modifierNumLock (bool val);
    external bool get modifierOS;
    external set modifierOS (bool val);
    external bool get modifierScrollLock;
    external set modifierScrollLock (bool val);
    external bool get modifierSymbol;
    external set modifierSymbol (bool val);
    external bool get modifierSymbolLock;
    external set modifierSymbolLock (bool val);
}

@JS('EventSource')
abstract class EventSource implements EventTarget {
    external factory EventSource(String url,[EventSourceInit eventSourceInitDict]);
    external String get url;
    external bool get withCredentials;
    external num get readyState;
    external EventHandlerNonNull get onopen;
    external set onopen (EventHandlerNonNull val);
    external EventHandlerNonNull get onmessage;
    external set onmessage (EventHandlerNonNull val);
    external EventHandlerNonNull get onerror;
    external set onerror (EventHandlerNonNull val);
    external void close();
}

@JS()
@anonymous
class EventSourceInit {
    external bool get withCredentials;
    external set withCredentials (bool val);
}

@JS('EventTarget')
abstract class EventTarget {
    external void addEventListener(String type,EventListener listener,[var options,bool wantsUntrusted]);
    external void removeEventListener(String type,EventListener listener,[var options]);
    external bool dispatchEvent(Event event);
    external void setEventHandler(String type,EventHandlerNonNull handler);
    external EventHandlerNonNull getEventHandler(String type);
    external WindowProxy get ownerGlobal;
}

@JS('ExtendableEvent')
abstract class ExtendableEvent implements Event {
    external factory ExtendableEvent(String type,[ExtendableEventInit eventInitDict]);
    external void waitUntil(Promise<dynamic> p);
}

@JS()
@anonymous
class ExtendableEventInit extends EventInit {
}

@JS('FetchEvent')
abstract class FetchEvent implements ExtendableEvent {
    external factory FetchEvent(String type,FetchEventInit eventInitDict);
    external Request get request;
    external String get clientId;
    external bool get isReload;
    external void respondWith(Promise<Response> r);
}

@JS()
@anonymous
class FetchEventInit extends EventInit {
    external Request get request;
    external set request (Request val);
    external String get clientId;
    external set clientId (String val);
    external bool get isReload;
    external set isReload (bool val);
}

@JS('File')
abstract class File implements Blob {
    external factory File(List<dynamic> fileBits,String fileName,[FilePropertyBag options]);
    external String get name;
    external num get lastModified;
    external DateTime get lastModifiedDate;
    external String get webkitRelativePath;
    external String get mozFullPath;
    external Promise<File> createFromNsIFile(nsIFile file,[ChromeFilePropertyBag options]);
    external Promise<File> createFromFileName(String fileName,[ChromeFilePropertyBag options]);
}

@JS('FileList')
abstract class FileList {
    external File operator[](num index);
    external num get length;
}

@JS()
@anonymous
class FilePropertyBag {
    external String get type;
    external set type (String val);
    external num get lastModified;
    external set lastModified (num val);
}

@JS('FileReader')
abstract class FileReader implements EventTarget {
    external factory FileReader();
    external void readAsArrayBuffer(Blob blob);
    external void readAsText(Blob blob,[String label]);
    external void readAsDataURL(Blob blob);
    external void abort();
    external num get readyState;
    external  get result;
    external DOMError get error;
    external EventHandlerNonNull get onloadstart;
    external set onloadstart (EventHandlerNonNull val);
    external EventHandlerNonNull get onprogress;
    external set onprogress (EventHandlerNonNull val);
    external EventHandlerNonNull get onload;
    external set onload (EventHandlerNonNull val);
    external EventHandlerNonNull get onabort;
    external set onabort (EventHandlerNonNull val);
    external EventHandlerNonNull get onerror;
    external set onerror (EventHandlerNonNull val);
    external EventHandlerNonNull get onloadend;
    external set onloadend (EventHandlerNonNull val);
    external void readAsBinaryString(Blob filedata);
}

@JS('FontFace')
abstract class FontFace {
    external factory FontFace(String family,var source,[FontFaceDescriptors descriptors]);
    external String get family;
    external set family (String val);
    external String get style;
    external set style (String val);
    external String get weight;
    external set weight (String val);
    external String get stretch;
    external set stretch (String val);
    external String get unicodeRange;
    external set unicodeRange (String val);
    external String get variant;
    external set variant (String val);
    external String get featureSettings;
    external set featureSettings (String val);
    external String get display;
    external set display (String val);
    external String get status;
    external Promise<FontFace> load();
    external Promise<FontFace> get loaded;
}

@JS()
@anonymous
class FontFaceDescriptors {
    external String get style;
    external set style (String val);
    external String get weight;
    external set weight (String val);
    external String get stretch;
    external set stretch (String val);
    external String get unicodeRange;
    external set unicodeRange (String val);
    external String get variant;
    external set variant (String val);
    external String get featureSettings;
    external set featureSettings (String val);
    external String get display;
    external set display (String val);
}

@JS('FontFaceSet')
abstract class FontFaceSet implements EventTarget {
    external num get size;
    external void add(FontFace font);
    external bool has(FontFace font);
    external bool delete(FontFace font);
    external void clear();
    external FontFaceSetIterator entries();
    external FontFaceSetIterator values();
    external void forEach(FontFaceSetForEachCallback cb,[var thisArg]);
    external EventHandlerNonNull get onloading;
    external set onloading (EventHandlerNonNull val);
    external EventHandlerNonNull get onloadingdone;
    external set onloadingdone (EventHandlerNonNull val);
    external EventHandlerNonNull get onloadingerror;
    external set onloadingerror (EventHandlerNonNull val);
    external Promise<List<FontFace>> load(String font,[String text]);
    external bool check(String font,[String text]);
    external Promise<dynamic> get ready;
    external String get status;
}

typedef void FontFaceSetForEachCallback(FontFace value,FontFace key,FontFaceSet set);

@JS('FontFaceSetIterator')
abstract class FontFaceSetIterator {
    external FontFaceSetIteratorResult next();
}

@JS()
@anonymous
class FontFaceSetIteratorResult {
    external  get value;
    external set value (var val);
    external bool get done;
    external set done (bool val);
}

@JS('FontFaceSource')
abstract class FontFaceSource {
    external FontFaceSet get fonts;
}

@JS('FormData')
abstract class FormData {
    external factory FormData([HTMLFormElement form]);
    external void append(String name,var value,[String filename]);
    external void delete(String name);
    external  get(String name);
    external List<dynamic> getAll(String name);
    external bool has(String name);
    external void set(String name,var value,[String filename]);
}

typedef void FrameRequestCallback(DOMHighResTimeStamp time);

@JS('GeometryUtils')
abstract class GeometryUtils {
    external List<DOMQuad> getBoxQuads([BoxQuadOptions options]);
    external DOMQuad convertQuadFromNode(DOMQuad quad,var from,[ConvertCoordinateOptions options]);
    external DOMQuad convertRectFromNode(DOMRectReadOnly rect,var from,[ConvertCoordinateOptions options]);
    external DOMPoint convertPointFromNode(DOMPointInit point,var from,[ConvertCoordinateOptions options]);
}

@JS()
@anonymous
class GetNotificationOptions {
    external String get tag;
    external set tag (String val);
}

@JS()
@anonymous
class GetRootNodeOptions {
    external bool get composed;
    external set composed (bool val);
}

@JS('GlobalCrypto')
abstract class GlobalCrypto {
    external Crypto get crypto;
}

@JS('GlobalEventHandlers')
abstract class GlobalEventHandlers {
    external EventHandlerNonNull get onabort;
    external set onabort (EventHandlerNonNull val);
    external EventHandlerNonNull get onblur;
    external set onblur (EventHandlerNonNull val);
    external EventHandlerNonNull get onfocus;
    external set onfocus (EventHandlerNonNull val);
    external EventHandlerNonNull get onauxclick;
    external set onauxclick (EventHandlerNonNull val);
    external EventHandlerNonNull get oncanplay;
    external set oncanplay (EventHandlerNonNull val);
    external EventHandlerNonNull get oncanplaythrough;
    external set oncanplaythrough (EventHandlerNonNull val);
    external EventHandlerNonNull get onchange;
    external set onchange (EventHandlerNonNull val);
    external EventHandlerNonNull get onclick;
    external set onclick (EventHandlerNonNull val);
    external EventHandlerNonNull get onclose;
    external set onclose (EventHandlerNonNull val);
    external EventHandlerNonNull get oncontextmenu;
    external set oncontextmenu (EventHandlerNonNull val);
    external EventHandlerNonNull get ondblclick;
    external set ondblclick (EventHandlerNonNull val);
    external EventHandlerNonNull get ondrag;
    external set ondrag (EventHandlerNonNull val);
    external EventHandlerNonNull get ondragend;
    external set ondragend (EventHandlerNonNull val);
    external EventHandlerNonNull get ondragenter;
    external set ondragenter (EventHandlerNonNull val);
    external EventHandlerNonNull get ondragexit;
    external set ondragexit (EventHandlerNonNull val);
    external EventHandlerNonNull get ondragleave;
    external set ondragleave (EventHandlerNonNull val);
    external EventHandlerNonNull get ondragover;
    external set ondragover (EventHandlerNonNull val);
    external EventHandlerNonNull get ondragstart;
    external set ondragstart (EventHandlerNonNull val);
    external EventHandlerNonNull get ondrop;
    external set ondrop (EventHandlerNonNull val);
    external EventHandlerNonNull get ondurationchange;
    external set ondurationchange (EventHandlerNonNull val);
    external EventHandlerNonNull get onemptied;
    external set onemptied (EventHandlerNonNull val);
    external EventHandlerNonNull get onended;
    external set onended (EventHandlerNonNull val);
    external EventHandlerNonNull get oninput;
    external set oninput (EventHandlerNonNull val);
    external EventHandlerNonNull get oninvalid;
    external set oninvalid (EventHandlerNonNull val);
    external EventHandlerNonNull get onkeydown;
    external set onkeydown (EventHandlerNonNull val);
    external EventHandlerNonNull get onkeypress;
    external set onkeypress (EventHandlerNonNull val);
    external EventHandlerNonNull get onkeyup;
    external set onkeyup (EventHandlerNonNull val);
    external EventHandlerNonNull get onload;
    external set onload (EventHandlerNonNull val);
    external EventHandlerNonNull get onloadeddata;
    external set onloadeddata (EventHandlerNonNull val);
    external EventHandlerNonNull get onloadedmetadata;
    external set onloadedmetadata (EventHandlerNonNull val);
    external EventHandlerNonNull get onloadend;
    external set onloadend (EventHandlerNonNull val);
    external EventHandlerNonNull get onloadstart;
    external set onloadstart (EventHandlerNonNull val);
    external EventHandlerNonNull get onmousedown;
    external set onmousedown (EventHandlerNonNull val);
    external EventHandlerNonNull get onmouseenter;
    external set onmouseenter (EventHandlerNonNull val);
    external EventHandlerNonNull get onmouseleave;
    external set onmouseleave (EventHandlerNonNull val);
    external EventHandlerNonNull get onmousemove;
    external set onmousemove (EventHandlerNonNull val);
    external EventHandlerNonNull get onmouseout;
    external set onmouseout (EventHandlerNonNull val);
    external EventHandlerNonNull get onmouseover;
    external set onmouseover (EventHandlerNonNull val);
    external EventHandlerNonNull get onmouseup;
    external set onmouseup (EventHandlerNonNull val);
    external EventHandlerNonNull get onpause;
    external set onpause (EventHandlerNonNull val);
    external EventHandlerNonNull get onplay;
    external set onplay (EventHandlerNonNull val);
    external EventHandlerNonNull get onplaying;
    external set onplaying (EventHandlerNonNull val);
    external EventHandlerNonNull get onprogress;
    external set onprogress (EventHandlerNonNull val);
    external EventHandlerNonNull get onratechange;
    external set onratechange (EventHandlerNonNull val);
    external EventHandlerNonNull get onreset;
    external set onreset (EventHandlerNonNull val);
    external EventHandlerNonNull get onresize;
    external set onresize (EventHandlerNonNull val);
    external EventHandlerNonNull get onscroll;
    external set onscroll (EventHandlerNonNull val);
    external EventHandlerNonNull get onseeked;
    external set onseeked (EventHandlerNonNull val);
    external EventHandlerNonNull get onseeking;
    external set onseeking (EventHandlerNonNull val);
    external EventHandlerNonNull get onselect;
    external set onselect (EventHandlerNonNull val);
    external EventHandlerNonNull get onshow;
    external set onshow (EventHandlerNonNull val);
    external EventHandlerNonNull get onstalled;
    external set onstalled (EventHandlerNonNull val);
    external EventHandlerNonNull get onsubmit;
    external set onsubmit (EventHandlerNonNull val);
    external EventHandlerNonNull get onsuspend;
    external set onsuspend (EventHandlerNonNull val);
    external EventHandlerNonNull get ontimeupdate;
    external set ontimeupdate (EventHandlerNonNull val);
    external EventHandlerNonNull get onvolumechange;
    external set onvolumechange (EventHandlerNonNull val);
    external EventHandlerNonNull get onwaiting;
    external set onwaiting (EventHandlerNonNull val);
    external EventHandlerNonNull get onselectstart;
    external set onselectstart (EventHandlerNonNull val);
    external EventHandlerNonNull get ontoggle;
    external set ontoggle (EventHandlerNonNull val);
    external EventHandlerNonNull get onpointercancel;
    external set onpointercancel (EventHandlerNonNull val);
    external EventHandlerNonNull get onpointerdown;
    external set onpointerdown (EventHandlerNonNull val);
    external EventHandlerNonNull get onpointerup;
    external set onpointerup (EventHandlerNonNull val);
    external EventHandlerNonNull get onpointermove;
    external set onpointermove (EventHandlerNonNull val);
    external EventHandlerNonNull get onpointerout;
    external set onpointerout (EventHandlerNonNull val);
    external EventHandlerNonNull get onpointerover;
    external set onpointerover (EventHandlerNonNull val);
    external EventHandlerNonNull get onpointerenter;
    external set onpointerenter (EventHandlerNonNull val);
    external EventHandlerNonNull get onpointerleave;
    external set onpointerleave (EventHandlerNonNull val);
    external EventHandlerNonNull get ongotpointercapture;
    external set ongotpointercapture (EventHandlerNonNull val);
    external EventHandlerNonNull get onlostpointercapture;
    external set onlostpointercapture (EventHandlerNonNull val);
    external EventHandlerNonNull get onmozfullscreenchange;
    external set onmozfullscreenchange (EventHandlerNonNull val);
    external EventHandlerNonNull get onmozfullscreenerror;
    external set onmozfullscreenerror (EventHandlerNonNull val);
    external EventHandlerNonNull get onanimationcancel;
    external set onanimationcancel (EventHandlerNonNull val);
    external EventHandlerNonNull get onanimationend;
    external set onanimationend (EventHandlerNonNull val);
    external EventHandlerNonNull get onanimationiteration;
    external set onanimationiteration (EventHandlerNonNull val);
    external EventHandlerNonNull get onanimationstart;
    external set onanimationstart (EventHandlerNonNull val);
    external EventHandlerNonNull get ontransitioncancel;
    external set ontransitioncancel (EventHandlerNonNull val);
    external EventHandlerNonNull get ontransitionend;
    external set ontransitionend (EventHandlerNonNull val);
    external EventHandlerNonNull get ontransitionrun;
    external set ontransitionrun (EventHandlerNonNull val);
    external EventHandlerNonNull get ontransitionstart;
    external set ontransitionstart (EventHandlerNonNull val);
    external EventHandlerNonNull get onwebkitanimationend;
    external set onwebkitanimationend (EventHandlerNonNull val);
    external EventHandlerNonNull get onwebkitanimationiteration;
    external set onwebkitanimationiteration (EventHandlerNonNull val);
    external EventHandlerNonNull get onwebkitanimationstart;
    external set onwebkitanimationstart (EventHandlerNonNull val);
    external EventHandlerNonNull get onwebkittransitionend;
    external set onwebkittransitionend (EventHandlerNonNull val);
}

@JS('GlobalU2F')
abstract class GlobalU2F {
    external U2F get u2f;
}

@JS('Grid')
abstract class Grid {
    external GridDimension get rows;
    external GridDimension get cols;
}

@JS('GridArea')
abstract class GridArea {
    external String get name;
    external String get type;
    external num get rowStart;
    external num get rowEnd;
    external num get columnStart;
    external num get columnEnd;
}

@JS('GridDimension')
abstract class GridDimension {
    external GridLines get lines;
    external GridTracks get tracks;
}

@JS('GridLine')
abstract class GridLine {
    external num get start;
    external num get breadth;
    external String get type;
    external num get number;
}

@JS('GridLines')
abstract class GridLines {
    external num get length;
    external GridLine operator[](num index);
}

@JS('GridTrack')
abstract class GridTrack {
    external num get start;
    external num get breadth;
    external String get type;
    external String get state;
}

@JS('GridTracks')
abstract class GridTracks {
    external num get length;
    external GridTrack operator[](num index);
}

@JS('HTMLAllCollection')
abstract class HTMLAllCollection {
    external num get length;
    external Node operator[](num index);
    external Node item(num index);
}

@JS('HTMLAnchorElement')
abstract class HTMLAnchorElement implements HTMLElement,HTMLHyperlinkElementUtils {
    external String get target;
    external set target (String val);
    external String get download;
    external set download (String val);
    external String get ping;
    external set ping (String val);
    external String get rel;
    external set rel (String val);
    external String get referrerPolicy;
    external set referrerPolicy (String val);
    external DOMTokenList get relList;
    external String get hreflang;
    external set hreflang (String val);
    external String get type;
    external set type (String val);
    external String get text;
    external set text (String val);
    external String get coords;
    external set coords (String val);
    external String get charset;
    external set charset (String val);
    external String get name;
    external set name (String val);
    external String get rev;
    external set rev (String val);
    external String get shape;
    external set shape (String val);
}

@JS('HTMLAppletElement')
abstract class HTMLAppletElement implements HTMLElement {
    external String get align;
    external set align (String val);
    external String get alt;
    external set alt (String val);
    external String get archive;
    external set archive (String val);
    external String get code;
    external set code (String val);
    external String get codeBase;
    external set codeBase (String val);
    external String get height;
    external set height (String val);
    external num get hspace;
    external set hspace (num val);
    external String get name;
    external set name (String val);
    external String get object;
    external set object (String val);
    external num get vspace;
    external set vspace (num val);
    external String get width;
    external set width (String val);
}

@JS('HTMLAreaElement')
abstract class HTMLAreaElement implements HTMLElement,HTMLHyperlinkElementUtils {
    external String get alt;
    external set alt (String val);
    external String get coords;
    external set coords (String val);
    external String get shape;
    external set shape (String val);
    external String get target;
    external set target (String val);
    external String get download;
    external set download (String val);
    external String get ping;
    external set ping (String val);
    external String get rel;
    external set rel (String val);
    external String get referrerPolicy;
    external set referrerPolicy (String val);
    external DOMTokenList get relList;
    external bool get noHref;
    external set noHref (bool val);
}

@JS('HTMLAudioElement')
abstract class HTMLAudioElement implements HTMLMediaElement {
}

@JS('HTMLBRElement')
abstract class HTMLBRElement implements HTMLElement {
    external String get clear;
    external set clear (String val);
}

@JS('HTMLBaseElement')
abstract class HTMLBaseElement implements HTMLElement {
    external String get href;
    external set href (String val);
    external String get target;
    external set target (String val);
}

@JS('HTMLBodyElement')
abstract class HTMLBodyElement implements HTMLElement,WindowEventHandlers {
    external String get text;
    external set text (String val);
    external String get link;
    external set link (String val);
    external String get vLink;
    external set vLink (String val);
    external String get aLink;
    external set aLink (String val);
    external String get bgColor;
    external set bgColor (String val);
    external String get background;
    external set background (String val);
}

@JS('HTMLButtonElement')
abstract class HTMLButtonElement implements HTMLElement {
    external bool get autofocus;
    external set autofocus (bool val);
    external bool get disabled;
    external set disabled (bool val);
    external HTMLFormElement get form;
    external String get formAction;
    external set formAction (String val);
    external String get formEnctype;
    external set formEnctype (String val);
    external String get formMethod;
    external set formMethod (String val);
    external bool get formNoValidate;
    external set formNoValidate (bool val);
    external String get formTarget;
    external set formTarget (String val);
    external String get name;
    external set name (String val);
    external String get type;
    external set type (String val);
    external String get value;
    external set value (String val);
    external bool get willValidate;
    external ValidityState get validity;
    external String get validationMessage;
    external bool checkValidity();
    external bool reportValidity();
    external void setCustomValidity(String error);
}

@JS('HTMLCanvasElement')
abstract class HTMLCanvasElement implements HTMLElement {
    external num get width;
    external set width (num val);
    external num get height;
    external set height (num val);
    external nsISupports getContext(String contextId,[var contextOptions]);
    external String toDataURL([String type,var encoderOptions]);
    external void toBlob(BlobCallback callback,[String type,var encoderOptions]);
    external bool get mozOpaque;
    external set mozOpaque (bool val);
    external File mozGetAsFile(String name,[String type]);
    external nsISupports MozGetIPCContext(String contextId);
    external PrintCallback get mozPrintCallback;
    external set mozPrintCallback (PrintCallback val);
    external CanvasCaptureMediaStream captureStream([num frameRate]);
    external OffscreenCanvas transferControlToOffscreen();
}

@JS('HTMLCollection')
abstract class HTMLCollection {
    external num get length;
    external Element operator[](num index);
}

@JS('HTMLContentElement')
abstract class HTMLContentElement implements HTMLElement {
    external String get select;
    external set select (String val);
    external NodeList getDistributedNodes();
}

@JS('HTMLDListElement')
abstract class HTMLDListElement implements HTMLElement {
    external bool get compact;
    external set compact (bool val);
}

@JS('HTMLDataElement')
abstract class HTMLDataElement implements HTMLElement {
    external String get value;
    external set value (String val);
}

@JS('HTMLDataListElement')
abstract class HTMLDataListElement implements HTMLElement {
    external HTMLCollection get options;
}

@JS('HTMLDetailsElement')
abstract class HTMLDetailsElement implements HTMLElement {
    external bool get open;
    external set open (bool val);
}

@JS('HTMLDialogElement')
abstract class HTMLDialogElement implements HTMLElement {
    external bool get open;
    external set open (bool val);
    external String get returnValue;
    external set returnValue (String val);
    external void show();
    external void showModal();
    external void close([String returnValue]);
}

@JS('HTMLDirectoryElement')
abstract class HTMLDirectoryElement implements HTMLElement {
    external bool get compact;
    external set compact (bool val);
}

@JS('HTMLDivElement')
abstract class HTMLDivElement implements HTMLElement {
    external String get align;
    external set align (String val);
}

@JS('HTMLDocument')
abstract class HTMLDocument implements Document {
    external String get domain;
    external set domain (String val);
    external String get cookie;
    external set cookie (String val);
    external Object operator[](String name);
    external HTMLElement get body;
    external set body (HTMLElement val);
    external HTMLHeadElement get head;
    external HTMLCollection get images;
    external HTMLCollection get embeds;
    external HTMLCollection get plugins;
    external HTMLCollection get links;
    external HTMLCollection get forms;
    external HTMLCollection get scripts;
    external NodeList getElementsByName(String elementName);
    external Document open([String type,String replace]);
    external void close();
    external void write(String text);
    external void writeln(String text);
    external String get designMode;
    external set designMode (String val);
    external bool execCommand(String commandId,[bool showUI,String value]);
    external bool queryCommandEnabled(String commandId);
    external bool queryCommandIndeterm(String commandId);
    external bool queryCommandState(String commandId);
    external bool queryCommandSupported(String commandId);
    external String queryCommandValue(String commandId);
    external String get fgColor;
    external set fgColor (String val);
    external String get linkColor;
    external set linkColor (String val);
    external String get vlinkColor;
    external set vlinkColor (String val);
    external String get alinkColor;
    external set alinkColor (String val);
    external String get bgColor;
    external set bgColor (String val);
    external HTMLCollection get anchors;
    external HTMLCollection get applets;
    external void clear();
    external HTMLAllCollection get all;
    external Selection getSelection();
    external void captureEvents();
    external void releaseEvents();
    external num get blockedTrackingNodeCount;
    external NodeList get blockedTrackingNodes;
}

@JS('HTMLElement')
abstract class HTMLElement implements Element,GlobalEventHandlers,DocumentAndElementEventHandlers,TouchEventHandlers,OnErrorEventHandlerForNodes {
    external String get title;
    external set title (String val);
    external String get lang;
    external set lang (String val);
    external String get dir;
    external set dir (String val);
    external  get dataset;
    external String get innerText;
    external set innerText (String val);
    external bool get hidden;
    external set hidden (bool val);
    external void click();
    external num get tabIndex;
    external set tabIndex (num val);
    external void focus();
    external void blur();
    external String get accessKey;
    external set accessKey (String val);
    external String get accessKeyLabel;
    external bool get draggable;
    external set draggable (bool val);
    external String get contentEditable;
    external set contentEditable (String val);
    external bool get isContentEditable;
    external HTMLMenuElement get contextMenu;
    external bool get spellcheck;
    external set spellcheck (bool val);
    external CSSStyleDeclaration get style;
    external Element get offsetParent;
    external num get offsetTop;
    external num get offsetLeft;
    external num get offsetWidth;
    external num get offsetHeight;
    external bool get scrollgrab;
    external set scrollgrab (bool val);
}

@JS('HTMLEmbedElement')
abstract class HTMLEmbedElement implements HTMLElement {
    external String get src;
    external set src (String val);
    external String get type;
    external set type (String val);
    external String get width;
    external set width (String val);
    external String get height;
    external set height (String val);
    external String get align;
    external set align (String val);
    external String get name;
    external set name (String val);
    external Document getSVGDocument();
}

@JS('HTMLFieldSetElement')
abstract class HTMLFieldSetElement implements HTMLElement {
    external bool get disabled;
    external set disabled (bool val);
    external HTMLFormElement get form;
    external String get name;
    external set name (String val);
    external String get type;
    external HTMLCollection get elements;
    external bool get willValidate;
    external ValidityState get validity;
    external String get validationMessage;
    external bool checkValidity();
    external bool reportValidity();
    external void setCustomValidity(String error);
}

@JS('HTMLFontElement')
abstract class HTMLFontElement implements HTMLElement {
    external String get color;
    external set color (String val);
    external String get face;
    external set face (String val);
    external String get size;
    external set size (String val);
}

@JS('HTMLFormControlsCollection')
abstract class HTMLFormControlsCollection implements HTMLCollection {
}

@JS('HTMLFormElement')
abstract class HTMLFormElement implements HTMLElement {
    external String get acceptCharset;
    external set acceptCharset (String val);
    external String get action;
    external set action (String val);
    external String get autocomplete;
    external set autocomplete (String val);
    external String get enctype;
    external set enctype (String val);
    external String get encoding;
    external set encoding (String val);
    external String get method;
    external set method (String val);
    external String get name;
    external set name (String val);
    external bool get noValidate;
    external set noValidate (bool val);
    external String get target;
    external set target (String val);
    external HTMLCollection get elements;
    external num get length;
    external Element operator[](num index);
    external void submit();
    external void reset();
    external bool checkValidity();
    external bool reportValidity();
    external void requestAutocomplete();
}

@JS('HTMLFrameElement')
abstract class HTMLFrameElement implements HTMLElement {
    external String get name;
    external set name (String val);
    external String get scrolling;
    external set scrolling (String val);
    external String get src;
    external set src (String val);
    external String get frameBorder;
    external set frameBorder (String val);
    external String get longDesc;
    external set longDesc (String val);
    external bool get noResize;
    external set noResize (bool val);
    external Document get contentDocument;
    external WindowProxy get contentWindow;
    external String get marginHeight;
    external set marginHeight (String val);
    external String get marginWidth;
    external set marginWidth (String val);
}

@JS('HTMLFrameSetElement')
abstract class HTMLFrameSetElement implements HTMLElement,WindowEventHandlers {
    external String get cols;
    external set cols (String val);
    external String get rows;
    external set rows (String val);
}

@JS('HTMLHRElement')
abstract class HTMLHRElement implements HTMLElement {
    external String get align;
    external set align (String val);
    external String get color;
    external set color (String val);
    external bool get noShade;
    external set noShade (bool val);
    external String get size;
    external set size (String val);
    external String get width;
    external set width (String val);
}

@JS('HTMLHeadElement')
abstract class HTMLHeadElement implements HTMLElement {
}

@JS('HTMLHeadingElement')
abstract class HTMLHeadingElement implements HTMLElement {
    external String get align;
    external set align (String val);
}

@JS('HTMLHtmlElement')
abstract class HTMLHtmlElement implements HTMLElement {
    external String get version;
    external set version (String val);
}

@JS('HTMLHyperlinkElementUtils')
abstract class HTMLHyperlinkElementUtils {
    external String get href;
    external set href (String val);
    external String get origin;
    external String get protocol;
    external set protocol (String val);
    external String get username;
    external set username (String val);
    external String get password;
    external set password (String val);
    external String get host;
    external set host (String val);
    external String get hostname;
    external set hostname (String val);
    external String get port;
    external set port (String val);
    external String get pathname;
    external set pathname (String val);
    external String get search;
    external set search (String val);
    external String get hash;
    external set hash (String val);
}

@JS('HTMLIFrameElement')
abstract class HTMLIFrameElement implements HTMLElement {
    external String get src;
    external set src (String val);
    external String get srcdoc;
    external set srcdoc (String val);
    external String get name;
    external set name (String val);
    external DOMTokenList get sandbox;
    external bool get allowFullscreen;
    external set allowFullscreen (bool val);
    external String get width;
    external set width (String val);
    external String get height;
    external set height (String val);
    external String get referrerPolicy;
    external set referrerPolicy (String val);
    external Document get contentDocument;
    external WindowProxy get contentWindow;
    external String get align;
    external set align (String val);
    external String get scrolling;
    external set scrolling (String val);
    external String get frameBorder;
    external set frameBorder (String val);
    external String get longDesc;
    external set longDesc (String val);
    external String get marginHeight;
    external set marginHeight (String val);
    external String get marginWidth;
    external set marginWidth (String val);
    external Document getSVGDocument();
    external bool get mozbrowser;
    external set mozbrowser (bool val);
}

@JS('HTMLImageElement')
abstract class HTMLImageElement implements HTMLElement,MozImageLoadingContent {
    external String get alt;
    external set alt (String val);
    external String get src;
    external set src (String val);
    external String get srcset;
    external set srcset (String val);
    external String get crossOrigin;
    external set crossOrigin (String val);
    external String get useMap;
    external set useMap (String val);
    external String get referrerPolicy;
    external set referrerPolicy (String val);
    external bool get isMap;
    external set isMap (bool val);
    external num get width;
    external set width (num val);
    external num get height;
    external set height (num val);
    external num get naturalWidth;
    external num get naturalHeight;
    external bool get complete;
    external String get name;
    external set name (String val);
    external String get align;
    external set align (String val);
    external num get hspace;
    external set hspace (num val);
    external num get vspace;
    external set vspace (num val);
    external String get longDesc;
    external set longDesc (String val);
    external String get border;
    external set border (String val);
    external String get sizes;
    external set sizes (String val);
    external String get currentSrc;
    external String get lowsrc;
    external set lowsrc (String val);
    external num get x;
    external num get y;
}

@JS('HTMLInputElement')
abstract class HTMLInputElement implements HTMLElement,MozImageLoadingContent,MozPhonetic {
    external String get accept;
    external set accept (String val);
    external String get alt;
    external set alt (String val);
    external String get autocomplete;
    external set autocomplete (String val);
    external bool get autofocus;
    external set autofocus (bool val);
    external bool get defaultChecked;
    external set defaultChecked (bool val);
    external bool get checked;
    external set checked (bool val);
    external bool get disabled;
    external set disabled (bool val);
    external HTMLFormElement get form;
    external FileList get files;
    external String get formAction;
    external set formAction (String val);
    external String get formEnctype;
    external set formEnctype (String val);
    external String get formMethod;
    external set formMethod (String val);
    external bool get formNoValidate;
    external set formNoValidate (bool val);
    external String get formTarget;
    external set formTarget (String val);
    external num get height;
    external set height (num val);
    external bool get indeterminate;
    external set indeterminate (bool val);
    external String get inputMode;
    external set inputMode (String val);
    external HTMLElement get list;
    external String get max;
    external set max (String val);
    external num get maxLength;
    external set maxLength (num val);
    external String get min;
    external set min (String val);
    external num get minLength;
    external set minLength (num val);
    external bool get multiple;
    external set multiple (bool val);
    external String get name;
    external set name (String val);
    external String get pattern;
    external set pattern (String val);
    external String get placeholder;
    external set placeholder (String val);
    external bool get readOnly;
    external set readOnly (bool val);
    external bool get required;
    external set required (bool val);
    external num get size;
    external set size (num val);
    external String get src;
    external set src (String val);
    external String get step;
    external set step (String val);
    external String get type;
    external set type (String val);
    external String get defaultValue;
    external set defaultValue (String val);
    external String get value;
    external set value (String val);
    external DateTime get valueAsDate;
    external set valueAsDate (DateTime val);
    external num get valueAsNumber;
    external set valueAsNumber (num val);
    external num get width;
    external set width (num val);
    external void stepUp([num n]);
    external void stepDown([num n]);
    external bool get willValidate;
    external ValidityState get validity;
    external String get validationMessage;
    external bool checkValidity();
    external bool reportValidity();
    external void setCustomValidity(String error);
    external void select();
    external num get selectionStart;
    external set selectionStart (num val);
    external num get selectionEnd;
    external set selectionEnd (num val);
    external String get selectionDirection;
    external set selectionDirection (String val);
    external void setRangeText(String replacement,[num start,num end,String selectionMode]);
    external String get align;
    external set align (String val);
    external String get useMap;
    external set useMap (String val);
    external void setSelectionRange(num start,num end,[String direction]);
    external nsIControllers get controllers;
    external num get textLength;
    external List<String> mozGetFileNameArray();
    external void mozSetFileNameArray(List<String> fileNames);
    external void mozSetFileArray(List<File> files);
    external void mozSetDirectory(String directoryPath);
    external void mozSetDndFilesAndDirectories(List<dynamic> list);
    external HTMLInputElement get ownerNumberControl;
    external bool mozIsTextField(bool aExcludePassword);
    external AutocompleteInfo getAutocompleteInfo();
    external nsIEditor get editor;
    external void setUserInput(String input);
    external bool get allowdirs;
    external set allowdirs (bool val);
    external bool get isFilesAndDirectoriesSupported;
    external Promise<List<dynamic>> getFilesAndDirectories();
    external Promise<List<File>> getFiles([bool recursiveFlag]);
    external void chooseDirectory();
    external bool get webkitdirectory;
    external set webkitdirectory (bool val);
    external DateTimeValue getDateTimeInputBoxValue();
    external void updateDateTimeInputBox([DateTimeValue value]);
    external void setDateTimePickerState(bool open);
    external void openDateTimePicker([DateTimeValue initialValue]);
    external void updateDateTimePicker([DateTimeValue value]);
    external void closeDateTimePicker();
}

@JS('HTMLLIElement')
abstract class HTMLLIElement implements HTMLElement {
    external num get value;
    external set value (num val);
    external String get type;
    external set type (String val);
}

@JS('HTMLLabelElement')
abstract class HTMLLabelElement implements HTMLElement {
    external HTMLFormElement get form;
    external String get htmlFor;
    external set htmlFor (String val);
    external HTMLElement get control;
}

@JS('HTMLLegendElement')
abstract class HTMLLegendElement implements HTMLElement {
    external HTMLFormElement get form;
    external String get align;
    external set align (String val);
}

@JS('HTMLLinkElement')
abstract class HTMLLinkElement implements HTMLElement,LinkStyle {
    external bool get disabled;
    external set disabled (bool val);
    external String get href;
    external set href (String val);
    external String get crossOrigin;
    external set crossOrigin (String val);
    external String get rel;
    external set rel (String val);
    external DOMTokenList get relList;
    external String get media;
    external set media (String val);
    external String get hreflang;
    external set hreflang (String val);
    external String get type;
    external set type (String val);
    external String get referrerPolicy;
    external set referrerPolicy (String val);
    external DOMTokenList get sizes;
    external String get charset;
    external set charset (String val);
    external String get rev;
    external set rev (String val);
    external String get target;
    external set target (String val);
    external Document get import;
    external String get integrity;
    external set integrity (String val);
}

@JS('HTMLMapElement')
abstract class HTMLMapElement implements HTMLElement {
    external String get name;
    external set name (String val);
    external HTMLCollection get areas;
}

@JS('HTMLMediaElement')
abstract class HTMLMediaElement implements HTMLElement {
    external MediaError get error;
    external String get src;
    external set src (String val);
    external String get currentSrc;
    external String get crossOrigin;
    external set crossOrigin (String val);
    external num get networkState;
    external String get preload;
    external set preload (String val);
    external TimeRanges get buffered;
    external void load();
    external String canPlayType(String type);
    external num get readyState;
    external bool get seeking;
    external num get currentTime;
    external set currentTime (num val);
    external void fastSeek(num time);
    external num get duration;
    external bool get isEncrypted;
    external bool get paused;
    external num get defaultPlaybackRate;
    external set defaultPlaybackRate (num val);
    external num get playbackRate;
    external set playbackRate (num val);
    external TimeRanges get played;
    external TimeRanges get seekable;
    external bool get ended;
    external bool get autoplay;
    external set autoplay (bool val);
    external bool get loop;
    external set loop (bool val);
    external Promise<dynamic> play();
    external void pause();
    external bool get controls;
    external set controls (bool val);
    external num get volume;
    external set volume (num val);
    external bool get muted;
    external set muted (bool val);
    external bool get defaultMuted;
    external set defaultMuted (bool val);
    external AudioTrackList get audioTracks;
    external VideoTrackList get videoTracks;
    external TextTrackList get textTracks;
    external TextTrack addTextTrack(String kind,[String label,String language]);
    external MediaSource get mozMediaSourceObject;
    external String get mozDebugReaderData;
    external Promise<String> mozRequestDebugInfo();
    external void mozDumpDebugInfo();
    external MediaStream get srcObject;
    external set srcObject (MediaStream val);
    external MediaStream get mozSrcObject;
    external set mozSrcObject (MediaStream val);
    external bool get mozPreservesPitch;
    external set mozPreservesPitch (bool val);
    external bool get mozAutoplayEnabled;
    external bool get mozAllowCasting;
    external set mozAllowCasting (bool val);
    external bool get mozIsCasting;
    external set mozIsCasting (bool val);
    external MediaStream mozCaptureStream();
    external MediaStream mozCaptureStreamUntilEnded();
    external bool get mozAudioCaptured;
    external Object mozGetMetadata();
    external num get mozFragmentEnd;
    external String get mozAudioChannelType;
    external set mozAudioChannelType (String val);
    external EventHandlerNonNull get onmozinterruptbegin;
    external set onmozinterruptbegin (EventHandlerNonNull val);
    external EventHandlerNonNull get onmozinterruptend;
    external set onmozinterruptend (EventHandlerNonNull val);
    external MediaKeys get mediaKeys;
    external Promise<dynamic> setMediaKeys(MediaKeys mediaKeys);
    external EventHandlerNonNull get onencrypted;
    external set onencrypted (EventHandlerNonNull val);
    external EventHandlerNonNull get onwaitingforkey;
    external set onwaitingforkey (EventHandlerNonNull val);
    external num get computedVolume;
    external bool get computedMuted;
    external num get computedSuspended;
    external Promise<dynamic> seekToNextFrame();
    external void setVisible(bool aVisible);
}

@JS('HTMLMenuElement')
abstract class HTMLMenuElement implements HTMLElement {
    external String get type;
    external set type (String val);
    external String get label;
    external set label (String val);
    external bool get compact;
    external set compact (bool val);
    external void sendShowEvent();
    external MenuBuilder createBuilder();
    external void build(MenuBuilder aBuilder);
}

@JS('HTMLMenuItemElement')
abstract class HTMLMenuItemElement implements HTMLElement {
    external String get type;
    external set type (String val);
    external String get label;
    external set label (String val);
    external String get icon;
    external set icon (String val);
    external bool get disabled;
    external set disabled (bool val);
    external bool get checked;
    external set checked (bool val);
    external String get radiogroup;
    external set radiogroup (String val);
    external bool get defaultChecked;
    external set defaultChecked (bool val);
}

@JS('HTMLMetaElement')
abstract class HTMLMetaElement implements HTMLElement {
    external String get name;
    external set name (String val);
    external String get httpEquiv;
    external set httpEquiv (String val);
    external String get content;
    external set content (String val);
    external String get scheme;
    external set scheme (String val);
}

@JS('HTMLMeterElement')
abstract class HTMLMeterElement implements HTMLElement {
    external num get value;
    external set value (num val);
    external num get min;
    external set min (num val);
    external num get max;
    external set max (num val);
    external num get low;
    external set low (num val);
    external num get high;
    external set high (num val);
    external num get optimum;
    external set optimum (num val);
}

@JS('HTMLModElement')
abstract class HTMLModElement implements HTMLElement {
    external String get cite;
    external set cite (String val);
    external String get dateTime;
    external set dateTime (String val);
}

@JS('HTMLOListElement')
abstract class HTMLOListElement implements HTMLElement {
    external bool get reversed;
    external set reversed (bool val);
    external num get start;
    external set start (num val);
    external String get type;
    external set type (String val);
    external bool get compact;
    external set compact (bool val);
}

@JS('HTMLObjectElement')
abstract class HTMLObjectElement implements HTMLElement {
    external String get data;
    external set data (String val);
    external String get type;
    external set type (String val);
    external bool get typeMustMatch;
    external set typeMustMatch (bool val);
    external String get name;
    external set name (String val);
    external String get useMap;
    external set useMap (String val);
    external HTMLFormElement get form;
    external String get width;
    external set width (String val);
    external String get height;
    external set height (String val);
    external Document get contentDocument;
    external WindowProxy get contentWindow;
    external bool get willValidate;
    external ValidityState get validity;
    external String get validationMessage;
    external bool checkValidity();
    external bool reportValidity();
    external void setCustomValidity(String error);
    external String get align;
    external set align (String val);
    external String get archive;
    external set archive (String val);
    external String get code;
    external set code (String val);
    external bool get declare;
    external set declare (bool val);
    external num get hspace;
    external set hspace (num val);
    external String get standby;
    external set standby (String val);
    external num get vspace;
    external set vspace (num val);
    external String get codeBase;
    external set codeBase (String val);
    external String get codeType;
    external set codeType (String val);
    external String get border;
    external set border (String val);
    external Document getSVGDocument();
}

@JS('HTMLOptGroupElement')
abstract class HTMLOptGroupElement implements HTMLElement {
    external bool get disabled;
    external set disabled (bool val);
    external String get label;
    external set label (String val);
}

@JS('HTMLOptionElement')
abstract class HTMLOptionElement implements HTMLElement {
    external bool get disabled;
    external set disabled (bool val);
    external HTMLFormElement get form;
    external String get label;
    external set label (String val);
    external bool get defaultSelected;
    external set defaultSelected (bool val);
    external bool get selected;
    external set selected (bool val);
    external String get value;
    external set value (String val);
    external String get text;
    external set text (String val);
    external num get index;
}

@JS('HTMLOptionsCollection')
abstract class HTMLOptionsCollection implements HTMLCollection {
    external num get length;
    external set length (num val);
    external void operator[]=(num index,HTMLOptionElement option);
    external void add(var element,[var before]);
    external void remove(num index);
    external num get selectedIndex;
    external set selectedIndex (num val);
}

@JS('HTMLOutputElement')
abstract class HTMLOutputElement implements HTMLElement {
    external DOMTokenList get htmlFor;
    external HTMLFormElement get form;
    external String get name;
    external set name (String val);
    external String get type;
    external String get defaultValue;
    external set defaultValue (String val);
    external String get value;
    external set value (String val);
    external bool get willValidate;
    external ValidityState get validity;
    external String get validationMessage;
    external bool checkValidity();
    external bool reportValidity();
    external void setCustomValidity(String error);
}

@JS('HTMLParagraphElement')
abstract class HTMLParagraphElement implements HTMLElement {
    external String get align;
    external set align (String val);
}

@JS('HTMLParamElement')
abstract class HTMLParamElement implements HTMLElement {
    external String get name;
    external set name (String val);
    external String get value;
    external set value (String val);
    external String get type;
    external set type (String val);
    external String get valueType;
    external set valueType (String val);
}

@JS('HTMLPictureElement')
abstract class HTMLPictureElement implements HTMLElement {
}

@JS('HTMLPreElement')
abstract class HTMLPreElement implements HTMLElement {
    external num get width;
    external set width (num val);
}

@JS('HTMLProgressElement')
abstract class HTMLProgressElement implements HTMLElement {
    external num get value;
    external set value (num val);
    external num get max;
    external set max (num val);
    external num get position;
}

@JS('HTMLQuoteElement')
abstract class HTMLQuoteElement implements HTMLElement {
    external String get cite;
    external set cite (String val);
}

@JS('HTMLScriptElement')
abstract class HTMLScriptElement implements HTMLElement {
    external String get src;
    external set src (String val);
    external String get type;
    external set type (String val);
    external String get charset;
    external set charset (String val);
    external bool get async;
    external set async (bool val);
    external bool get defer;
    external set defer (bool val);
    external String get crossOrigin;
    external set crossOrigin (String val);
    external String get text;
    external set text (String val);
    external String get event;
    external set event (String val);
    external String get htmlFor;
    external set htmlFor (String val);
    external String get integrity;
    external set integrity (String val);
}

@JS('HTMLSelectElement')
abstract class HTMLSelectElement implements HTMLElement {
    external bool get autofocus;
    external set autofocus (bool val);
    external String get autocomplete;
    external set autocomplete (String val);
    external bool get disabled;
    external set disabled (bool val);
    external HTMLFormElement get form;
    external bool get multiple;
    external set multiple (bool val);
    external String get name;
    external set name (String val);
    external bool get required;
    external set required (bool val);
    external num get size;
    external set size (num val);
    external String get type;
    external HTMLOptionsCollection get options;
    external num get length;
    external set length (num val);
    external Element operator[](num index);
    external HTMLOptionElement namedItem(String name);
    external void add(var element,[var before]);
    external void operator[]=(num index,HTMLOptionElement option);
    external HTMLCollection get selectedOptions;
    external num get selectedIndex;
    external set selectedIndex (num val);
    external String get value;
    external set value (String val);
    external bool get willValidate;
    external ValidityState get validity;
    external String get validationMessage;
    external bool checkValidity();
    external bool reportValidity();
    external void setCustomValidity(String error);
    external bool get openInParentProcess;
    external set openInParentProcess (bool val);
}

@JS('HTMLShadowElement')
abstract class HTMLShadowElement implements HTMLElement {
    external ShadowRoot get olderShadowRoot;
}

@JS('HTMLSlotElement')
abstract class HTMLSlotElement implements HTMLElement {
    external String get name;
    external set name (String val);
    external List<Node> assignedNodes([AssignedNodesOptions options]);
}

@JS('HTMLSourceElement')
abstract class HTMLSourceElement implements HTMLElement {
    external String get src;
    external set src (String val);
    external String get type;
    external set type (String val);
    external String get srcset;
    external set srcset (String val);
    external String get sizes;
    external set sizes (String val);
    external String get media;
    external set media (String val);
}

@JS('HTMLSpanElement')
abstract class HTMLSpanElement implements HTMLElement {
}

@JS('HTMLStyleElement')
abstract class HTMLStyleElement implements HTMLElement,LinkStyle {
    external bool get disabled;
    external set disabled (bool val);
    external String get media;
    external set media (String val);
    external String get type;
    external set type (String val);
    external bool get scoped;
    external set scoped (bool val);
}

@JS('HTMLTableCaptionElement')
abstract class HTMLTableCaptionElement implements HTMLElement {
    external String get align;
    external set align (String val);
}

@JS('HTMLTableCellElement')
abstract class HTMLTableCellElement implements HTMLElement {
    external num get colSpan;
    external set colSpan (num val);
    external num get rowSpan;
    external set rowSpan (num val);
    external String get headers;
    external set headers (String val);
    external num get cellIndex;
    external String get abbr;
    external set abbr (String val);
    external String get scope;
    external set scope (String val);
    external String get align;
    external set align (String val);
    external String get axis;
    external set axis (String val);
    external String get height;
    external set height (String val);
    external String get width;
    external set width (String val);
    external String get ch;
    external set ch (String val);
    external String get chOff;
    external set chOff (String val);
    external bool get noWrap;
    external set noWrap (bool val);
    external String get vAlign;
    external set vAlign (String val);
    external String get bgColor;
    external set bgColor (String val);
}

@JS('HTMLTableColElement')
abstract class HTMLTableColElement implements HTMLElement {
    external num get span;
    external set span (num val);
    external String get align;
    external set align (String val);
    external String get ch;
    external set ch (String val);
    external String get chOff;
    external set chOff (String val);
    external String get vAlign;
    external set vAlign (String val);
    external String get width;
    external set width (String val);
}

@JS('HTMLTableElement')
abstract class HTMLTableElement implements HTMLElement {
    external HTMLTableCaptionElement get caption;
    external set caption (HTMLTableCaptionElement val);
    external HTMLElement createCaption();
    external void deleteCaption();
    external HTMLTableSectionElement get tHead;
    external set tHead (HTMLTableSectionElement val);
    external HTMLElement createTHead();
    external void deleteTHead();
    external HTMLTableSectionElement get tFoot;
    external set tFoot (HTMLTableSectionElement val);
    external HTMLElement createTFoot();
    external void deleteTFoot();
    external HTMLCollection get tBodies;
    external HTMLElement createTBody();
    external HTMLCollection get rows;
    external HTMLElement insertRow([num index]);
    external void deleteRow(num index);
    external String get align;
    external set align (String val);
    external String get border;
    external set border (String val);
    external String get frame;
    external set frame (String val);
    external String get rules;
    external set rules (String val);
    external String get summary;
    external set summary (String val);
    external String get width;
    external set width (String val);
    external String get bgColor;
    external set bgColor (String val);
    external String get cellPadding;
    external set cellPadding (String val);
    external String get cellSpacing;
    external set cellSpacing (String val);
}

@JS('HTMLTableRowElement')
abstract class HTMLTableRowElement implements HTMLElement {
    external num get rowIndex;
    external num get sectionRowIndex;
    external HTMLCollection get cells;
    external HTMLElement insertCell([num index]);
    external void deleteCell(num index);
    external String get align;
    external set align (String val);
    external String get ch;
    external set ch (String val);
    external String get chOff;
    external set chOff (String val);
    external String get vAlign;
    external set vAlign (String val);
    external String get bgColor;
    external set bgColor (String val);
}

@JS('HTMLTableSectionElement')
abstract class HTMLTableSectionElement implements HTMLElement {
    external HTMLCollection get rows;
    external HTMLElement insertRow([num index]);
    external void deleteRow(num index);
    external String get align;
    external set align (String val);
    external String get ch;
    external set ch (String val);
    external String get chOff;
    external set chOff (String val);
    external String get vAlign;
    external set vAlign (String val);
}

@JS('HTMLTemplateElement')
abstract class HTMLTemplateElement implements HTMLElement {
    external DocumentFragment get content;
}

@JS('HTMLTextAreaElement')
abstract class HTMLTextAreaElement implements HTMLElement {
    external bool get autofocus;
    external set autofocus (bool val);
    external num get cols;
    external set cols (num val);
    external bool get disabled;
    external set disabled (bool val);
    external HTMLFormElement get form;
    external num get maxLength;
    external set maxLength (num val);
    external num get minLength;
    external set minLength (num val);
    external String get name;
    external set name (String val);
    external String get placeholder;
    external set placeholder (String val);
    external bool get readOnly;
    external set readOnly (bool val);
    external bool get required;
    external set required (bool val);
    external num get rows;
    external set rows (num val);
    external String get wrap;
    external set wrap (String val);
    external String get type;
    external String get defaultValue;
    external set defaultValue (String val);
    external String get value;
    external set value (String val);
    external num get textLength;
    external bool get willValidate;
    external ValidityState get validity;
    external String get validationMessage;
    external bool checkValidity();
    external bool reportValidity();
    external void setCustomValidity(String error);
    external void select();
    external num get selectionStart;
    external set selectionStart (num val);
    external num get selectionEnd;
    external set selectionEnd (num val);
    external String get selectionDirection;
    external set selectionDirection (String val);
    external void setRangeText(String replacement,[num start,num end,String selectionMode]);
    external void setSelectionRange(num start,num end,[String direction]);
    external MozControllers get controllers;
    external nsIEditor get editor;
    external void setUserInput(String input);
}

@JS('HTMLTimeElement')
abstract class HTMLTimeElement implements HTMLElement {
    external String get dateTime;
    external set dateTime (String val);
}

@JS('HTMLTitleElement')
abstract class HTMLTitleElement implements HTMLElement {
    external String get text;
    external set text (String val);
}

@JS('HTMLTrackElement')
abstract class HTMLTrackElement implements HTMLElement {
    external String get kind;
    external set kind (String val);
    external String get src;
    external set src (String val);
    external String get srclang;
    external set srclang (String val);
    external String get label;
    external set label (String val);
    external bool get JS$default;
    @JS('default')
    external set JS$default (bool val);
    external num get readyState;
    external TextTrack get track;
}

@JS('HTMLUListElement')
abstract class HTMLUListElement implements HTMLElement {
    external bool get compact;
    external set compact (bool val);
    external String get type;
    external set type (String val);
}

@JS('HTMLUnknownElement')
abstract class HTMLUnknownElement implements HTMLElement {
}

@JS('HTMLVideoElement')
abstract class HTMLVideoElement implements HTMLMediaElement {
    external num get width;
    external set width (num val);
    external num get height;
    external set height (num val);
    external num get videoWidth;
    external num get videoHeight;
    external String get poster;
    external set poster (String val);
    external num get mozParsedFrames;
    external num get mozDecodedFrames;
    external num get mozPresentedFrames;
    external num get mozPaintedFrames;
    external num get mozFrameDelay;
    external bool get mozHasAudio;
    external bool get mozUseScreenWakeLock;
    external set mozUseScreenWakeLock (bool val);
    external VideoPlaybackQuality getVideoPlaybackQuality();
}

@JS('Headers')
abstract class Headers {
    external factory Headers([var init]);
    external void append(String name,String value);
    external void delete(String name);
    external String get(String name);
    external bool has(String name);
    external void set(String name,String value);
    external String get guard;
    external set guard (String val);
}

@JS('History')
abstract class History {
    external num get length;
    external String get scrollRestoration;
    external set scrollRestoration (String val);
    external  get state;
    external void go([num delta]);
    external void back();
    external void forward();
    external void pushState(var data,String title,[String url]);
    external void replaceState(var data,String title,[String url]);
}

typedef void IdleRequestCallback(IdleDeadline deadline);

@JS()
@anonymous
class IdleRequestOptions {
    external num get timeout;
    external set timeout (num val);
}

@JS('ImageBitmap')
abstract class ImageBitmap {
    external num get width;
    external num get height;
    external void close();
    external String findOptimalFormat([List<String> aPossibleFormats]);
    external num mappedDataLength(String aFormat);
    external Promise<List<ChannelPixelLayout>> mapDataInto(String aFormat,BufferSource aBuffer,num aOffset);
}

@JS('KeyEvent')
abstract class KeyEvent {
    external void initKeyEvent(String type,bool canBubble,bool cancelable,Window view,bool ctrlKey,bool altKey,bool shiftKey,bool metaKey,num keyCode,num charCode);
}

@JS('KeyboardEvent')
abstract class KeyboardEvent implements UIEvent,KeyEvent {
    external factory KeyboardEvent(String typeArg,[KeyboardEventInit keyboardEventInitDict]);
    external num get charCode;
    external num get keyCode;
    external bool get altKey;
    external bool get ctrlKey;
    external bool get shiftKey;
    external bool get metaKey;
    external bool getModifierState(String key);
    external num get location;
    external bool get repeat;
    external bool get isComposing;
    external String get key;
    external String get code;
    external KeyboardEventInit get initDict;
}

@JS()
@anonymous
class KeyboardEventInit extends EventModifierInit {
    external String get key;
    external set key (String val);
    external String get code;
    external set code (String val);
    external num get location;
    external set location (num val);
    external bool get repeat;
    external set repeat (bool val);
    external bool get isComposing;
    external set isComposing (bool val);
    external num get charCode;
    external set charCode (num val);
    external num get keyCode;
    external set keyCode (num val);
    external num get which;
    external set which (num val);
}

@JS()
@anonymous
class KeyframeAnimationOptions extends KeyframeEffectOptions {
    external String get id;
    external set id (String val);
}

@JS('KeyframeEffect')
abstract class KeyframeEffect implements KeyframeEffectReadOnly {
    external factory KeyframeEffect(var target,Object keyframes,[var options]);
    external  get target;
    external set target (var val);
    external String get iterationComposite;
    external set iterationComposite (String val);
    external String get composite;
    external set composite (String val);
    external String get spacing;
    external set spacing (String val);
    external void setKeyframes(Object keyframes);
}

@JS()
@anonymous
class KeyframeEffectOptions extends AnimationEffectTimingProperties {
    external String get iterationComposite;
    external set iterationComposite (String val);
    external String get composite;
    external set composite (String val);
    external String get spacing;
    external set spacing (String val);
}

@JS('KeyframeEffectReadOnly')
abstract class KeyframeEffectReadOnly implements AnimationEffectReadOnly {
    external factory KeyframeEffectReadOnly(var target,Object keyframes,[var options]);
    external  get target;
    external String get iterationComposite;
    external String get composite;
    external String get spacing;
    external List<Object> getKeyframes();
    external List<AnimationPropertyDetails> getProperties();
}

typedef void LifecycleAttachedCallback();

typedef void LifecycleAttributeChangedCallback(String attrName,String oldValue,String newValue);

@JS()
@anonymous
class LifecycleCallbacks {
    external LifecycleCreatedCallback get createdCallback;
    external set createdCallback (LifecycleCreatedCallback val);
    external LifecycleAttachedCallback get attachedCallback;
    external set attachedCallback (LifecycleAttachedCallback val);
    external LifecycleDetachedCallback get detachedCallback;
    external set detachedCallback (LifecycleDetachedCallback val);
    external LifecycleAttributeChangedCallback get attributeChangedCallback;
    external set attributeChangedCallback (LifecycleAttributeChangedCallback val);
}

typedef void LifecycleCreatedCallback();

typedef void LifecycleDetachedCallback();

@JS('LinkStyle')
abstract class LinkStyle {
    external StyleSheet get sheet;
}

@JS('Location')
abstract class Location {
    external String get href;
    external set href (String val);
    external String get origin;
    external String get protocol;
    external set protocol (String val);
    external String get host;
    external set host (String val);
    external String get hostname;
    external set hostname (String val);
    external String get port;
    external set port (String val);
    external String get pathname;
    external set pathname (String val);
    external String get search;
    external set search (String val);
    external String get hash;
    external set hash (String val);
    external void assign(String url);
    external void replace(String url);
    external void reload([bool forceget]);
}

@JS('MediaError')
abstract class MediaError {
    external num get code;
    external String get message;
}

@JS('MediaKeyError')
abstract class MediaKeyError implements Event {
    external num get systemCode;
}

@JS('MediaKeySession')
abstract class MediaKeySession implements EventTarget {
    external MediaKeyError get error;
    external String get sessionId;
    external num get expiration;
    external Promise<dynamic> get closed;
    external MediaKeyStatusMap get keyStatuses;
    external EventHandlerNonNull get onkeystatuseschange;
    external set onkeystatuseschange (EventHandlerNonNull val);
    external EventHandlerNonNull get onmessage;
    external set onmessage (EventHandlerNonNull val);
    external Promise<dynamic> generateRequest(String initDataType,BufferSource initData);
    external Promise<bool> load(String sessionId);
    external Promise<dynamic> update(BufferSource response);
    external Promise<dynamic> close();
    external Promise<dynamic> remove();
}

@JS('MediaKeyStatusMap')
abstract class MediaKeyStatusMap {
    external num get size;
    external bool has(BufferSource keyId);
    external  get(BufferSource keyId);
}

@JS('MediaKeys')
abstract class MediaKeys {
    external String get keySystem;
    external MediaKeySession createSession([String sessionType]);
    external Promise<dynamic> setServerCertificate(BufferSource serverCertificate);
}

@JS('MediaList')
abstract class MediaList {
    external String get mediaText;
    external set mediaText (String val);
    external num get length;
    external String operator[](num index);
    external void deleteMedium(String oldMedium);
    external void appendMedium(String newMedium);
}

@JS('MediaQueryList')
abstract class MediaQueryList {
    external String get media;
    external bool get matches;
    external void addListener(MediaQueryListListener listener);
    external void removeListener(MediaQueryListListener listener);
}

typedef void MediaQueryListListener(MediaQueryList list);

@JS('MediaSource')
abstract class MediaSource implements EventTarget {
    external factory MediaSource();
    external SourceBufferList get sourceBuffers;
    external SourceBufferList get activeSourceBuffers;
    external String get readyState;
    external num get duration;
    external set duration (num val);
    external EventHandlerNonNull get onsourceopen;
    external set onsourceopen (EventHandlerNonNull val);
    external EventHandlerNonNull get onsourceended;
    external set onsourceended (EventHandlerNonNull val);
    external EventHandlerNonNull get onsourceclosed;
    external set onsourceclosed (EventHandlerNonNull val);
    external SourceBuffer addSourceBuffer(String type);
    external void removeSourceBuffer(SourceBuffer sourceBuffer);
    external void endOfStream([String error]);
    external void setLiveSeekableRange(num start,num end);
    external void clearLiveSeekableRange();
    external bool isTypeSupported(String type);
    external String get mozDebugReaderData;
}

@JS('MessagePort')
abstract class MessagePort implements EventTarget {
    external void postMessage(var message,[List<Object> transferable]);
    external void start();
    external void close();
    external EventHandlerNonNull get onmessage;
    external set onmessage (EventHandlerNonNull val);
}

@JS('MouseEvent')
abstract class MouseEvent implements UIEvent {
    external factory MouseEvent(String typeArg,[MouseEventInit mouseEventInitDict]);
    external num get screenX;
    external num get screenY;
    external num get clientX;
    external num get clientY;
    external num get x;
    external num get y;
    external num get offsetX;
    external num get offsetY;
    external bool get ctrlKey;
    external bool get shiftKey;
    external bool get altKey;
    external bool get metaKey;
    external num get button;
    external num get buttons;
    external EventTarget get relatedTarget;
    external String get region;
    external num get movementX;
    external num get movementY;
    external void initMouseEvent(String typeArg,bool canBubbleArg,bool cancelableArg,Window viewArg,num detailArg,num screenXArg,num screenYArg,num clientXArg,num clientYArg,bool ctrlKeyArg,bool altKeyArg,bool shiftKeyArg,bool metaKeyArg,num buttonArg,EventTarget relatedTargetArg);
    external bool getModifierState(String keyArg);
    external num get mozPressure;
    external num get mozInputSource;
    external void initNSMouseEvent(String typeArg,bool canBubbleArg,bool cancelableArg,Window viewArg,num detailArg,num screenXArg,num screenYArg,num clientXArg,num clientYArg,bool ctrlKeyArg,bool altKeyArg,bool shiftKeyArg,bool metaKeyArg,num buttonArg,EventTarget relatedTargetArg,num pressure,num inputSourceArg);
    external bool get hitCluster;
}

@JS()
@anonymous
class MouseEventInit extends EventModifierInit {
    external num get screenX;
    external set screenX (num val);
    external num get screenY;
    external set screenY (num val);
    external num get clientX;
    external set clientX (num val);
    external num get clientY;
    external set clientY (num val);
    external num get button;
    external set button (num val);
    external num get buttons;
    external set buttons (num val);
    external EventTarget get relatedTarget;
    external set relatedTarget (EventTarget val);
    external num get movementX;
    external set movementX (num val);
    external num get movementY;
    external set movementY (num val);
}

@JS('MozCanvasPrintState')
abstract class MozCanvasPrintState {
    external nsISupports get context;
    external void done();
}

@JS('MozImageLoadingContent')
abstract class MozImageLoadingContent {
    external bool get loadingEnabled;
    external set loadingEnabled (bool val);
    external num get imageBlockingStatus;
    external void addObserver(imgINotificationObserver aObserver);
    external void removeObserver(imgINotificationObserver aObserver);
    external imgIRequest getRequest(num aRequestType);
    external num getRequestType(imgIRequest aRequest);
    external URI get currentURI;
    external void forceReload([bool aNotify]);
    external void forceImageState(bool aForce,num aState);
}

@JS('MozObjectLoadingContent')
abstract class MozObjectLoadingContent {
    external String get actualType;
    external num get displayedType;
    external num getContentTypeForMIMEType(String aMimeType);
    external List<MozPluginParameter> getPluginAttributes();
    external List<MozPluginParameter> getPluginParameters();
    external void playPlugin();
    external void reload(bool aClearActivation);
    external bool get activated;
    external URI get srcURI;
    external num get defaultFallbackType;
    external num get pluginFallbackType;
    external bool get hasRunningPlugin;
    external num get runID;
}

@JS('MozPhonetic')
abstract class MozPhonetic {
    external String get phonetic;
}

@JS()
@anonymous
class MozPluginParameter {
    external String get name;
    external set name (String val);
    external String get value;
    external set value (String val);
}

@JS()
@anonymous
class MozXMLHttpRequestParameters {
    external bool get mozAnon;
    external set mozAnon (bool val);
    external bool get mozSystem;
    external set mozSystem (bool val);
}

typedef void MutationCallback(List<MutationRecord> mutations,MutationObserver observer);

@JS('MutationObserver')
abstract class MutationObserver {
    external factory MutationObserver(MutationCallback mutationCallback);
    external void observe(Node target,[MutationObserverInit options]);
    external void disconnect();
    external List<MutationRecord> takeRecords();
    external List<MutationObservingInfo> getObservingInfo();
    external MutationCallback get mutationCallback;
    external bool get mergeAttributeRecords;
    external set mergeAttributeRecords (bool val);
}

@JS()
@anonymous
class MutationObserverInit {
    external bool get childList;
    external set childList (bool val);
    external bool get attributes;
    external set attributes (bool val);
    external bool get characterData;
    external set characterData (bool val);
    external bool get subtree;
    external set subtree (bool val);
    external bool get attributeOldValue;
    external set attributeOldValue (bool val);
    external bool get characterDataOldValue;
    external set characterDataOldValue (bool val);
    external bool get nativeAnonymousChildList;
    external set nativeAnonymousChildList (bool val);
    external bool get animations;
    external set animations (bool val);
    external List<String> get attributeFilter;
    external set attributeFilter (List<String> val);
}

@JS()
@anonymous
class MutationObservingInfo extends MutationObserverInit {
    external Node get observedNode;
    external set observedNode (Node val);
}

@JS('MutationRecord')
abstract class MutationRecord {
    external String get type;
    external Node get target;
    external NodeList get addedNodes;
    external NodeList get removedNodes;
    external Node get previousSibling;
    external Node get nextSibling;
    external String get attributeName;
    external String get attributeNamespace;
    external String get oldValue;
}

@JS('NamedNodeMap')
abstract class NamedNodeMap {
    external Attr operator[](String name);
    external Attr setNamedItem(Attr arg);
    external Attr removeNamedItem(String name);
    external num get length;
    external Attr getNamedItemNS(String namespaceURI,String localName);
    external Attr setNamedItemNS(Attr arg);
    external Attr removeNamedItemNS(String namespaceURI,String localName);
}

@JS('NetworkInformation')
abstract class NetworkInformation implements EventTarget {
    external String get type;
    external EventHandlerNonNull get ontypechange;
    external set ontypechange (EventHandlerNonNull val);
}

@JS('Node')
abstract class Node implements EventTarget {
    external num get nodeType;
    external String get nodeName;
    external String get baseURI;
    external bool get isConnected;
    external Document get ownerDocument;
    external Node getRootNode([GetRootNodeOptions options]);
    external Node get parentNode;
    external Element get parentElement;
    external bool hasChildNodes();
    external NodeList get childNodes;
    external Node get firstChild;
    external Node get lastChild;
    external Node get previousSibling;
    external Node get nextSibling;
    external String get nodeValue;
    external set nodeValue (String val);
    external String get textContent;
    external set textContent (String val);
    external Node insertBefore(Node node,Node child);
    external Node appendChild(Node node);
    external Node replaceChild(Node node,Node child);
    external Node removeChild(Node child);
    external void normalize();
    external Node cloneNode([bool deep]);
    external bool isSameNode(Node node);
    external bool isEqualNode(Node node);
    external num compareDocumentPosition(Node other);
    external bool contains(Node other);
    external String lookupPrefix(String namespace);
    external String lookupNamespaceURI(String prefix);
    external bool isDefaultNamespace(String namespace);
    external  setUserData(String key,var data);
    external  getUserData(String key);
    external Principal get nodePrincipal;
    external URI get baseURIObject;
    external List<MutationObserver> getBoundMutationObservers();
}

@JS('NodeIterator')
abstract class NodeIterator {
    external Node get root;
    external Node get referenceNode;
    external bool get pointerBeforeReferenceNode;
    external num get whatToShow;
    external NodeFilter get filter;
    external Node nextNode();
    external Node previousNode();
    external void detach();
}

@JS('NodeList')
abstract class NodeList {
    external Node operator[](num index);
    external num get length;
}

@JS('NonDocumentTypeChildNode')
abstract class NonDocumentTypeChildNode {
    external Element get previousElementSibling;
    external Element get nextElementSibling;
}

@JS('Notification')
abstract class Notification implements EventTarget {
    external factory Notification(String title,[NotificationOptions options]);
    external String get permission;
    external Promise<String> requestPermission([NotificationPermissionCallback permissionCallback]);
    external Promise<List<Notification>> get([GetNotificationOptions filter]);
    external EventHandlerNonNull get onclick;
    external set onclick (EventHandlerNonNull val);
    external EventHandlerNonNull get onshow;
    external set onshow (EventHandlerNonNull val);
    external EventHandlerNonNull get onerror;
    external set onerror (EventHandlerNonNull val);
    external EventHandlerNonNull get onclose;
    external set onclose (EventHandlerNonNull val);
    external String get title;
    external String get dir;
    external String get lang;
    external String get body;
    external String get tag;
    external String get icon;
    external bool get requireInteraction;
    external  get data;
    external void close();
}

@JS()
@anonymous
class NotificationBehavior {
    external bool get noscreen;
    external set noscreen (bool val);
    external bool get noclear;
    external set noclear (bool val);
    external bool get showOnlyOnce;
    external set showOnlyOnce (bool val);
    external String get soundFile;
    external set soundFile (String val);
    external List<num> get vibrationPattern;
    external set vibrationPattern (List<num> val);
}

@JS()
@anonymous
class NotificationOptions {
    external String get dir;
    external set dir (String val);
    external String get lang;
    external set lang (String val);
    external String get body;
    external set body (String val);
    external String get tag;
    external set tag (String val);
    external String get icon;
    external set icon (String val);
    external bool get requireInteraction;
    external set requireInteraction (bool val);
    external  get data;
    external set data (var val);
    external NotificationBehavior get mozbehavior;
    external set mozbehavior (NotificationBehavior val);
}

typedef void NotificationPermissionCallback(String permission);

@JS('OffscreenCanvas')
abstract class OffscreenCanvas implements EventTarget {
    external factory OffscreenCanvas(num width,num height);
    external num get width;
    external set width (num val);
    external num get height;
    external set height (num val);
    external nsISupports getContext(String contextId,[var contextOptions]);
    external ImageBitmap transferToImageBitmap();
    external Promise<Blob> toBlob([String type,var encoderOptions]);
}

typedef String OnBeforeUnloadEventHandlerNonNull(Event event);

@JS('OnErrorEventHandlerForNodes')
abstract class OnErrorEventHandlerForNodes {
    external EventHandlerNonNull get onerror;
    external set onerror (EventHandlerNonNull val);
}

@JS('OnErrorEventHandlerForWindow')
abstract class OnErrorEventHandlerForWindow {
    external OnErrorEventHandlerNonNull get onerror;
    external set onerror (OnErrorEventHandlerNonNull val);
}

typedef  OnErrorEventHandlerNonNull(var event,[String source,num lineno,num column,var error]);

@JS('ParentNode')
abstract class ParentNode {
    external HTMLCollection get children;
    external Element get firstElementChild;
    external Element get lastElementChild;
    external num get childElementCount;
    external void prepend(var nodes);
    external void append(var nodes);
}

@JS('Principal')
abstract class Principal {
}

typedef void PrintCallback(MozCanvasPrintState ctx);

@JS('ProcessingInstruction')
abstract class ProcessingInstruction implements CharacterData {
    external String get target;
}

@JS('ProgressEvent')
abstract class ProgressEvent implements Event {
    external factory ProgressEvent(String type,[ProgressEventInit eventInitDict]);
    external bool get lengthComputable;
    external num get loaded;
    external num get total;
}

@JS()
@anonymous
class ProgressEventInit extends EventInit {
    external bool get lengthComputable;
    external set lengthComputable (bool val);
    external num get loaded;
    external set loaded (num val);
    external num get total;
    external set total (num val);
}

typedef void PromiseJobCallback();

@JS('PromiseNativeHandler')
abstract class PromiseNativeHandler {
}

@JS('PushManager')
abstract class PushManager {
    external Promise<PushSubscription> subscribe([PushSubscriptionOptionsInit options]);
    external Promise<PushSubscription> getSubscription();
    external Promise<String> permissionState([PushSubscriptionOptionsInit options]);
}

@JS('PushManagerImpl')
abstract class PushManagerImpl {
    external factory PushManagerImpl(String scope);
    external Promise<PushSubscription> subscribe([PushSubscriptionOptionsInit options]);
    external Promise<PushSubscription> getSubscription();
    external Promise<String> permissionState([PushSubscriptionOptionsInit options]);
}

@JS('PushSubscription')
abstract class PushSubscription {
    external String get endpoint;
    external PushSubscriptionOptions get options;
    external ArrayBuffer getKey(String name);
    external Promise<bool> unsubscribe();
    external PushSubscriptionJSON toJSON();
}

@JS()
@anonymous
class PushSubscriptionInit {
    external String get endpoint;
    external set endpoint (String val);
    external String get scope;
    external set scope (String val);
    external ArrayBuffer get p256dhKey;
    external set p256dhKey (ArrayBuffer val);
    external ArrayBuffer get authSecret;
    external set authSecret (ArrayBuffer val);
    external BufferSource get appServerKey;
    external set appServerKey (BufferSource val);
}

@JS()
@anonymous
class PushSubscriptionJSON {
    external String get endpoint;
    external set endpoint (String val);
    external PushSubscriptionKeys get keys;
    external set keys (PushSubscriptionKeys val);
}

@JS()
@anonymous
class PushSubscriptionKeys {
    external String get p256dh;
    external set p256dh (String val);
    external String get auth;
    external set auth (String val);
}

@JS('PushSubscriptionOptions')
abstract class PushSubscriptionOptions {
    external ArrayBuffer get applicationServerKey;
}

@JS()
@anonymous
class PushSubscriptionOptionsInit {
    external  get applicationServerKey;
    external set applicationServerKey (var val);
}

@JS('RGBColor')
abstract class RGBColor {
    external CSSPrimitiveValue get red;
    external CSSPrimitiveValue get green;
    external CSSPrimitiveValue get blue;
    external CSSPrimitiveValue get alpha;
}

@JS('Range')
abstract class Range {
    external factory Range();
    external Node get startContainer;
    external num get startOffset;
    external Node get endContainer;
    external num get endOffset;
    external bool get collapsed;
    external Node get commonAncestorContainer;
    external void setStart(Node refNode,num offset);
    external void setEnd(Node refNode,num offset);
    external void setStartBefore(Node refNode);
    external void setStartAfter(Node refNode);
    external void setEndBefore(Node refNode);
    external void setEndAfter(Node refNode);
    external void collapse([bool toStart]);
    external void selectNode(Node refNode);
    external void selectNodeContents(Node refNode);
    external num compareBoundaryPoints(num how,Range sourceRange);
    external void deleteContents();
    external DocumentFragment extractContents();
    external DocumentFragment cloneContents();
    external void insertNode(Node node);
    external void surroundContents(Node newParent);
    external Range cloneRange();
    external void detach();
    external bool isPointInRange(Node node,num offset);
    external num comparePoint(Node node,num offset);
    external bool intersectsNode(Node node);
    external DocumentFragment createContextualFragment(String fragment);
    external DOMRectList getClientRects();
    external DOMRect getBoundingClientRect();
    external ClientRectsAndTexts getClientRectsAndTexts();
}

@JS('Rect')
abstract class Rect {
    external CSSPrimitiveValue get top;
    external CSSPrimitiveValue get right;
    external CSSPrimitiveValue get bottom;
    external CSSPrimitiveValue get left;
}

@JS()
@anonymous
class RegisterRequest {
    external String get version;
    external set version (String val);
    external String get challenge;
    external set challenge (String val);
}

@JS()
@anonymous
class RegisterResponse {
    external String get version;
    external set version (String val);
    external String get registrationData;
    external set registrationData (String val);
    external String get clientData;
    external set clientData (String val);
    external num get errorCode;
    external set errorCode (num val);
    external String get errorMessage;
    external set errorMessage (String val);
}

@JS()
@anonymous
class RegisteredKey {
    external String get version;
    external set version (String val);
    external String get keyHandle;
    external set keyHandle (String val);
    external List<String> get transports;
    external set transports (List<String> val);
    external String get appId;
    external set appId (String val);
}

@JS()
@anonymous
class RegistrationOptions {
    external String get scope;
    external set scope (String val);
    external bool get useCache;
    external set useCache (bool val);
}

@JS('Request')
abstract class Request {
    external factory Request(var input,[RequestInit init]);
    external String get method;
    external String get url;
    external Headers get headers;
    external String get context;
    external String get referrer;
    external String get referrerPolicy;
    external String get mode;
    external String get credentials;
    external String get cache;
    external String get redirect;
    external String get integrity;
    external Request clone();
    external void overrideContentPolicyType(num context);
}

@JS()
@anonymous
class RequestInit {
    external String get method;
    external set method (String val);
    external  get headers;
    external set headers (var val);
    external  get body;
    external set body (var val);
    external String get referrer;
    external set referrer (String val);
    external String get referrerPolicy;
    external set referrerPolicy (String val);
    external String get mode;
    external set mode (String val);
    external String get credentials;
    external set credentials (String val);
    external String get cache;
    external set cache (String val);
    external String get redirect;
    external set redirect (String val);
    external String get integrity;
    external set integrity (String val);
}

@JS('Response')
abstract class Response {
    external factory Response([var body,ResponseInit init]);
    external Response error();
    external Response redirect(String url,[num status]);
    external String get type;
    external String get url;
    external bool get redirected;
    external num get status;
    external bool get ok;
    external String get statusText;
    external Headers get headers;
    external Response clone();
    external Response cloneUnfiltered();
}

@JS()
@anonymous
class ResponseInit {
    external num get status;
    external set status (num val);
    external String get statusText;
    external set statusText (String val);
    external  get headers;
    external set headers (var val);
}

@JS('Screen')
abstract class Screen implements EventTarget {
    external num get availWidth;
    external num get availHeight;
    external num get width;
    external num get height;
    external num get colorDepth;
    external num get pixelDepth;
    external num get top;
    external num get left;
    external num get availTop;
    external num get availLeft;
    external EventHandlerNonNull get onmozorientationchange;
    external set onmozorientationchange (EventHandlerNonNull val);
    external ScreenOrientation get orientation;
}

@JS('ScreenOrientation')
abstract class ScreenOrientation implements EventTarget {
    external Promise<dynamic> lock(String orientation);
    external void unlock();
    external String get type;
    external num get angle;
    external EventHandlerNonNull get onchange;
    external set onchange (EventHandlerNonNull val);
}

@JS()
@anonymous
class ScrollIntoViewOptions extends ScrollOptions {
    external String get block;
    external set block (String val);
}

@JS()
@anonymous
class ScrollOptions {
    external String get behavior;
    external set behavior (String val);
}

@JS()
@anonymous
class ScrollToOptions extends ScrollOptions {
    external num get left;
    external set left (num val);
    external num get top;
    external set top (num val);
}

@JS('Selection')
abstract class Selection {
    external Node get anchorNode;
    external num get anchorOffset;
    external Node get focusNode;
    external num get focusOffset;
    external bool get isCollapsed;
    external void collapse(Node node,num offset);
    external void collapseToStart();
    external void collapseToEnd();
    external void extend(Node node,num offset);
    external void selectAllChildren(Node node);
    external void deleteFromDocument();
    external num get rangeCount;
    external Range getRangeAt(num index);
    external void addRange(Range range);
    external void removeRange(Range range);
    external void removeAllRanges();
    external bool containsNode(Node node,bool allowPartialContainment);
    external void setBaseAndExtent(Node anchorNode,num anchorOffset,Node focusNode,num focusOffset);
    external void modify(String alter,String direction,String granularity);
    external bool get interlinePosition;
    external set interlinePosition (bool val);
    external num get caretBidiLevel;
    external set caretBidiLevel (num val);
    external String toStringWithFormat(String formatType,num flags,num wrapColumn);
    external num get type;
    external List<Range> GetRangesForInterval(Node beginNode,num beginOffset,Node endNode,num endOffset,bool allowAdjacent);
    external void scrollIntoView(num aRegion,bool aIsSynchronous,num aVPercent,num aHPercent);
}

@JS('ServiceWorker')
abstract class ServiceWorker implements EventTarget,AbstractWorker {
    external String get scriptURL;
    external String get state;
    external EventHandlerNonNull get onstatechange;
    external set onstatechange (EventHandlerNonNull val);
    external void postMessage(var message,[List<Object> transferable]);
}

@JS('ServiceWorkerContainer')
abstract class ServiceWorkerContainer implements EventTarget {
    external ServiceWorker get controller;
    external Promise<ServiceWorkerRegistration> get ready;
    external Promise<ServiceWorkerRegistration> register(String scriptURL,[RegistrationOptions options]);
    external Promise<dynamic> getRegistration([String documentURL]);
    external Promise<List<ServiceWorkerRegistration>> getRegistrations();
    external EventHandlerNonNull get oncontrollerchange;
    external set oncontrollerchange (EventHandlerNonNull val);
    external EventHandlerNonNull get onerror;
    external set onerror (EventHandlerNonNull val);
    external EventHandlerNonNull get onmessage;
    external set onmessage (EventHandlerNonNull val);
    external String getScopeForUrl(String url);
}

@JS('ServiceWorkerGlobalScope')
abstract class ServiceWorkerGlobalScope implements WorkerGlobalScope {
    external Clients get clients;
    external ServiceWorkerRegistration get registration;
    external Promise<dynamic> skipWaiting();
    external EventHandlerNonNull get oninstall;
    external set oninstall (EventHandlerNonNull val);
    external EventHandlerNonNull get onactivate;
    external set onactivate (EventHandlerNonNull val);
    external EventHandlerNonNull get onfetch;
    external set onfetch (EventHandlerNonNull val);
    external EventHandlerNonNull get onmessage;
    external set onmessage (EventHandlerNonNull val);
    external EventHandlerNonNull get onpush;
    external set onpush (EventHandlerNonNull val);
    external EventHandlerNonNull get onpushsubscriptionchange;
    external set onpushsubscriptionchange (EventHandlerNonNull val);
    external EventHandlerNonNull get onnotificationclick;
    external set onnotificationclick (EventHandlerNonNull val);
    external EventHandlerNonNull get onnotificationclose;
    external set onnotificationclose (EventHandlerNonNull val);
}

@JS('ServiceWorkerMessageEvent')
abstract class ServiceWorkerMessageEvent implements Event {
    external factory ServiceWorkerMessageEvent(String type,[ServiceWorkerMessageEventInit eventInitDict]);
    external  get data;
    external String get origin;
    external String get lastEventId;
    external  get source;
    external  get ports;
}

@JS()
@anonymous
class ServiceWorkerMessageEventInit extends EventInit {
    external  get data;
    external set data (var val);
    external String get origin;
    external set origin (String val);
    external String get lastEventId;
    external set lastEventId (String val);
    external  get source;
    external set source (var val);
    external List<MessagePort> get ports;
    external set ports (List<MessagePort> val);
}

@JS('ServiceWorkerRegistration')
abstract class ServiceWorkerRegistration implements EventTarget {
    external ServiceWorker get installing;
    external ServiceWorker get waiting;
    external ServiceWorker get active;
    external String get scope;
    external Promise<dynamic> update();
    external Promise<bool> unregister();
    external EventHandlerNonNull get onupdatefound;
    external set onupdatefound (EventHandlerNonNull val);
    external PushManager get pushManager;
    external Promise<dynamic> showNotification(String title,[NotificationOptions options]);
    external Promise<List<Notification>> getNotifications([GetNotificationOptions filter]);
}

@JS('ShadowRoot')
abstract class ShadowRoot implements DocumentFragment,DocumentOrShadowRoot {
    external Element getElementById(String elementId);
    external HTMLCollection getElementsByTagName(String localName);
    external HTMLCollection getElementsByTagNameNS(String namespace,String localName);
    external HTMLCollection getElementsByClassName(String classNames);
    external String get innerHTML;
    external set innerHTML (String val);
    external Element get host;
    external ShadowRoot get olderShadowRoot;
    external bool get applyAuthorStyles;
    external set applyAuthorStyles (bool val);
    external StyleSheetList get styleSheets;
}

@JS()
@anonymous
class SignResponse {
    external String get keyHandle;
    external set keyHandle (String val);
    external String get signatureData;
    external set signatureData (String val);
    external String get clientData;
    external set clientData (String val);
    external num get errorCode;
    external set errorCode (num val);
    external String get errorMessage;
    external set errorMessage (String val);
}

@JS('Slotable')
abstract class Slotable {
    external HTMLSlotElement get assignedSlot;
}

@JS('SourceBuffer')
abstract class SourceBuffer implements EventTarget {
    external String get mode;
    external set mode (String val);
    external bool get updating;
    external TimeRanges get buffered;
    external num get timestampOffset;
    external set timestampOffset (num val);
    external num get appendWindowStart;
    external set appendWindowStart (num val);
    external num get appendWindowEnd;
    external set appendWindowEnd (num val);
    external EventHandlerNonNull get onupdatestart;
    external set onupdatestart (EventHandlerNonNull val);
    external EventHandlerNonNull get onupdate;
    external set onupdate (EventHandlerNonNull val);
    external EventHandlerNonNull get onupdateend;
    external set onupdateend (EventHandlerNonNull val);
    external EventHandlerNonNull get onerror;
    external set onerror (EventHandlerNonNull val);
    external EventHandlerNonNull get onabort;
    external set onabort (EventHandlerNonNull val);
    external void appendBuffer(var data);
    external void abort();
    external void remove(num start,num end);
}

@JS('SourceBufferList')
abstract class SourceBufferList implements EventTarget {
    external num get length;
    external EventHandlerNonNull get onaddsourcebuffer;
    external set onaddsourcebuffer (EventHandlerNonNull val);
    external EventHandlerNonNull get onremovesourcebuffer;
    external set onremovesourcebuffer (EventHandlerNonNull val);
    external SourceBuffer operator[](num index);
}

@JS('Storage')
abstract class Storage {
    external num get length;
    external String key(num index);
    external String operator[](String key);
    external void operator[]=(String key,String value);
    // Deleter ?
    external void clear();
    external bool get isSessionOnly;
}

@JS('StyleSheet')
abstract class StyleSheet {
    external String get type;
    external String get href;
    external Node get ownerNode;
    external StyleSheet get parentStyleSheet;
    external String get title;
    external MediaList get media;
    external bool get disabled;
    external set disabled (bool val);
}

@JS('StyleSheetApplicableStateChangeEvent')
abstract class StyleSheetApplicableStateChangeEvent implements Event {
    external factory StyleSheetApplicableStateChangeEvent(String type,[StyleSheetApplicableStateChangeEventInit eventInitDict]);
    external CSSStyleSheet get stylesheet;
    external bool get applicable;
}

@JS()
@anonymous
class StyleSheetApplicableStateChangeEventInit extends EventInit {
    external CSSStyleSheet get stylesheet;
    external set stylesheet (CSSStyleSheet val);
    external bool get applicable;
    external set applicable (bool val);
}

@JS('StyleSheetChangeEvent')
abstract class StyleSheetChangeEvent implements Event {
    external factory StyleSheetChangeEvent(String type,[StyleSheetChangeEventInit eventInitDict]);
    external CSSStyleSheet get stylesheet;
    external bool get documentSheet;
}

@JS()
@anonymous
class StyleSheetChangeEventInit extends EventInit {
    external CSSStyleSheet get stylesheet;
    external set stylesheet (CSSStyleSheet val);
    external bool get documentSheet;
    external set documentSheet (bool val);
}

@JS('StyleSheetList')
abstract class StyleSheetList {
    external num get length;
    external StyleSheet operator[](num index);
}

@JS('Text')
abstract class Text implements CharacterData,GeometryUtils,Slotable {
    external factory Text([String data]);
    external Text splitText(num offset);
    external String get wholeText;
}

@JS('TextTrack')
abstract class TextTrack implements EventTarget {
    external String get kind;
    external String get label;
    external String get language;
    external String get id;
    external String get inBandMetadataTrackDispatchType;
    external String get mode;
    external set mode (String val);
    external TextTrackCueList get cues;
    external TextTrackCueList get activeCues;
    external void addCue(VTTCue cue);
    external void removeCue(VTTCue cue);
    external EventHandlerNonNull get oncuechange;
    external set oncuechange (EventHandlerNonNull val);
    external TextTrackList get textTrackList;
}

@JS('TextTrackCue')
abstract class TextTrackCue implements EventTarget {
    external TextTrack get track;
    external String get id;
    external set id (String val);
    external num get startTime;
    external set startTime (num val);
    external num get endTime;
    external set endTime (num val);
    external bool get pauseOnExit;
    external set pauseOnExit (bool val);
    external EventHandlerNonNull get onenter;
    external set onenter (EventHandlerNonNull val);
    external EventHandlerNonNull get onexit;
    external set onexit (EventHandlerNonNull val);
}

@JS('TextTrackCueList')
abstract class TextTrackCueList {
    external num get length;
    external VTTCue operator[](num index);
    external VTTCue getCueById(String id);
}

@JS('TextTrackList')
abstract class TextTrackList implements EventTarget {
    external num get length;
    external TextTrack operator[](num index);
    external TextTrack getTrackById(String id);
    external EventHandlerNonNull get onchange;
    external set onchange (EventHandlerNonNull val);
    external EventHandlerNonNull get onaddtrack;
    external set onaddtrack (EventHandlerNonNull val);
    external EventHandlerNonNull get onremovetrack;
    external set onremovetrack (EventHandlerNonNull val);
    external HTMLMediaElement get mediaElement;
}

@JS('TimeEvent')
abstract class TimeEvent implements Event {
    external num get detail;
    external WindowProxy get view;
    external void initTimeEvent(String aType,Window aView,num aDetail);
}

@JS('TimeRanges')
abstract class TimeRanges {
    external num get length;
    external num start(num index);
    external num end(num index);
}

@JS('Touch')
abstract class Touch {
    external factory Touch(TouchInit touchInitDict);
    external num get identifier;
    external EventTarget get target;
    external num get screenX;
    external num get screenY;
    external num get clientX;
    external num get clientY;
    external num get pageX;
    external num get pageY;
    external num get radiusX;
    external num get radiusY;
    external num get rotationAngle;
    external num get force;
}

@JS('TouchEvent')
abstract class TouchEvent implements UIEvent {
    external factory TouchEvent(String type,[TouchEventInit eventInitDict]);
    external TouchList get touches;
    external TouchList get targetTouches;
    external TouchList get changedTouches;
    external bool get altKey;
    external bool get metaKey;
    external bool get ctrlKey;
    external bool get shiftKey;
    external void initTouchEvent(String type,bool canBubble,bool cancelable,Window view,num detail,bool ctrlKey,bool altKey,bool shiftKey,bool metaKey,TouchList touches,TouchList targetTouches,TouchList changedTouches);
}

@JS('TouchEventHandlers')
abstract class TouchEventHandlers {
    external EventHandlerNonNull get ontouchstart;
    external set ontouchstart (EventHandlerNonNull val);
    external EventHandlerNonNull get ontouchend;
    external set ontouchend (EventHandlerNonNull val);
    external EventHandlerNonNull get ontouchmove;
    external set ontouchmove (EventHandlerNonNull val);
    external EventHandlerNonNull get ontouchcancel;
    external set ontouchcancel (EventHandlerNonNull val);
}

@JS()
@anonymous
class TouchEventInit extends EventModifierInit {
    external List<Touch> get touches;
    external set touches (List<Touch> val);
    external List<Touch> get targetTouches;
    external set targetTouches (List<Touch> val);
    external List<Touch> get changedTouches;
    external set changedTouches (List<Touch> val);
}

@JS()
@anonymous
class TouchInit {
    external num get identifier;
    external set identifier (num val);
    external EventTarget get target;
    external set target (EventTarget val);
    external num get clientX;
    external set clientX (num val);
    external num get clientY;
    external set clientY (num val);
    external num get screenX;
    external set screenX (num val);
    external num get screenY;
    external set screenY (num val);
    external num get pageX;
    external set pageX (num val);
    external num get pageY;
    external set pageY (num val);
    external num get radiusX;
    external set radiusX (num val);
    external num get radiusY;
    external set radiusY (num val);
    external num get rotationAngle;
    external set rotationAngle (num val);
    external num get force;
    external set force (num val);
}

@JS('TouchList')
abstract class TouchList {
    external num get length;
    external Touch operator[](num index);
}

@JS('TreeWalker')
abstract class TreeWalker {
    external Node get root;
    external num get whatToShow;
    external NodeFilter get filter;
    external Node get currentNode;
    external set currentNode (Node val);
    external Node parentNode();
    external Node firstChild();
    external Node lastChild();
    external Node previousSibling();
    external Node nextSibling();
    external Node previousNode();
    external Node nextNode();
}

@JS('U2F')
abstract class U2F {
    external void register(String appId,List<RegisterRequest> registerRequests,List<RegisteredKey> registeredKeys,U2FRegisterCallback callback,[num opt_timeoutSeconds]);
    external void sign(String appId,String challenge,List<RegisteredKey> registeredKeys,U2FSignCallback callback,[num opt_timeoutSeconds]);
}

@JS()
@anonymous
class U2FClientData {
    external String get typ;
    external set typ (String val);
    external String get challenge;
    external set challenge (String val);
    external String get origin;
    external set origin (String val);
}

typedef void U2FRegisterCallback(RegisterResponse response);

typedef void U2FSignCallback(SignResponse response);

@JS('UIEvent')
abstract class UIEvent implements Event {
    external factory UIEvent(String type,[UIEventInit eventInitDict]);
    external WindowProxy get view;
    external num get detail;
    external void initUIEvent(String aType,bool aCanBubble,bool aCancelable,Window aView,num aDetail);
    external num get layerX;
    external num get layerY;
    external num get pageX;
    external num get pageY;
    external num get which;
    external Node get rangeParent;
    external num get rangeOffset;
    external bool get isChar;
}

@JS()
@anonymous
class UIEventInit extends EventInit {
    external Window get view;
    external set view (Window val);
    external num get detail;
    external set detail (num val);
}

@JS('URI')
abstract class URI {
}

@JS('VTTCue')
abstract class VTTCue implements TextTrackCue {
    external factory VTTCue(num startTime,num endTime,String text);
    external VTTRegion get region;
    external set region (VTTRegion val);
    external String get vertical;
    external set vertical (String val);
    external bool get snapToLines;
    external set snapToLines (bool val);
    external  get line;
    external set line (var val);
    external String get lineAlign;
    external set lineAlign (String val);
    external  get position;
    external set position (var val);
    external String get positionAlign;
    external set positionAlign (String val);
    external num get size;
    external set size (num val);
    external String get align;
    external set align (String val);
    external String get text;
    external set text (String val);
    external DocumentFragment getCueAsHTML();
    external HTMLDivElement get displayState;
    external set displayState (HTMLDivElement val);
    external bool get hasBeenReset;
    external num get computedLine;
    external num get computedPosition;
    external String get computedPositionAlign;
}

@JS('VTTRegion')
abstract class VTTRegion {
    external factory VTTRegion();
    external num get width;
    external set width (num val);
    external num get lines;
    external set lines (num val);
    external num get regionAnchorX;
    external set regionAnchorX (num val);
    external num get regionAnchorY;
    external set regionAnchorY (num val);
    external num get viewportAnchorX;
    external set viewportAnchorX (num val);
    external num get viewportAnchorY;
    external set viewportAnchorY (num val);
    external String get scroll;
    external set scroll (String val);
}

@JS('ValidityState')
abstract class ValidityState {
    external bool get valueMissing;
    external bool get typeMismatch;
    external bool get patternMismatch;
    external bool get tooLong;
    external bool get tooShort;
    external bool get rangeUnderflow;
    external bool get rangeOverflow;
    external bool get stepMismatch;
    external bool get badInput;
    external bool get customError;
    external bool get valid;
}

@JS('VideoPlaybackQuality')
abstract class VideoPlaybackQuality {
    external DOMHighResTimeStamp get creationTime;
    external num get totalVideoFrames;
    external num get droppedVideoFrames;
    external num get corruptedVideoFrames;
}

@JS('VideoTrack')
abstract class VideoTrack {
    external String get id;
    external String get kind;
    external String get label;
    external String get language;
    external bool get selected;
    external set selected (bool val);
}

@JS('VideoTrackList')
abstract class VideoTrackList implements EventTarget {
    external num get length;
    external VideoTrack operator[](num index);
    external VideoTrack getTrackById(String id);
    external num get selectedIndex;
    external EventHandlerNonNull get onchange;
    external set onchange (EventHandlerNonNull val);
    external EventHandlerNonNull get onaddtrack;
    external set onaddtrack (EventHandlerNonNull val);
    external EventHandlerNonNull get onremovetrack;
    external set onremovetrack (EventHandlerNonNull val);
}

@JS('Window')
abstract class Window implements EventTarget,GlobalEventHandlers,WindowEventHandlers,WindowSessionStorage,WindowLocalStorage,GlobalCrypto,GlobalU2F,WindowModal,TouchEventHandlers,OnErrorEventHandlerForWindow,ChromeWindow,WindowOrWorkerGlobalScope {
    external Window get window;
    external Window get self;
    external Document get document;
    external String get name;
    external set name (String val);
    external Location get location;
    external History get history;
    external CustomElementRegistry get customElements;
    external BarProp get locationbar;
    external BarProp get menubar;
    external BarProp get personalbar;
    external BarProp get scrollbars;
    external BarProp get statusbar;
    external BarProp get toolbar;
    external String get status;
    external set status (String val);
    external void close();
    external bool get closed;
    external void stop();
    external void focus();
    external void blur();
    external WindowProxy get frames;
    external num get length;
    external WindowProxy get top;
    external  get opener;
    external set opener (var val);
    external WindowProxy get parent;
    external Element get frameElement;
    external WindowProxy open([String url,String target,String features]);
    external Object operator[](String name);
    external Navigator get navigator;
    external External get external;
    external ApplicationCache get applicationCache;
    external void alert([String message]);
    external bool confirm([String message]);
    external String prompt([String message,String defaultValue]);
    external void print();
    external  showModalDialog(String url,[var argument,String options]);
    external void postMessage(var message,String targetOrigin,[List<Object> transfer]);
    external EventHandlerNonNull get onappinstalled;
    external set onappinstalled (EventHandlerNonNull val);
    external void captureEvents();
    external void releaseEvents();
    external Selection getSelection();
    external CSSStyleDeclaration getComputedStyle(Element elt,[String pseudoElt]);
    external MediaQueryList matchMedia(String query);
    external Screen get screen;
    external void moveTo(num x,num y);
    external void moveBy(num x,num y);
    external void resizeTo(num x,num y);
    external void resizeBy(num x,num y);
    external  get innerWidth;
    external set innerWidth (var val);
    external  get innerHeight;
    external set innerHeight (var val);
    external void scroll(num x,num y);
    external void scrollTo(num x,num y);
    external void scrollBy(num x,num y);
    external void mozScrollSnap();
    external num get scrollX;
    external num get pageXOffset;
    external num get scrollY;
    external num get pageYOffset;
    external  get screenX;
    external set screenX (var val);
    external  get screenY;
    external set screenY (var val);
    external  get outerWidth;
    external set outerWidth (var val);
    external  get outerHeight;
    external set outerHeight (var val);
    external num requestAnimationFrame(FrameRequestCallback callback);
    external void cancelAnimationFrame(num handle);
    external Performance get performance;
    external CSSStyleDeclaration getDefaultComputedStyle(Element elt,[String pseudoElt]);
    external void scrollByLines(num numLines,[ScrollOptions options]);
    external void scrollByPages(num numPages,[ScrollOptions options]);
    external void sizeToContent();
    external MozControllers get controllers;
    external Element get realFrameElement;
    external num get mozInnerScreenX;
    external num get mozInnerScreenY;
    external num get devicePixelRatio;
    external num get scrollMinX;
    external num get scrollMinY;
    external num get scrollMaxX;
    external num get scrollMaxY;
    external bool get fullScreen;
    external set fullScreen (bool val);
    external void back();
    external void forward();
    external void home();
    external void updateCommands(String action,[Selection sel,num reason]);
    external bool find([String str,bool caseSensitive,bool backwards,bool wrapAround,bool wholeWord,bool searchInFrames,bool showDialog]);
    external num get mozPaintCount;
    external MozSelfSupport get JS$MozSelfSupport;
    external EventHandlerNonNull get onwheel;
    external set onwheel (EventHandlerNonNull val);
    external EventHandlerNonNull get ondevicemotion;
    external set ondevicemotion (EventHandlerNonNull val);
    external EventHandlerNonNull get ondeviceorientation;
    external set ondeviceorientation (EventHandlerNonNull val);
    external EventHandlerNonNull get onabsolutedeviceorientation;
    external set onabsolutedeviceorientation (EventHandlerNonNull val);
    external EventHandlerNonNull get ondeviceproximity;
    external set ondeviceproximity (EventHandlerNonNull val);
    external EventHandlerNonNull get onuserproximity;
    external set onuserproximity (EventHandlerNonNull val);
    external EventHandlerNonNull get ondevicelight;
    external set ondevicelight (EventHandlerNonNull val);
    external EventHandlerNonNull get onmoztimechange;
    external set onmoztimechange (EventHandlerNonNull val);
    external EventHandlerNonNull get onmoznetworkupload;
    external set onmoznetworkupload (EventHandlerNonNull val);
    external EventHandlerNonNull get onmoznetworkdownload;
    external set onmoznetworkdownload (EventHandlerNonNull val);
    external void dump(String str);
    external void setResizable(bool resizable);
    external WindowProxy openDialog([String url,String name,String options,var extraArguments]);
    external Object get content;
    external Object get _content;
    external  getInterface(IID iid);
    external WindowRoot get windowRoot;
    external  get sidebar;
    external EventHandlerNonNull get onvrdisplayconnect;
    external set onvrdisplayconnect (EventHandlerNonNull val);
    external EventHandlerNonNull get onvrdisplaydisconnect;
    external set onvrdisplaydisconnect (EventHandlerNonNull val);
    external EventHandlerNonNull get onvrdisplayactivate;
    external set onvrdisplayactivate (EventHandlerNonNull val);
    external EventHandlerNonNull get onvrdisplaydeactivate;
    external set onvrdisplaydeactivate (EventHandlerNonNull val);
    external EventHandlerNonNull get onvrdisplaypresentchange;
    external set onvrdisplaypresentchange (EventHandlerNonNull val);
    external Worklet get audioWorklet;
    external Worklet get paintWorklet;
    external num requestIdleCallback(IdleRequestCallback callback,[IdleRequestOptions options]);
    external void cancelIdleCallback(num handle);
    external bool get isSecureContextIfOpenerIgnored;
}

@JS('WindowClient')
abstract class WindowClient implements Client {
    external String get visibilityState;
    external bool get focused;
    external Promise<WindowClient> focus();
    external Promise<WindowClient> navigate(String url);
}

@JS('WindowEventHandlers')
abstract class WindowEventHandlers {
    external EventHandlerNonNull get onafterprint;
    external set onafterprint (EventHandlerNonNull val);
    external EventHandlerNonNull get onbeforeprint;
    external set onbeforeprint (EventHandlerNonNull val);
    external OnBeforeUnloadEventHandlerNonNull get onbeforeunload;
    external set onbeforeunload (OnBeforeUnloadEventHandlerNonNull val);
    external EventHandlerNonNull get onhashchange;
    external set onhashchange (EventHandlerNonNull val);
    external EventHandlerNonNull get onlanguagechange;
    external set onlanguagechange (EventHandlerNonNull val);
    external EventHandlerNonNull get onmessage;
    external set onmessage (EventHandlerNonNull val);
    external EventHandlerNonNull get onoffline;
    external set onoffline (EventHandlerNonNull val);
    external EventHandlerNonNull get ononline;
    external set ononline (EventHandlerNonNull val);
    external EventHandlerNonNull get onpagehide;
    external set onpagehide (EventHandlerNonNull val);
    external EventHandlerNonNull get onpageshow;
    external set onpageshow (EventHandlerNonNull val);
    external EventHandlerNonNull get onpopstate;
    external set onpopstate (EventHandlerNonNull val);
    external EventHandlerNonNull get onstorage;
    external set onstorage (EventHandlerNonNull val);
    external EventHandlerNonNull get onunload;
    external set onunload (EventHandlerNonNull val);
}

@JS('WindowLocalStorage')
abstract class WindowLocalStorage {
    external Storage get localStorage;
}

@JS('WindowModal')
abstract class WindowModal {
    external  get dialogArguments;
    external  get returnValue;
    external set returnValue (var val);
}

@JS('WindowOrWorkerGlobalScope')
abstract class WindowOrWorkerGlobalScope {
    external String get origin;
    external String btoa(String btoa);
    external String atob(String atob);
    external num setTimeout(Function handler,[num timeout,var arguments]);
    external void clearTimeout([num handle]);
    external num setInterval(Function handler,[num timeout,var arguments]);
    external void clearInterval([num handle]);
    external Promise<ImageBitmap> createImageBitmap(var aImage,[num aSx,num aSy,num aSw,num aSh]);
    external Promise<Response> fetch(var input,[RequestInit init]);
    external bool get isSecureContext;
    external IDBFactory get indexedDB;
    external CacheStorage get caches;
}

@JS('WindowRoot')
abstract class WindowRoot implements EventTarget {
}

@JS('WindowSessionStorage')
abstract class WindowSessionStorage {
    external Storage get sessionStorage;
}

@JS('Worker')
abstract class Worker implements EventTarget,AbstractWorker {
    external factory Worker(String scriptURL);
    external void terminate();
    external void postMessage(var message,[List<Object> transfer]);
    external EventHandlerNonNull get onmessage;
    external set onmessage (EventHandlerNonNull val);
}

@JS('WorkerGlobalScope')
abstract class WorkerGlobalScope implements EventTarget,GlobalCrypto,WindowOrWorkerGlobalScope {
    external WorkerGlobalScope get self;
    external WorkerLocation get location;
    external WorkerNavigator get navigator;
    external void importScripts(String urls);
    external OnErrorEventHandlerNonNull get onerror;
    external set onerror (OnErrorEventHandlerNonNull val);
    external EventHandlerNonNull get onoffline;
    external set onoffline (EventHandlerNonNull val);
    external EventHandlerNonNull get ononline;
    external set ononline (EventHandlerNonNull val);
    external void dump([String str]);
    external Performance get performance;
}

@JS('WorkerLocation')
abstract class WorkerLocation {
    external String get href;
    external String get origin;
    external String get protocol;
    external String get host;
    external String get hostname;
    external String get port;
    external String get pathname;
    external String get search;
    external String get hash;
}

@JS('WorkerNavigator')
abstract class WorkerNavigator {
    external NetworkInformation get connection;
}

@JS('Worklet')
abstract class Worklet {
    external Promise<dynamic> import(String moduleURL);
}

@JS('XMLHttpRequest')
abstract class XMLHttpRequest implements XMLHttpRequestEventTarget {
    external factory XMLHttpRequest([MozXMLHttpRequestParameters params]);
    external EventHandlerNonNull get onreadystatechange;
    external set onreadystatechange (EventHandlerNonNull val);
    external num get readyState;
    external void open(String method,String url,[bool async,String user,String password]);
    external void setRequestHeader(String header,String value);
    external num get timeout;
    external set timeout (num val);
    external bool get withCredentials;
    external set withCredentials (bool val);
    external XMLHttpRequestUpload get upload;
    external void send([var data]);
    external void abort();
    external String get responseURL;
    external num get status;
    external String get statusText;
    external String getResponseHeader(String header);
    external String getAllResponseHeaders();
    external void overrideMimeType(String mime);
    external String get responseType;
    external set responseType (String val);
    external  get response;
    external String get responseText;
    external Document get responseXML;
    external String get networkInterfaceId;
    external set networkInterfaceId (String val);
    external  getInterface(IID iid);
    external void setOriginAttributes([OriginAttributesDictionary originAttributes]);
    external bool get mozAnon;
    external bool get mozSystem;
}

@JS('XMLHttpRequestEventTarget')
abstract class XMLHttpRequestEventTarget implements EventTarget {
    external EventHandlerNonNull get onloadstart;
    external set onloadstart (EventHandlerNonNull val);
    external EventHandlerNonNull get onprogress;
    external set onprogress (EventHandlerNonNull val);
    external EventHandlerNonNull get onabort;
    external set onabort (EventHandlerNonNull val);
    external EventHandlerNonNull get onerror;
    external set onerror (EventHandlerNonNull val);
    external EventHandlerNonNull get onload;
    external set onload (EventHandlerNonNull val);
    external EventHandlerNonNull get ontimeout;
    external set ontimeout (EventHandlerNonNull val);
    external EventHandlerNonNull get onloadend;
    external set onloadend (EventHandlerNonNull val);
}

@JS('XMLHttpRequestUpload')
abstract class XMLHttpRequestUpload implements XMLHttpRequestEventTarget {
}

@JS('XPathEvaluator')
abstract class XPathEvaluator {
    external factory XPathEvaluator();
    external XPathExpression createExpression(String expression,XPathNSResolver resolver);
    external Node createNSResolver(Node nodeResolver);
    external XPathResult evaluate(String expression,Node contextNode,XPathNSResolver resolver,num type,Object result);
}

@JS('XPathExpression')
abstract class XPathExpression {
    external XPathResult evaluate(Node contextNode,num type,Object result);
    external XPathResult evaluateWithContext(Node contextNode,num contextPosition,num contextSize,num type,Object result);
}

@JS('XPathResult')
abstract class XPathResult {
    external num get resultType;
    external num get numberValue;
    external String get stringValue;
    external bool get booleanValue;
    external Node get singleNodeValue;
    external bool get invalidIteratorState;
    external num get snapshotLength;
    external Node iterateNext();
    external Node snapshotItem(num index);
}

const INTERFACES = const [
   'ParentNode',
   'TimeEvent',
   'BarProp',
   'DOMMatrixReadOnly',
   'DOMMatrix',
   'AbstractWorker',
   'Body',
   'DOMRectList',
   'Window',
   'WindowSessionStorage',
   'WindowLocalStorage',
   'WindowModal',
   'ChromeWindow',
   'AnimationEffectReadOnly',
   'ProgressEvent',
   'DOMTokenList',
   'CSSKeyframesRule',
   'HTMLHyperlinkElementUtils',
   'HTMLBRElement',
   'HTMLHtmlElement',
   'HTMLElement',
   'TouchEventHandlers',
   'HTMLUnknownElement',
   'HTMLTableColElement',
   'Text',
   'XPathExpression',
   'GlobalU2F',
   'U2F',
   'SourceBufferList',
   'HTMLTableCellElement',
   'DOMPointReadOnly',
   'DOMPoint',
   'CanvasCaptureMediaStream',
   'MediaSource',
   'PushManagerImpl',
   'PushManager',
   'HTMLOutputElement',
   'HTMLOptionsCollection',
   'AnimationPlaybackEvent',
   'CharacterData',
   'FetchEvent',
   'MouseEvent',
   'Slotable',
   'Element',
   'HTMLSlotElement',
   'HTMLHeadingElement',
   'HTMLAudioElement',
   'CSSCounterStyleRule',
   'MutationRecord',
   'MutationObserver',
   'HTMLTableSectionElement',
   'DocumentFragment',
   'CaretPosition',
   'Blob',
   'ServiceWorkerRegistration',
   'TouchList',
   'HTMLTemplateElement',
   'MediaKeyStatusMap',
   'DOMStringList',
   'Cache',
   'PushSubscriptionOptions',
   'HTMLFrameElement',
   'HTMLMapElement',
   'BlobEvent',
   'HTMLProgressElement',
   'HTMLParamElement',
   'HTMLTextAreaElement',
   'CSSValue',
   'Range',
   'CSSValueList',
   'HTMLAllCollection',
   'NodeList',
   'CSSFontFeatureValuesRule',
   'HTMLSpanElement',
   'Grid',
   'GridDimension',
   'GridLines',
   'GridLine',
   'GridTracks',
   'GridTrack',
   'GridArea',
   'Comment',
   'HTMLBaseElement',
   'CSSPageRule',
   'VideoPlaybackQuality',
   'HTMLAnchorElement',
   'EventSource',
   'Rect',
   'CSSNamespaceRule',
   'DOMRect',
   'DOMRectReadOnly',
   'CaretStateChangedEvent',
   'ServiceWorkerMessageEvent',
   'VideoTrackList',
   'Location',
   'XPathResult',
   'CSSKeyframeRule',
   'HTMLScriptElement',
   'CSSPseudoElement',
   'CSSRuleList',
   'HTMLLegendElement',
   'Touch',
   'HTMLCanvasElement',
   'MozCanvasPrintState',
   'HTMLMetaElement',
   'HTMLFontElement',
   'HTMLTimeElement',
   'Screen',
   'HTMLTitleElement',
   'TextTrackCueList',
   'HTMLEmbedElement',
   'StyleSheetChangeEvent',
   'PromiseNativeHandler',
   'HTMLIFrameElement',
   'HTMLFieldSetElement',
   'HTMLTrackElement',
   'Event',
   'ImageBitmap',
   'CSSPrimitiveValue',
   'FontFaceSetIterator',
   'FontFaceSet',
   'CSSSupportsRule',
   'Headers',
   'HTMLFormElement',
   'OffscreenCanvas',
   'HTMLDataElement',
   'DOMCursor',
   'HTMLFormControlsCollection',
   'HTMLSelectElement',
   'HTMLDListElement',
   'HTMLQuoteElement',
   'HTMLBodyElement',
   'Notification',
   'HTMLLinkElement',
   'AudioTrackList',
   'FontFace',
   'TimeRanges',
   'CacheStorage',
   'CSSConditionRule',
   'HTMLShadowElement',
   'FileList',
   'CDATASection',
   'FontFaceSource',
   'DOMRequestShared',
   'DOMRequest',
   'MediaKeys',
   'AnimationTimeline',
   'XMLHttpRequestUpload',
   'NamedNodeMap',
   'MediaError',
   'Response',
   'Client',
   'WindowClient',
   'HTMLStyleElement',
   'HTMLAppletElement',
   'StyleSheetList',
   'DOMQuad',
   'DocumentOrShadowRoot',
   'Document',
   'ShadowRoot',
   'XMLHttpRequestEventTarget',
   'ChildNode',
   'NonDocumentTypeChildNode',
   'RGBColor',
   'HTMLAreaElement',
   'WindowRoot',
   'VTTCue',
   'HTMLVideoElement',
   'HTMLObjectElement',
   'MozObjectLoadingContent',
   'WorkerLocation',
   'WorkerNavigator',
   'HTMLSourceElement',
   'CSSStyleDeclaration',
   'HTMLDocument',
   'Attr',
   'HTMLContentElement',
   'Selection',
   'History',
   'HTMLDataListElement',
   'Worklet',
   'Animatable',
   'HTMLTableCaptionElement',
   'ServiceWorker',
   'TouchEvent',
   'WorkerGlobalScope',
   'NetworkInformation',
   'AnimationEffectTimingReadOnly',
   'DOMImplementation',
   'StyleSheet',
   'CSSImportRule',
   'VideoTrack',
   'AutocompleteErrorEvent',
   'WindowOrWorkerGlobalScope',
   'HTMLLabelElement',
   'AudioTrack',
   'Worker',
   'ChromeWorker',
   'HTMLImageElement',
   'MozImageLoadingContent',
   'KeyEvent',
   'GlobalEventHandlers',
   'WindowEventHandlers',
   'DocumentAndElementEventHandlers',
   'OnErrorEventHandlerForNodes',
   'OnErrorEventHandlerForWindow',
   'HTMLInputElement',
   'MozPhonetic',
   'DOMStringMap',
   'GlobalCrypto',
   'Crypto',
   'Clients',
   'HTMLHRElement',
   'HTMLModElement',
   'HTMLOListElement',
   'DOMError',
   'TextTrack',
   'MediaQueryList',
   'HTMLOptGroupElement',
   'AnimationEvent',
   'HTMLLIElement',
   'CSSMozDocumentRule',
   'Request',
   'PushSubscription',
   'TextTrackList',
   'FileReader',
   'XMLHttpRequest',
   'CSSTransition',
   'HTMLPictureElement',
   'HTMLMeterElement',
   'CustomEvent',
   'File',
   'CSS',
   'ServiceWorkerGlobalScope',
   'MediaKeyError',
   'Principal',
   'URI',
   'Node',
   'HTMLMenuElement',
   'HTMLButtonElement',
   'MediaList',
   'AnimationEffectTiming',
   'NodeIterator',
   'FormData',
   'StyleSheetApplicableStateChangeEvent',
   'ExtendableEvent',
   'VTTRegion',
   'HTMLParagraphElement',
   'MediaKeySession',
   'CSSStyleRule',
   'KeyframeEffectReadOnly',
   'KeyframeEffect',
   'HTMLOptionElement',
   'KeyboardEvent',
   'CSSGroupingRule',
   'HTMLTableElement',
   'HTMLCollection',
   'HTMLHeadElement',
   'GeometryUtils',
   'HTMLDivElement',
   'XPathEvaluator',
   'HTMLMenuItemElement',
   'HTMLPreElement',
   'ProcessingInstruction',
   'CSSLexer',
   'HTMLFrameSetElement',
   'TreeWalker',
   'Storage',
   'ScreenOrientation',
   'SourceBuffer',
   'DocumentType',
   'HTMLDirectoryElement',
   'HTMLDialogElement',
   'DocumentTimeline',
   'UIEvent',
   'CSSStyleSheet',
   'TextTrackCue',
   'HTMLTableRowElement',
   'HTMLDetailsElement',
   'ServiceWorkerContainer',
   'HTMLMediaElement',
   'CSSAnimation',
   'MessagePort',
   'LinkStyle',
   'CSSMediaRule',
   'ValidityState',
   'CustomElementRegistry',
   'CSSRule',
   'Animation',
   'EventTarget',
   'HTMLUListElement',
   'CSSFontFaceRule',
   'AnonymousContent',
];
