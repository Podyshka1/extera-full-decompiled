package com.caverock.androidsvg;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.caverock.androidsvg.CSSParser;
import com.google.android.gms.cast.MediaError;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
public class SVG {
    private static boolean enableInternalEntities = true;
    private Svg rootElement = null;
    private String title = _UrlKt.FRAGMENT_ENCODE_SET;
    private String desc = _UrlKt.FRAGMENT_ENCODE_SET;
    private float renderDPI = 96.0f;
    private CSSParser.Ruleset cssRules = new CSSParser.Ruleset();
    private Map<String, SvgElementBase> idToElementMap = new HashMap();

    /* JADX INFO: loaded from: classes4.dex */
    public enum GradientSpread {
        pad,
        reflect,
        repeat
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface HasTransform {
        void setTransform(Matrix matrix);
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface NotDirectlyRendered {
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface PathInterface {
        void arcTo(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5);

        void close();

        void cubicTo(float f, float f2, float f3, float f4, float f5, float f6);

        void lineTo(float f, float f2);

        void moveTo(float f, float f2);

        void quadTo(float f, float f2, float f3, float f4);
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface SvgConditional {
        String getRequiredExtensions();

        Set<String> getRequiredFeatures();

        Set<String> getRequiredFonts();

        Set<String> getRequiredFormats();

        Set<String> getSystemLanguage();

        void setRequiredExtensions(String str);

        void setRequiredFeatures(Set<String> set);

        void setRequiredFonts(Set<String> set);

        void setRequiredFormats(Set<String> set);

        void setSystemLanguage(Set<String> set);
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface SvgContainer {
        void addChild(SvgObject svgObject);

        List<SvgObject> getChildren();
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class SvgElement extends SvgElementBase {
        Box boundingBox = null;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class SvgObject {
        SVG document;
        SvgContainer parent;

        public abstract String getNodeName();
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class SvgPaint implements Cloneable {
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class SvgPreserveAspectRatioContainer extends SvgConditionalContainer {
        PreserveAspectRatio preserveAspectRatio = null;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class SvgViewBoxContainer extends SvgPreserveAspectRatioContainer {
        Box viewBox;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface TextChild {
        TextRoot getTextRoot();
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class TextPositionedContainer extends TextContainer {
        List<Length> dx;
        List<Length> dy;

        /* JADX INFO: renamed from: x */
        List<Length> f64x;

        /* JADX INFO: renamed from: y */
        List<Length> f65y;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface TextRoot {
    }

    /* JADX INFO: loaded from: classes4.dex */
    public enum Unit {
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

    public static SVGExternalFileResolver getFileResolver() {
        return null;
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
            f$$ExternalSyntheticBUOutline1.m178m("SVG document is empty");
            return 0.0f;
        }
        return getDocumentDimensions(this.renderDPI).width;
    }

    public void setDocumentWidth(float f) {
        Svg svg = this.rootElement;
        if (svg == null) {
            f$$ExternalSyntheticBUOutline1.m178m("SVG document is empty");
        } else {
            svg.width = new Length(f);
        }
    }

    public float getDocumentHeight() {
        if (this.rootElement == null) {
            f$$ExternalSyntheticBUOutline1.m178m("SVG document is empty");
            return 0.0f;
        }
        return getDocumentDimensions(this.renderDPI).height;
    }

    public void setDocumentHeight(float f) {
        Svg svg = this.rootElement;
        if (svg == null) {
            f$$ExternalSyntheticBUOutline1.m178m("SVG document is empty");
        } else {
            svg.height = new Length(f);
        }
    }

    public RectF getDocumentViewBox() {
        Svg svg = this.rootElement;
        if (svg == null) {
            f$$ExternalSyntheticBUOutline1.m178m("SVG document is empty");
            return null;
        }
        Box box = svg.viewBox;
        if (box == null) {
            return null;
        }
        return box.toRectF();
    }

    public Svg getRootElement() {
        return this.rootElement;
    }

    public void setRootElement(Svg svg) {
        this.rootElement = svg;
    }

    public SvgObject resolveIRI(String str) {
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

    public void addCSSRules(CSSParser.Ruleset ruleset) {
        this.cssRules.addAll(ruleset);
    }

    public List<CSSParser.Rule> getCSSRules() {
        return this.cssRules.getRules();
    }

    public boolean hasCSSRules() {
        return !this.cssRules.isEmpty();
    }

    public void clearRenderCSSRules() {
        this.cssRules.removeFromSource(CSSParser.Source.RenderOptions);
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Box {
        float height;
        float minX;
        float minY;
        float width;

        public Box(float f, float f2, float f3, float f4) {
            this.minX = f;
            this.minY = f2;
            this.width = f3;
            this.height = f4;
        }

        public Box(Box box) {
            this.minX = box.minX;
            this.minY = box.minY;
            this.width = box.width;
            this.height = box.height;
        }

        public static Box fromLimits(float f, float f2, float f3, float f4) {
            return new Box(f, f2, f3 - f, f4 - f2);
        }

        public RectF toRectF() {
            return new RectF(this.minX, this.minY, maxX(), maxY());
        }

        public float maxX() {
            return this.minX + this.width;
        }

        public float maxY() {
            return this.minY + this.height;
        }

        public void union(Box box) {
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

    /* JADX INFO: loaded from: classes4.dex */
    public static class Style implements Cloneable {
        CSSClipRect clip;
        String clipPath;
        FillRule clipRule;
        Colour color;
        TextDirection direction;
        Boolean display;
        SvgPaint fill;
        Float fillOpacity;
        FillRule fillRule;
        List<String> fontFamily;
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

        public static Style getDefaultStyle() {
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
            style.fontWeight = Integer.valueOf(MediaError.DetailedErrorCode.MANIFEST_UNKNOWN);
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

        public void resetNonInheritingProperties(boolean z) {
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

        public Object clone() {
            Style style = (Style) super.clone();
            Length[] lengthArr = this.strokeDashArray;
            if (lengthArr != null) {
                style.strokeDashArray = (Length[]) lengthArr.clone();
            }
            return style;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Colour extends SvgPaint {
        static final Colour BLACK = new Colour(-16777216);
        static final Colour TRANSPARENT = new Colour(0);
        int colour;

        public Colour(int i) {
            this.colour = i;
        }

        public String toString() {
            return String.format("#%08x", Integer.valueOf(this.colour));
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class CurrentColor extends SvgPaint {
        private static CurrentColor instance = new CurrentColor();

        private CurrentColor() {
        }

        public static CurrentColor getInstance() {
            return instance;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class PaintReference extends SvgPaint {
        SvgPaint fallback;
        String href;

        public PaintReference(String str, SvgPaint svgPaint) {
            this.href = str;
            this.fallback = svgPaint;
        }

        public String toString() {
            return this.href + " " + this.fallback;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Length implements Cloneable {
        Unit unit;
        float value;

        public Length(float f, Unit unit) {
            this.value = f;
            this.unit = unit;
        }

        public Length(float f) {
            this.value = f;
            this.unit = Unit.px;
        }

        public float floatValue() {
            return this.value;
        }

        public float floatValueX(SVGAndroidRenderer sVGAndroidRenderer) {
            switch (C09651.$SwitchMap$com$caverock$androidsvg$SVG$Unit[this.unit.ordinal()]) {
                case 1:
                    return this.value;
                case 2:
                    return this.value * sVGAndroidRenderer.getCurrentFontSize();
                case 3:
                    return this.value * sVGAndroidRenderer.getCurrentFontXHeight();
                case 4:
                    return this.value * sVGAndroidRenderer.getDPI();
                case 5:
                    return (this.value * sVGAndroidRenderer.getDPI()) / 2.54f;
                case 6:
                    return (this.value * sVGAndroidRenderer.getDPI()) / 25.4f;
                case 7:
                    return (this.value * sVGAndroidRenderer.getDPI()) / 72.0f;
                case 8:
                    return (this.value * sVGAndroidRenderer.getDPI()) / 6.0f;
                case 9:
                    Box currentViewPortInUserUnits = sVGAndroidRenderer.getCurrentViewPortInUserUnits();
                    float f = this.value;
                    return currentViewPortInUserUnits == null ? f : (f * currentViewPortInUserUnits.width) / 100.0f;
                default:
                    return this.value;
            }
        }

        public float floatValueY(SVGAndroidRenderer sVGAndroidRenderer) {
            if (this.unit == Unit.percent) {
                Box currentViewPortInUserUnits = sVGAndroidRenderer.getCurrentViewPortInUserUnits();
                float f = this.value;
                return currentViewPortInUserUnits == null ? f : (f * currentViewPortInUserUnits.height) / 100.0f;
            }
            return floatValueX(sVGAndroidRenderer);
        }

        public float floatValue(SVGAndroidRenderer sVGAndroidRenderer) {
            float fSqrt;
            if (this.unit == Unit.percent) {
                Box currentViewPortInUserUnits = sVGAndroidRenderer.getCurrentViewPortInUserUnits();
                if (currentViewPortInUserUnits == null) {
                    return this.value;
                }
                float f = currentViewPortInUserUnits.width;
                if (f == currentViewPortInUserUnits.height) {
                    fSqrt = this.value * f;
                } else {
                    fSqrt = this.value * ((float) (Math.sqrt((f * f) + (r6 * r6)) / 1.414213562373095d));
                }
                return fSqrt / 100.0f;
            }
            return floatValueX(sVGAndroidRenderer);
        }

        public float floatValue(SVGAndroidRenderer sVGAndroidRenderer, float f) {
            if (this.unit == Unit.percent) {
                return (this.value * f) / 100.0f;
            }
            return floatValueX(sVGAndroidRenderer);
        }

        public float floatValue(float f) {
            int i = C09651.$SwitchMap$com$caverock$androidsvg$SVG$Unit[this.unit.ordinal()];
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

        public boolean isZero() {
            return this.value == 0.0f;
        }

        public boolean isNegative() {
            return this.value < 0.0f;
        }

        public String toString() {
            return String.valueOf(this.value) + this.unit;
        }
    }

    /* JADX INFO: renamed from: com.caverock.androidsvg.SVG$1 */
    /* JADX INFO: loaded from: classes4.dex */
    public static /* synthetic */ class C09651 {
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

    /* JADX INFO: loaded from: classes4.dex */
    public static class CSSClipRect {
        Length bottom;
        Length left;
        Length right;
        Length top;

        public CSSClipRect(Length length, Length length2, Length length3, Length length4) {
            this.top = length;
            this.right = length2;
            this.bottom = length3;
            this.left = length4;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class SvgElementBase extends SvgObject {
        String id = null;
        Boolean spacePreserve = null;
        Style baseStyle = null;
        Style style = null;
        List<String> classNames = null;

        public String toString() {
            return getNodeName();
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class SvgConditionalElement extends SvgElement implements SvgConditional {
        Set<String> requiredFeatures = null;
        String requiredExtensions = null;
        Set<String> systemLanguage = null;
        Set<String> requiredFormats = null;
        Set<String> requiredFonts = null;

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public void setRequiredFeatures(Set<String> set) {
            this.requiredFeatures = set;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public Set<String> getRequiredFeatures() {
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
        public void setSystemLanguage(Set<String> set) {
            this.systemLanguage = set;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public Set<String> getSystemLanguage() {
            return this.systemLanguage;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public void setRequiredFormats(Set<String> set) {
            this.requiredFormats = set;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public Set<String> getRequiredFormats() {
            return this.requiredFormats;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public void setRequiredFonts(Set<String> set) {
            this.requiredFonts = set;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public Set<String> getRequiredFonts() {
            return this.requiredFonts;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class SvgConditionalContainer extends SvgElement implements SvgContainer, SvgConditional {
        List<SvgObject> children = new ArrayList();
        Set<String> requiredFeatures = null;
        String requiredExtensions = null;
        Set<String> systemLanguage = null;
        Set<String> requiredFormats = null;
        Set<String> requiredFonts = null;

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public Set<String> getSystemLanguage() {
            return null;
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public List<SvgObject> getChildren() {
            return this.children;
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public void addChild(SvgObject svgObject) {
            this.children.add(svgObject);
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public void setRequiredFeatures(Set<String> set) {
            this.requiredFeatures = set;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public Set<String> getRequiredFeatures() {
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
        public void setSystemLanguage(Set<String> set) {
            this.systemLanguage = set;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public void setRequiredFormats(Set<String> set) {
            this.requiredFormats = set;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public Set<String> getRequiredFormats() {
            return this.requiredFormats;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public void setRequiredFonts(Set<String> set) {
            this.requiredFonts = set;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public Set<String> getRequiredFonts() {
            return this.requiredFonts;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Svg extends SvgViewBoxContainer {
        Length height;
        public String version;
        Length width;

        /* JADX INFO: renamed from: x */
        Length f61x;

        /* JADX INFO: renamed from: y */
        Length f62y;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "svg";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Group extends SvgConditionalContainer implements HasTransform {
        Matrix transform;

        @Override // com.caverock.androidsvg.SVG.HasTransform
        public void setTransform(Matrix matrix) {
            this.transform = matrix;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "group";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Defs extends Group implements NotDirectlyRendered {
        @Override // com.caverock.androidsvg.SVG.Group, com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "defs";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class GraphicsElement extends SvgConditionalElement implements HasTransform {
        Matrix transform;

        @Override // com.caverock.androidsvg.SVG.HasTransform
        public void setTransform(Matrix matrix) {
            this.transform = matrix;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Use extends Group {
        Length height;
        String href;
        Length width;

        /* JADX INFO: renamed from: x */
        Length f66x;

        /* JADX INFO: renamed from: y */
        Length f67y;

        @Override // com.caverock.androidsvg.SVG.Group, com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "use";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Path extends GraphicsElement {

        /* JADX INFO: renamed from: d */
        PathDefinition f56d;
        Float pathLength;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "path";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Rect extends GraphicsElement {
        Length height;
        Length rx;
        Length ry;
        Length width;

        /* JADX INFO: renamed from: x */
        Length f59x;

        /* JADX INFO: renamed from: y */
        Length f60y;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "rect";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Circle extends GraphicsElement {
        Length cx;
        Length cy;

        /* JADX INFO: renamed from: r */
        Length f51r;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "circle";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Ellipse extends GraphicsElement {
        Length cx;
        Length cy;
        Length rx;
        Length ry;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "ellipse";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Line extends GraphicsElement {
        Length x1;
        Length x2;
        Length y1;
        Length y2;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "line";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class PolyLine extends GraphicsElement {
        float[] points;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "polyline";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Polygon extends PolyLine {
        @Override // com.caverock.androidsvg.SVG.PolyLine, com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "polygon";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class TextContainer extends SvgConditionalContainer {
        @Override // com.caverock.androidsvg.SVG.SvgConditionalContainer, com.caverock.androidsvg.SVG.SvgContainer
        public void addChild(SvgObject svgObject) throws SVGParseException {
            if (svgObject instanceof TextChild) {
                this.children.add(svgObject);
            } else {
                SVGParser$$ExternalSyntheticBUOutline2.m200m("Text content elements cannot contain ", svgObject, " elements.");
            }
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Text extends TextPositionedContainer implements TextRoot, HasTransform {
        Matrix transform;

        @Override // com.caverock.androidsvg.SVG.HasTransform
        public void setTransform(Matrix matrix) {
            this.transform = matrix;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "text";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class TSpan extends TextPositionedContainer implements TextChild {
        private TextRoot textRoot;

        public void setTextRoot(TextRoot textRoot) {
            this.textRoot = textRoot;
        }

        @Override // com.caverock.androidsvg.SVG.TextChild
        public TextRoot getTextRoot() {
            return this.textRoot;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "tspan";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class TextSequence extends SvgObject implements TextChild {
        String text;
        private TextRoot textRoot;

        public TextSequence(String str) {
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
    public static class TRef extends TextContainer implements TextChild {
        String href;
        private TextRoot textRoot;

        public void setTextRoot(TextRoot textRoot) {
            this.textRoot = textRoot;
        }

        @Override // com.caverock.androidsvg.SVG.TextChild
        public TextRoot getTextRoot() {
            return this.textRoot;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "tref";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class TextPath extends TextContainer implements TextChild {
        String href;
        Length startOffset;
        private TextRoot textRoot;

        public void setTextRoot(TextRoot textRoot) {
            this.textRoot = textRoot;
        }

        @Override // com.caverock.androidsvg.SVG.TextChild
        public TextRoot getTextRoot() {
            return this.textRoot;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "textPath";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Switch extends Group {
        @Override // com.caverock.androidsvg.SVG.Group, com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "switch";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Symbol extends SvgViewBoxContainer implements NotDirectlyRendered {
        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "symbol";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Marker extends SvgViewBoxContainer implements NotDirectlyRendered {
        Length markerHeight;
        boolean markerUnitsAreUser;
        Length markerWidth;
        Float orient;
        Length refX;
        Length refY;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "marker";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class GradientElement extends SvgElementBase implements SvgContainer {
        List<SvgObject> children = new ArrayList();
        Matrix gradientTransform;
        Boolean gradientUnitsAreUser;
        String href;
        GradientSpread spreadMethod;

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public List<SvgObject> getChildren() {
            return this.children;
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public void addChild(SvgObject svgObject) throws SVGParseException {
            if (svgObject instanceof Stop) {
                this.children.add(svgObject);
            } else {
                SVGParser$$ExternalSyntheticBUOutline2.m200m("Gradient elements cannot contain ", svgObject, " elements.");
            }
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Stop extends SvgElementBase implements SvgContainer {
        Float offset;

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public void addChild(SvgObject svgObject) {
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public List<SvgObject> getChildren() {
            return Collections.EMPTY_LIST;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "stop";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class SvgLinearGradient extends GradientElement {
        Length x1;
        Length x2;
        Length y1;
        Length y2;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "linearGradient";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class SvgRadialGradient extends GradientElement {
        Length cx;
        Length cy;
        Length fx;
        Length fy;

        /* JADX INFO: renamed from: r */
        Length f63r;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "radialGradient";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class ClipPath extends Group implements NotDirectlyRendered {
        Boolean clipPathUnitsAreUser;

        @Override // com.caverock.androidsvg.SVG.Group, com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "clipPath";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Pattern extends SvgViewBoxContainer implements NotDirectlyRendered {
        Length height;
        String href;
        Boolean patternContentUnitsAreUser;
        Matrix patternTransform;
        Boolean patternUnitsAreUser;
        Length width;

        /* JADX INFO: renamed from: x */
        Length f57x;

        /* JADX INFO: renamed from: y */
        Length f58y;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "pattern";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Image extends SvgPreserveAspectRatioContainer implements HasTransform {
        Length height;
        String href;
        Matrix transform;
        Length width;

        /* JADX INFO: renamed from: x */
        Length f52x;

        /* JADX INFO: renamed from: y */
        Length f53y;

        @Override // com.caverock.androidsvg.SVG.HasTransform
        public void setTransform(Matrix matrix) {
            this.transform = matrix;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "image";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class View extends SvgViewBoxContainer implements NotDirectlyRendered {
        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "view";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Mask extends SvgConditionalContainer implements NotDirectlyRendered {
        Length height;
        Boolean maskContentUnitsAreUser;
        Boolean maskUnitsAreUser;
        Length width;

        /* JADX INFO: renamed from: x */
        Length f54x;

        /* JADX INFO: renamed from: y */
        Length f55y;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "mask";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class SolidColor extends SvgElementBase implements SvgContainer {
        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public void addChild(SvgObject svgObject) {
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public List<SvgObject> getChildren() {
            return Collections.EMPTY_LIST;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "solidColor";
        }
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class PathDefinition implements PathInterface {
        private int commandsLength = 0;
        private int coordsLength = 0;
        private byte[] commands = new byte[8];
        private float[] coords = new float[16];

        public boolean isEmpty() {
            return this.commandsLength == 0;
        }

        private void addCommand(byte b2) {
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
            bArr3[i2] = b2;
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

        public void enumeratePath(PathInterface pathInterface) {
            int i = 0;
            for (int i2 = 0; i2 < this.commandsLength; i2++) {
                byte b2 = this.commands[i2];
                if (b2 == 0) {
                    float[] fArr = this.coords;
                    int i3 = i + 1;
                    float f = fArr[i];
                    i += 2;
                    pathInterface.moveTo(f, fArr[i3]);
                } else if (b2 == 1) {
                    float[] fArr2 = this.coords;
                    int i4 = i + 1;
                    float f2 = fArr2[i];
                    i += 2;
                    pathInterface.lineTo(f2, fArr2[i4]);
                } else if (b2 == 2) {
                    float[] fArr3 = this.coords;
                    pathInterface.cubicTo(fArr3[i], fArr3[i + 1], fArr3[i + 2], fArr3[i + 3], fArr3[i + 4], fArr3[i + 5]);
                    i += 6;
                } else if (b2 == 3) {
                    float[] fArr4 = this.coords;
                    float f3 = fArr4[i];
                    float f4 = fArr4[i + 1];
                    int i5 = i + 3;
                    float f5 = fArr4[i + 2];
                    i += 4;
                    pathInterface.quadTo(f3, f4, f5, fArr4[i5]);
                } else if (b2 == 8) {
                    pathInterface.close();
                } else {
                    boolean z = (b2 & 2) != 0;
                    boolean z2 = (b2 & 1) != 0;
                    float[] fArr5 = this.coords;
                    pathInterface.arcTo(fArr5[i], fArr5[i + 1], fArr5[i + 2], z, z2, fArr5[i + 3], fArr5[i + 4]);
                    i += 5;
                }
            }
        }
    }

    public SvgElementBase getElementById(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (str.equals(this.rootElement.id)) {
            return this.rootElement;
        }
        if (this.idToElementMap.containsKey(str)) {
            return this.idToElementMap.get(str);
        }
        SvgElementBase elementById = getElementById(this.rootElement, str);
        this.idToElementMap.put(str, elementById);
        return elementById;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SvgElementBase getElementById(SvgContainer svgContainer, String str) {
        SvgElementBase elementById;
        SvgElementBase svgElementBase = (SvgElementBase) svgContainer;
        if (str.equals(svgElementBase.id)) {
            return svgElementBase;
        }
        for (Object obj : svgContainer.getChildren()) {
            if (obj instanceof SvgElementBase) {
                SvgElementBase svgElementBase2 = (SvgElementBase) obj;
                if (str.equals(svgElementBase2.id)) {
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
