package com.caverock.androidsvg;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.caverock.androidsvg.CSSParser;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public class SVG {
    private static boolean enableInternalEntities = true;
    private Svg rootElement = null;
    private String title = _UrlKt.FRAGMENT_ENCODE_SET;
    private String desc = _UrlKt.FRAGMENT_ENCODE_SET;
    private float renderDPI = 96.0f;
    private CSSParser.Ruleset cssRules = new CSSParser.Ruleset();
    private Map idToElementMap = new HashMap();

    /* JADX INFO: loaded from: classes4.dex */
    enum GradientSpread {
        pad,
        reflect,
        repeat
    }

    interface HasTransform {
        void setTransform(Matrix matrix);
    }

    interface NotDirectlyRendered {
    }

    interface PathInterface {
        void arcTo(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5);

        void close();

        void cubicTo(float f, float f2, float f3, float f4, float f5, float f6);

        void lineTo(float f, float f2);

        void moveTo(float f, float f2);

        void quadTo(float f, float f2, float f3, float f4);
    }

    interface SvgConditional {
        String getRequiredExtensions();

        Set getRequiredFeatures();

        Set getRequiredFonts();

        Set getRequiredFormats();

        Set getSystemLanguage();

        void setRequiredExtensions(String str);

        void setRequiredFeatures(Set set);

        void setRequiredFonts(Set set);

        void setRequiredFormats(Set set);

        void setSystemLanguage(Set set);
    }

    interface SvgContainer {
        void addChild(SvgObject svgObject);

        List getChildren();
    }

    /* JADX INFO: loaded from: classes4.dex */
    interface TextChild {
        TextRoot getTextRoot();
    }

    /* JADX INFO: loaded from: classes4.dex */
    interface TextRoot {
    }

    enum Unit {
        px,
        em,
        ex,
        in,
        cm,
        mm,
        pt,
        pc,
        percent
    }

    static SVGExternalFileResolver getFileResolver() {
        return null;
    }

    SVG() {
    }

    public static SVG getFromInputStream(InputStream inputStream) {
        return new SVGParser().parse(inputStream, enableInternalEntities);
    }

    public void renderToCanvas(Canvas canvas) {
        renderToCanvas(canvas, null);
    }

    public void renderToCanvas(Canvas canvas, RenderOptions renderOptions) {
        if (renderOptions == null) {
            renderOptions = new RenderOptions();
        }
        if (!renderOptions.hasViewPort()) {
            renderOptions.viewPort(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
        }
        new SVGAndroidRenderer(canvas, this.renderDPI).renderDocument(this, renderOptions);
    }

    public float getDocumentWidth() {
        if (this.rootElement == null) {
            throw new IllegalArgumentException("SVG document is empty");
        }
        return getDocumentDimensions(this.renderDPI).width;
    }

    public void setDocumentWidth(float f) {
        Svg svg = this.rootElement;
        if (svg == null) {
            throw new IllegalArgumentException("SVG document is empty");
        }
        svg.width = new Length(f);
    }

    public float getDocumentHeight() {
        if (this.rootElement == null) {
            throw new IllegalArgumentException("SVG document is empty");
        }
        return getDocumentDimensions(this.renderDPI).height;
    }

    public void setDocumentHeight(float f) {
        Svg svg = this.rootElement;
        if (svg == null) {
            throw new IllegalArgumentException("SVG document is empty");
        }
        svg.height = new Length(f);
    }

    public RectF getDocumentViewBox() {
        Svg svg = this.rootElement;
        if (svg == null) {
            throw new IllegalArgumentException("SVG document is empty");
        }
        Box box = svg.viewBox;
        if (box == null) {
            return null;
        }
        return box.toRectF();
    }

    Svg getRootElement() {
        return this.rootElement;
    }

    void setRootElement(Svg svg) {
        this.rootElement = svg;
    }

    SvgObject resolveIRI(String str) {
        if (str == null) {
            return null;
        }
        String strCssQuotedString = cssQuotedString(str);
        if (strCssQuotedString.length() <= 1 || !strCssQuotedString.startsWith("#")) {
            return null;
        }
        return getElementById(strCssQuotedString.substring(1));
    }

    private String cssQuotedString(String str) {
        if (str.startsWith("\"") && str.endsWith("\"")) {
            str = str.substring(1, str.length() - 1).replace("\\\"", "\"");
        } else if (str.startsWith("'") && str.endsWith("'")) {
            str = str.substring(1, str.length() - 1).replace("\\'", "'");
        }
        return str.replace("\\\n", _UrlKt.FRAGMENT_ENCODE_SET).replace("\\A", "\n");
    }

    private Box getDocumentDimensions(float f) {
        Unit unit;
        Unit unit2;
        Unit unit3;
        Unit unit4;
        float fFloatValue;
        Unit unit5;
        Svg svg = this.rootElement;
        Length length = svg.width;
        Length length2 = svg.height;
        if (length == null || length.isZero() || (unit = length.unit) == (unit2 = Unit.percent) || unit == (unit3 = Unit.em) || unit == (unit4 = Unit.ex)) {
            return new Box(-1.0f, -1.0f, -1.0f, -1.0f);
        }
        float fFloatValue2 = length.floatValue(f);
        if (length2 != null) {
            if (length2.isZero() || (unit5 = length2.unit) == unit2 || unit5 == unit3 || unit5 == unit4) {
                return new Box(-1.0f, -1.0f, -1.0f, -1.0f);
            }
            fFloatValue = length2.floatValue(f);
        } else {
            Box box = this.rootElement.viewBox;
            fFloatValue = box != null ? (box.height * fFloatValue2) / box.width : fFloatValue2;
        }
        return new Box(0.0f, 0.0f, fFloatValue2, fFloatValue);
    }

    void addCSSRules(CSSParser.Ruleset ruleset) {
        this.cssRules.addAll(ruleset);
    }

    List getCSSRules() {
        return this.cssRules.getRules();
    }

    boolean hasCSSRules() {
        return !this.cssRules.isEmpty();
    }

    void clearRenderCSSRules() {
        this.cssRules.removeFromSource(CSSParser.Source.RenderOptions);
    }

    static class Box {
        float height;
        float minX;
        float minY;
        float width;

        Box(float f, float f2, float f3, float f4) {
            this.minX = f;
            this.minY = f2;
            this.width = f3;
            this.height = f4;
        }

        Box(Box box) {
            this.minX = box.minX;
            this.minY = box.minY;
            this.width = box.width;
            this.height = box.height;
        }

        static Box fromLimits(float f, float f2, float f3, float f4) {
            return new Box(f, f2, f3 - f, f4 - f2);
        }

        RectF toRectF() {
            return new RectF(this.minX, this.minY, maxX(), maxY());
        }

        float maxX() {
            return this.minX + this.width;
        }

        float maxY() {
            return this.minY + this.height;
        }

        void union(Box box) {
            float f = box.minX;
            if (f < this.minX) {
                this.minX = f;
            }
            float f2 = box.minY;
            if (f2 < this.minY) {
                this.minY = f2;
            }
            if (box.maxX() > maxX()) {
                this.width = box.maxX() - this.minX;
            }
            if (box.maxY() > maxY()) {
                this.height = box.maxY() - this.minY;
            }
        }

        public String toString() {
            return "[" + this.minX + " " + this.minY + " " + this.width + " " + this.height + "]";
        }
    }

    static class Style implements Cloneable {
        CSSClipRect clip;
        String clipPath;
        FillRule clipRule;
        Colour color;
        TextDirection direction;
        Boolean display;
        SvgPaint fill;
        Float fillOpacity;
        FillRule fillRule;
        List fontFamily;
        Length fontSize;
        FontStyle fontStyle;
        Integer fontWeight;
        RenderQuality imageRendering;
        String markerEnd;
        String markerMid;
        String markerStart;
        String mask;
        Float opacity;
        Boolean overflow;
        SvgPaint solidColor;
        Float solidOpacity;
        long specifiedFlags = 0;
        SvgPaint stopColor;
        Float stopOpacity;
        SvgPaint stroke;
        Length[] strokeDashArray;
        Length strokeDashOffset;
        LineCap strokeLineCap;
        LineJoin strokeLineJoin;
        Float strokeMiterLimit;
        Float strokeOpacity;
        Length strokeWidth;
        TextAnchor textAnchor;
        TextDecoration textDecoration;
        VectorEffect vectorEffect;
        SvgPaint viewportFill;
        Float viewportFillOpacity;
        Boolean visibility;

        public enum FillRule {
            NonZero,
            EvenOdd
        }

        public enum FontStyle {
            Normal,
            Italic,
            Oblique
        }

        public enum LineCap {
            Butt,
            Round,
            Square
        }

        public enum LineJoin {
            Miter,
            Round,
            Bevel
        }

        public enum RenderQuality {
            auto,
            optimizeQuality,
            optimizeSpeed
        }

        public enum TextAnchor {
            Start,
            Middle,
            End
        }

        public enum TextDecoration {
            None,
            Underline,
            Overline,
            LineThrough,
            Blink
        }

        public enum TextDirection {
            LTR,
            RTL
        }

        public enum VectorEffect {
            None,
            NonScalingStroke
        }

        Style() {
        }

        static Style getDefaultStyle() {
            Style style = new Style();
            style.specifiedFlags = -1L;
            Colour colour = Colour.BLACK;
            style.fill = colour;
            FillRule fillRule = FillRule.NonZero;
            style.fillRule = fillRule;
            Float fValueOf = Float.valueOf(1.0f);
            style.fillOpacity = fValueOf;
            style.stroke = null;
            style.strokeOpacity = fValueOf;
            style.strokeWidth = new Length(1.0f);
            style.strokeLineCap = LineCap.Butt;
            style.strokeLineJoin = LineJoin.Miter;
            style.strokeMiterLimit = Float.valueOf(4.0f);
            style.strokeDashArray = null;
            style.strokeDashOffset = new Length(0.0f);
            style.opacity = fValueOf;
            style.color = colour;
            style.fontFamily = null;
            style.fontSize = new Length(12.0f, Unit.pt);
            style.fontWeight = 400;
            style.fontStyle = FontStyle.Normal;
            style.textDecoration = TextDecoration.None;
            style.direction = TextDirection.LTR;
            style.textAnchor = TextAnchor.Start;
            Boolean bool = Boolean.TRUE;
            style.overflow = bool;
            style.clip = null;
            style.markerStart = null;
            style.markerMid = null;
            style.markerEnd = null;
            style.display = bool;
            style.visibility = bool;
            style.stopColor = colour;
            style.stopOpacity = fValueOf;
            style.clipPath = null;
            style.clipRule = fillRule;
            style.mask = null;
            style.solidColor = null;
            style.solidOpacity = fValueOf;
            style.viewportFill = null;
            style.viewportFillOpacity = fValueOf;
            style.vectorEffect = VectorEffect.None;
            style.imageRendering = RenderQuality.auto;
            return style;
        }

        void resetNonInheritingProperties(boolean z) {
            Float fValueOf = Float.valueOf(1.0f);
            Boolean bool = Boolean.TRUE;
            this.display = bool;
            if (!z) {
                bool = Boolean.FALSE;
            }
            this.overflow = bool;
            this.clip = null;
            this.clipPath = null;
            this.opacity = fValueOf;
            this.stopColor = Colour.BLACK;
            this.stopOpacity = fValueOf;
            this.mask = null;
            this.solidColor = null;
            this.solidOpacity = fValueOf;
            this.viewportFill = null;
            this.viewportFillOpacity = fValueOf;
            this.vectorEffect = VectorEffect.None;
        }

        protected Object clone() {
            Style style = (Style) super.clone();
            Length[] lengthArr = this.strokeDashArray;
            if (lengthArr != null) {
                style.strokeDashArray = (Length[]) lengthArr.clone();
            }
            return style;
        }
    }

    static abstract class SvgPaint implements Cloneable {
        SvgPaint() {
        }
    }

    static class Colour extends SvgPaint {
        static final Colour BLACK = new Colour(-16777216);
        static final Colour TRANSPARENT = new Colour(0);
        int colour;

        Colour(int i) {
            this.colour = i;
        }

        public String toString() {
            return String.format("#%08x", Integer.valueOf(this.colour));
        }
    }

    static class CurrentColor extends SvgPaint {
        private static CurrentColor instance = new CurrentColor();

        private CurrentColor() {
        }

        static CurrentColor getInstance() {
            return instance;
        }
    }

    static class PaintReference extends SvgPaint {
        SvgPaint fallback;
        String href;

        PaintReference(String str, SvgPaint svgPaint) {
            this.href = str;
            this.fallback = svgPaint;
        }

        public String toString() {
            return this.href + " " + this.fallback;
        }
    }

    static class Length implements Cloneable {
        Unit unit;
        float value;

        Length(float f, Unit unit) {
            this.value = f;
            this.unit = unit;
        }

        Length(float f) {
            this.value = f;
            this.unit = Unit.px;
        }

        float floatValue() {
            return this.value;
        }

        float floatValueX(SVGAndroidRenderer sVGAndroidRenderer) {
            switch (C09941.$SwitchMap$com$caverock$androidsvg$SVG$Unit[this.unit.ordinal()]) {
                case 9:
                    Box currentViewPortInUserUnits = sVGAndroidRenderer.getCurrentViewPortInUserUnits();
                    if (currentViewPortInUserUnits != null) {
                    }
                    break;
            }
            return this.value;
        }

        float floatValueY(SVGAndroidRenderer sVGAndroidRenderer) {
            if (this.unit == Unit.percent) {
                Box currentViewPortInUserUnits = sVGAndroidRenderer.getCurrentViewPortInUserUnits();
                if (currentViewPortInUserUnits == null) {
                    return this.value;
                }
                return (this.value * currentViewPortInUserUnits.height) / 100.0f;
            }
            return floatValueX(sVGAndroidRenderer);
        }

        float floatValue(SVGAndroidRenderer sVGAndroidRenderer) {
            if (this.unit == Unit.percent) {
                Box currentViewPortInUserUnits = sVGAndroidRenderer.getCurrentViewPortInUserUnits();
                if (currentViewPortInUserUnits == null) {
                    return this.value;
                }
                float f = currentViewPortInUserUnits.width;
                if (f == currentViewPortInUserUnits.height) {
                    return (this.value * f) / 100.0f;
                }
                return (this.value * ((float) (Math.sqrt((f * f) + (r6 * r6)) / 1.414213562373095d))) / 100.0f;
            }
            return floatValueX(sVGAndroidRenderer);
        }

        float floatValue(SVGAndroidRenderer sVGAndroidRenderer, float f) {
            if (this.unit == Unit.percent) {
                return (this.value * f) / 100.0f;
            }
            return floatValueX(sVGAndroidRenderer);
        }

        float floatValue(float f) {
            int i = C09941.$SwitchMap$com$caverock$androidsvg$SVG$Unit[this.unit.ordinal()];
            if (i == 1) {
                return this.value;
            }
            switch (i) {
                case 4:
                    return this.value * f;
                case 5:
                    return (this.value * f) / 2.54f;
                case 6:
                    return (this.value * f) / 25.4f;
                case 7:
                    return (this.value * f) / 72.0f;
                case 8:
                    return (this.value * f) / 6.0f;
                default:
                    return this.value;
            }
        }

        boolean isZero() {
            return this.value == 0.0f;
        }

        boolean isNegative() {
            return this.value < 0.0f;
        }

        public String toString() {
            return String.valueOf(this.value) + this.unit;
        }
    }

    /* JADX INFO: renamed from: com.caverock.androidsvg.SVG$1 */
    static /* synthetic */ class C09941 {
        static final /* synthetic */ int[] $SwitchMap$com$caverock$androidsvg$SVG$Unit;

        static {
            int[] iArr = new int[Unit.values().length];
            $SwitchMap$com$caverock$androidsvg$SVG$Unit = iArr;
            try {
                iArr[Unit.px.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVG$Unit[Unit.em.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVG$Unit[Unit.ex.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVG$Unit[Unit.in.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVG$Unit[Unit.cm.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVG$Unit[Unit.mm.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVG$Unit[Unit.pt.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVG$Unit[Unit.pc.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVG$Unit[Unit.percent.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    static class CSSClipRect {
        Length bottom;
        Length left;
        Length right;
        Length top;

        CSSClipRect(Length length, Length length2, Length length3, Length length4) {
            this.top = length;
            this.right = length2;
            this.bottom = length3;
            this.left = length4;
        }
    }

    static class SvgObject {
        SVG document;
        SvgContainer parent;

        abstract String getNodeName();

        SvgObject() {
        }
    }

    static abstract class SvgElementBase extends SvgObject {

        /* JADX INFO: renamed from: id */
        String f141id = null;
        Boolean spacePreserve = null;
        Style baseStyle = null;
        Style style = null;
        List classNames = null;

        SvgElementBase() {
        }

        public String toString() {
            return getNodeName();
        }
    }

    static abstract class SvgElement extends SvgElementBase {
        Box boundingBox = null;

        SvgElement() {
        }
    }

    static abstract class SvgConditionalElement extends SvgElement implements SvgConditional {
        Set requiredFeatures = null;
        String requiredExtensions = null;
        Set systemLanguage = null;
        Set requiredFormats = null;
        Set requiredFonts = null;

        SvgConditionalElement() {
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public void setRequiredFeatures(Set set) {
            this.requiredFeatures = set;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public Set getRequiredFeatures() {
            return this.requiredFeatures;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public void setRequiredExtensions(String str) {
            this.requiredExtensions = str;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public String getRequiredExtensions() {
            return this.requiredExtensions;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public void setSystemLanguage(Set set) {
            this.systemLanguage = set;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public Set getSystemLanguage() {
            return this.systemLanguage;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public void setRequiredFormats(Set set) {
            this.requiredFormats = set;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public Set getRequiredFormats() {
            return this.requiredFormats;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public void setRequiredFonts(Set set) {
            this.requiredFonts = set;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public Set getRequiredFonts() {
            return this.requiredFonts;
        }
    }

    static abstract class SvgConditionalContainer extends SvgElement implements SvgContainer, SvgConditional {
        List children = new ArrayList();
        Set requiredFeatures = null;
        String requiredExtensions = null;
        Set systemLanguage = null;
        Set requiredFormats = null;
        Set requiredFonts = null;

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public Set getSystemLanguage() {
            return null;
        }

        SvgConditionalContainer() {
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public List getChildren() {
            return this.children;
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public void addChild(SvgObject svgObject) {
            this.children.add(svgObject);
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public void setRequiredFeatures(Set set) {
            this.requiredFeatures = set;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public Set getRequiredFeatures() {
            return this.requiredFeatures;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public void setRequiredExtensions(String str) {
            this.requiredExtensions = str;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public String getRequiredExtensions() {
            return this.requiredExtensions;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public void setSystemLanguage(Set set) {
            this.systemLanguage = set;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public void setRequiredFormats(Set set) {
            this.requiredFormats = set;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public Set getRequiredFormats() {
            return this.requiredFormats;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public void setRequiredFonts(Set set) {
            this.requiredFonts = set;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public Set getRequiredFonts() {
            return this.requiredFonts;
        }
    }

    static abstract class SvgPreserveAspectRatioContainer extends SvgConditionalContainer {
        PreserveAspectRatio preserveAspectRatio = null;

        SvgPreserveAspectRatioContainer() {
        }
    }

    static abstract class SvgViewBoxContainer extends SvgPreserveAspectRatioContainer {
        Box viewBox;

        SvgViewBoxContainer() {
        }
    }

    static class Svg extends SvgViewBoxContainer {
        Length height;
        public String version;
        Length width;

        /* JADX INFO: renamed from: x */
        Length f139x;

        /* JADX INFO: renamed from: y */
        Length f140y;

        Svg() {
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "svg";
        }
    }

    static class Group extends SvgConditionalContainer implements HasTransform {
        Matrix transform;

        Group() {
        }

        @Override // com.caverock.androidsvg.SVG.HasTransform
        public void setTransform(Matrix matrix) {
            this.transform = matrix;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "group";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class Defs extends Group implements NotDirectlyRendered {
        Defs() {
        }

        @Override // com.caverock.androidsvg.SVG.Group, com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "defs";
        }
    }

    static abstract class GraphicsElement extends SvgConditionalElement implements HasTransform {
        Matrix transform;

        GraphicsElement() {
        }

        @Override // com.caverock.androidsvg.SVG.HasTransform
        public void setTransform(Matrix matrix) {
            this.transform = matrix;
        }
    }

    static class Use extends Group {
        Length height;
        String href;
        Length width;

        /* JADX INFO: renamed from: x */
        Length f163x;

        /* JADX INFO: renamed from: y */
        Length f164y;

        Use() {
        }

        @Override // com.caverock.androidsvg.SVG.Group, com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "use";
        }
    }

    static class Path extends GraphicsElement {

        /* JADX INFO: renamed from: d */
        PathDefinition f132d;
        Float pathLength;

        Path() {
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "path";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class Rect extends GraphicsElement {
        Length height;

        /* JADX INFO: renamed from: rx */
        Length f135rx;

        /* JADX INFO: renamed from: ry */
        Length f136ry;
        Length width;

        /* JADX INFO: renamed from: x */
        Length f137x;

        /* JADX INFO: renamed from: y */
        Length f138y;

        Rect() {
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "rect";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class Circle extends GraphicsElement {

        /* JADX INFO: renamed from: cx */
        Length f117cx;

        /* JADX INFO: renamed from: cy */
        Length f118cy;

        /* JADX INFO: renamed from: r */
        Length f119r;

        Circle() {
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "circle";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class Ellipse extends GraphicsElement {

        /* JADX INFO: renamed from: cx */
        Length f120cx;

        /* JADX INFO: renamed from: cy */
        Length f121cy;

        /* JADX INFO: renamed from: rx */
        Length f122rx;

        /* JADX INFO: renamed from: ry */
        Length f123ry;

        Ellipse() {
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "ellipse";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class Line extends GraphicsElement {

        /* JADX INFO: renamed from: x1 */
        Length f126x1;

        /* JADX INFO: renamed from: x2 */
        Length f127x2;

        /* JADX INFO: renamed from: y1 */
        Length f128y1;

        /* JADX INFO: renamed from: y2 */
        Length f129y2;

        Line() {
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "line";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class PolyLine extends GraphicsElement {
        float[] points;

        PolyLine() {
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "polyline";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class Polygon extends PolyLine {
        Polygon() {
        }

        @Override // com.caverock.androidsvg.SVG.PolyLine, com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "polygon";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static abstract class TextContainer extends SvgConditionalContainer {
        TextContainer() {
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditionalContainer, com.caverock.androidsvg.SVG.SvgContainer
        public void addChild(SvgObject svgObject) throws SVGParseException {
            if (svgObject instanceof TextChild) {
                this.children.add(svgObject);
                return;
            }
            throw new SVGParseException("Text content elements cannot contain " + svgObject + " elements.");
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static abstract class TextPositionedContainer extends TextContainer {

        /* JADX INFO: renamed from: dx */
        List f151dx;

        /* JADX INFO: renamed from: dy */
        List f152dy;

        /* JADX INFO: renamed from: x */
        List f153x;

        /* JADX INFO: renamed from: y */
        List f154y;

        TextPositionedContainer() {
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class Text extends TextPositionedContainer implements TextRoot, HasTransform {
        Matrix transform;

        Text() {
        }

        @Override // com.caverock.androidsvg.SVG.HasTransform
        public void setTransform(Matrix matrix) {
            this.transform = matrix;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "text";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class TSpan extends TextPositionedContainer implements TextChild {
        private TextRoot textRoot;

        TSpan() {
        }

        public void setTextRoot(TextRoot textRoot) {
            this.textRoot = textRoot;
        }

        @Override // com.caverock.androidsvg.SVG.TextChild
        public TextRoot getTextRoot() {
            return this.textRoot;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "tspan";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class TextSequence extends SvgObject implements TextChild {
        String text;
        private TextRoot textRoot;

        TextSequence(String str) {
            this.text = str;
        }

        public String toString() {
            return "TextChild: '" + this.text + "'";
        }

        @Override // com.caverock.androidsvg.SVG.TextChild
        public TextRoot getTextRoot() {
            return this.textRoot;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class TRef extends TextContainer implements TextChild {
        String href;
        private TextRoot textRoot;

        TRef() {
        }

        public void setTextRoot(TextRoot textRoot) {
            this.textRoot = textRoot;
        }

        @Override // com.caverock.androidsvg.SVG.TextChild
        public TextRoot getTextRoot() {
            return this.textRoot;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "tref";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class TextPath extends TextContainer implements TextChild {
        String href;
        Length startOffset;
        private TextRoot textRoot;

        TextPath() {
        }

        public void setTextRoot(TextRoot textRoot) {
            this.textRoot = textRoot;
        }

        @Override // com.caverock.androidsvg.SVG.TextChild
        public TextRoot getTextRoot() {
            return this.textRoot;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "textPath";
        }
    }

    static class Switch extends Group {
        Switch() {
        }

        @Override // com.caverock.androidsvg.SVG.Group, com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "switch";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class Symbol extends SvgViewBoxContainer implements NotDirectlyRendered {
        Symbol() {
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "symbol";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class Marker extends SvgViewBoxContainer implements NotDirectlyRendered {
        Length markerHeight;
        boolean markerUnitsAreUser;
        Length markerWidth;
        Float orient;
        Length refX;
        Length refY;

        Marker() {
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "marker";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static abstract class GradientElement extends SvgElementBase implements SvgContainer {
        List children = new ArrayList();
        Matrix gradientTransform;
        Boolean gradientUnitsAreUser;
        String href;
        GradientSpread spreadMethod;

        GradientElement() {
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public List getChildren() {
            return this.children;
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public void addChild(SvgObject svgObject) throws SVGParseException {
            if (svgObject instanceof Stop) {
                this.children.add(svgObject);
                return;
            }
            throw new SVGParseException("Gradient elements cannot contain " + svgObject + " elements.");
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class Stop extends SvgElementBase implements SvgContainer {
        Float offset;

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public void addChild(SvgObject svgObject) {
        }

        Stop() {
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public List getChildren() {
            return Collections.EMPTY_LIST;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "stop";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class SvgLinearGradient extends GradientElement {

        /* JADX INFO: renamed from: x1 */
        Length f142x1;

        /* JADX INFO: renamed from: x2 */
        Length f143x2;

        /* JADX INFO: renamed from: y1 */
        Length f144y1;

        /* JADX INFO: renamed from: y2 */
        Length f145y2;

        SvgLinearGradient() {
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "linearGradient";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class SvgRadialGradient extends GradientElement {

        /* JADX INFO: renamed from: cx */
        Length f146cx;

        /* JADX INFO: renamed from: cy */
        Length f147cy;

        /* JADX INFO: renamed from: fx */
        Length f148fx;

        /* JADX INFO: renamed from: fy */
        Length f149fy;

        /* JADX INFO: renamed from: r */
        Length f150r;

        SvgRadialGradient() {
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "radialGradient";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class ClipPath extends Group implements NotDirectlyRendered {
        Boolean clipPathUnitsAreUser;

        ClipPath() {
        }

        @Override // com.caverock.androidsvg.SVG.Group, com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "clipPath";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class Pattern extends SvgViewBoxContainer implements NotDirectlyRendered {
        Length height;
        String href;
        Boolean patternContentUnitsAreUser;
        Matrix patternTransform;
        Boolean patternUnitsAreUser;
        Length width;

        /* JADX INFO: renamed from: x */
        Length f133x;

        /* JADX INFO: renamed from: y */
        Length f134y;

        Pattern() {
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "pattern";
        }
    }

    static class Image extends SvgPreserveAspectRatioContainer implements HasTransform {
        Length height;
        String href;
        Matrix transform;
        Length width;

        /* JADX INFO: renamed from: x */
        Length f124x;

        /* JADX INFO: renamed from: y */
        Length f125y;

        Image() {
        }

        @Override // com.caverock.androidsvg.SVG.HasTransform
        public void setTransform(Matrix matrix) {
            this.transform = matrix;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "image";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class View extends SvgViewBoxContainer implements NotDirectlyRendered {
        View() {
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "view";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class Mask extends SvgConditionalContainer implements NotDirectlyRendered {
        Length height;
        Boolean maskContentUnitsAreUser;
        Boolean maskUnitsAreUser;
        Length width;

        /* JADX INFO: renamed from: x */
        Length f130x;

        /* JADX INFO: renamed from: y */
        Length f131y;

        Mask() {
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "mask";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class SolidColor extends SvgElementBase implements SvgContainer {
        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public void addChild(SvgObject svgObject) {
        }

        SolidColor() {
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public List getChildren() {
            return Collections.EMPTY_LIST;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        String getNodeName() {
            return "solidColor";
        }
    }

    void setTitle(String str) {
        this.title = str;
    }

    void setDesc(String str) {
        this.desc = str;
    }

    static class PathDefinition implements PathInterface {
        private int commandsLength = 0;
        private int coordsLength = 0;
        private byte[] commands = new byte[8];
        private float[] coords = new float[16];

        PathDefinition() {
        }

        boolean isEmpty() {
            return this.commandsLength == 0;
        }

        private void addCommand(byte b) {
            int i = this.commandsLength;
            byte[] bArr = this.commands;
            if (i == bArr.length) {
                byte[] bArr2 = new byte[bArr.length * 2];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                this.commands = bArr2;
            }
            byte[] bArr3 = this.commands;
            int i2 = this.commandsLength;
            this.commandsLength = i2 + 1;
            bArr3[i2] = b;
        }

        private void coordsEnsure(int i) {
            float[] fArr = this.coords;
            if (fArr.length < this.coordsLength + i) {
                float[] fArr2 = new float[fArr.length * 2];
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                this.coords = fArr2;
            }
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public void moveTo(float f, float f2) {
            addCommand((byte) 0);
            coordsEnsure(2);
            float[] fArr = this.coords;
            int i = this.coordsLength;
            int i2 = i + 1;
            this.coordsLength = i2;
            fArr[i] = f;
            this.coordsLength = i + 2;
            fArr[i2] = f2;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public void lineTo(float f, float f2) {
            addCommand((byte) 1);
            coordsEnsure(2);
            float[] fArr = this.coords;
            int i = this.coordsLength;
            int i2 = i + 1;
            this.coordsLength = i2;
            fArr[i] = f;
            this.coordsLength = i + 2;
            fArr[i2] = f2;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public void cubicTo(float f, float f2, float f3, float f4, float f5, float f6) {
            addCommand((byte) 2);
            coordsEnsure(6);
            float[] fArr = this.coords;
            int i = this.coordsLength;
            int i2 = i + 1;
            this.coordsLength = i2;
            fArr[i] = f;
            int i3 = i + 2;
            this.coordsLength = i3;
            fArr[i2] = f2;
            int i4 = i + 3;
            this.coordsLength = i4;
            fArr[i3] = f3;
            int i5 = i + 4;
            this.coordsLength = i5;
            fArr[i4] = f4;
            int i6 = i + 5;
            this.coordsLength = i6;
            fArr[i5] = f5;
            this.coordsLength = i + 6;
            fArr[i6] = f6;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public void quadTo(float f, float f2, float f3, float f4) {
            addCommand((byte) 3);
            coordsEnsure(4);
            float[] fArr = this.coords;
            int i = this.coordsLength;
            int i2 = i + 1;
            this.coordsLength = i2;
            fArr[i] = f;
            int i3 = i + 2;
            this.coordsLength = i3;
            fArr[i2] = f2;
            int i4 = i + 3;
            this.coordsLength = i4;
            fArr[i3] = f3;
            this.coordsLength = i + 4;
            fArr[i4] = f4;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public void arcTo(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
            addCommand((byte) ((z ? 2 : 0) | 4 | (z2 ? 1 : 0)));
            coordsEnsure(5);
            float[] fArr = this.coords;
            int i = this.coordsLength;
            int i2 = i + 1;
            this.coordsLength = i2;
            fArr[i] = f;
            int i3 = i + 2;
            this.coordsLength = i3;
            fArr[i2] = f2;
            int i4 = i + 3;
            this.coordsLength = i4;
            fArr[i3] = f3;
            int i5 = i + 4;
            this.coordsLength = i5;
            fArr[i4] = f4;
            this.coordsLength = i + 5;
            fArr[i5] = f5;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public void close() {
            addCommand((byte) 8);
        }

        void enumeratePath(PathInterface pathInterface) {
            int i = 0;
            for (int i2 = 0; i2 < this.commandsLength; i2++) {
                byte b = this.commands[i2];
                if (b == 0) {
                    float[] fArr = this.coords;
                    int i3 = i + 1;
                    float f = fArr[i];
                    i += 2;
                    pathInterface.moveTo(f, fArr[i3]);
                } else if (b == 1) {
                    float[] fArr2 = this.coords;
                    int i4 = i + 1;
                    float f2 = fArr2[i];
                    i += 2;
                    pathInterface.lineTo(f2, fArr2[i4]);
                } else if (b == 2) {
                    float[] fArr3 = this.coords;
                    pathInterface.cubicTo(fArr3[i], fArr3[i + 1], fArr3[i + 2], fArr3[i + 3], fArr3[i + 4], fArr3[i + 5]);
                    i += 6;
                } else if (b == 3) {
                    float[] fArr4 = this.coords;
                    float f3 = fArr4[i];
                    float f4 = fArr4[i + 1];
                    int i5 = i + 3;
                    float f5 = fArr4[i + 2];
                    i += 4;
                    pathInterface.quadTo(f3, f4, f5, fArr4[i5]);
                } else if (b == 8) {
                    pathInterface.close();
                } else {
                    boolean z = (b & 2) != 0;
                    boolean z2 = (b & 1) != 0;
                    float[] fArr5 = this.coords;
                    pathInterface.arcTo(fArr5[i], fArr5[i + 1], fArr5[i + 2], z, z2, fArr5[i + 3], fArr5[i + 4]);
                    i += 5;
                }
            }
        }
    }

    SvgElementBase getElementById(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (str.equals(this.rootElement.f141id)) {
            return this.rootElement;
        }
        if (this.idToElementMap.containsKey(str)) {
            return (SvgElementBase) this.idToElementMap.get(str);
        }
        SvgElementBase elementById = getElementById(this.rootElement, str);
        this.idToElementMap.put(str, elementById);
        return elementById;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SvgElementBase getElementById(SvgContainer svgContainer, String str) {
        SvgElementBase elementById;
        SvgElementBase svgElementBase = (SvgElementBase) svgContainer;
        if (str.equals(svgElementBase.f141id)) {
            return svgElementBase;
        }
        for (Object obj : svgContainer.getChildren()) {
            if (obj instanceof SvgElementBase) {
                SvgElementBase svgElementBase2 = (SvgElementBase) obj;
                if (str.equals(svgElementBase2.f141id)) {
                    return svgElementBase2;
                }
                if ((obj instanceof SvgContainer) && (elementById = getElementById((SvgContainer) obj, str)) != null) {
                    return elementById;
                }
            }
        }
        return null;
    }
}
