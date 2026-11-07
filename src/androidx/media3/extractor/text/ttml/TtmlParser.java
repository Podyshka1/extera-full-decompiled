package androidx.media3.extractor.text.ttml;

import android.text.Layout;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ColorParser;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.common.util.XmlPullParserUtil;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.LegacySubtitleUtil;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleDecoderException;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.base.Ascii;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.Constants$$ExternalSyntheticBUOutline0;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes4.dex */
public final class TtmlParser implements SubtitleParser {
    private final XmlPullParserFactory xmlParserFactory;
    private static final Pattern CLOCK_TIME = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    private static final Pattern OFFSET_TIME = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    private static final Pattern FONT_SIZE = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    static final Pattern SIGNED_PERCENTAGE = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    static final Pattern PERCENTAGE_COORDINATES = Pattern.compile("^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$");
    private static final Pattern PIXEL_COORDINATES = Pattern.compile("^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$");
    private static final Pattern CELL_RESOLUTION = Pattern.compile("^(\\d+) (\\d+)$");
    private static final FrameAndTickRate DEFAULT_FRAME_AND_TICK_RATE = new FrameAndTickRate(30.0f, 1, 1);

    @Override // androidx.media3.extractor.text.SubtitleParser
    public int getCueReplacementBehavior() {
        return 1;
    }

    public TtmlParser() {
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            this.xmlParserFactory = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            Make$Map$$ExternalSyntheticBUOutline0.m973m("Couldn't create XmlPullParserFactory instance", e);
            throw null;
        }
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public void parse(byte[] bArr, int i, int i2, SubtitleParser.OutputOptions outputOptions, Consumer<CuesWithTiming> consumer) {
        LegacySubtitleUtil.toCuesWithTiming(parseToLegacySubtitle(bArr, i, i2), outputOptions, consumer);
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public Subtitle parseToLegacySubtitle(byte[] bArr, int i, int i2) {
        Subtitle subtitle;
        Subtitle subtitle2 = null;
        try {
            XmlPullParser xmlPullParserNewPullParser = this.xmlParserFactory.newPullParser();
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            HashMap map3 = new HashMap();
            map2.put(_UrlKt.FRAGMENT_ENCODE_SET, new TtmlRegion(_UrlKt.FRAGMENT_ENCODE_SET));
            xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(bArr, i, i2), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            int eventType = xmlPullParserNewPullParser.getEventType();
            FrameAndTickRate frameAndTickRates = DEFAULT_FRAME_AND_TICK_RATE;
            TtmlSubtitle ttmlSubtitle = null;
            TtsExtent ttsExtent = null;
            int i3 = 0;
            int cellRows = 15;
            while (eventType != 1) {
                TtmlNode ttmlNode = (TtmlNode) arrayDeque.peek();
                if (i3 == 0) {
                    subtitle = subtitle2;
                    try {
                        String name = xmlPullParserNewPullParser.getName();
                        if (eventType == 2) {
                            if ("tt".equals(name)) {
                                frameAndTickRates = parseFrameAndTickRates(xmlPullParserNewPullParser);
                                cellRows = parseCellRows(xmlPullParserNewPullParser, 15);
                                ttsExtent = parseTtsExtent(xmlPullParserNewPullParser);
                            }
                            TtsExtent ttsExtent2 = ttsExtent;
                            FrameAndTickRate frameAndTickRate = frameAndTickRates;
                            int i4 = cellRows;
                            if (!isSupportedTag(name)) {
                                Log.m162i("TtmlParser", "Ignoring unsupported tag: " + xmlPullParserNewPullParser.getName());
                            } else {
                                if ("head".equals(name)) {
                                    parseHeader(xmlPullParserNewPullParser, map, i4, ttsExtent2, map2, map3);
                                } else {
                                    try {
                                        TtmlNode node = parseNode(xmlPullParserNewPullParser, ttmlNode, map2, frameAndTickRate);
                                        arrayDeque.push(node);
                                        if (ttmlNode != null) {
                                            ttmlNode.addChild(node);
                                        }
                                    } catch (SubtitleDecoderException e) {
                                        Log.m164w("TtmlParser", "Suppressing parser error", e);
                                        i3++;
                                    }
                                }
                                cellRows = i4;
                                frameAndTickRates = frameAndTickRate;
                                ttsExtent = ttsExtent2;
                            }
                            i3++;
                            cellRows = i4;
                            frameAndTickRates = frameAndTickRate;
                            ttsExtent = ttsExtent2;
                        } else if (eventType == 4) {
                            ((TtmlNode) Assertions.checkNotNull(ttmlNode)).addChild(TtmlNode.buildTextNode(xmlPullParserNewPullParser.getText()));
                        } else if (eventType == 3) {
                            if (xmlPullParserNewPullParser.getName().equals("tt")) {
                                ttmlSubtitle = new TtmlSubtitle((TtmlNode) Assertions.checkNotNull((TtmlNode) arrayDeque.peek()), map, map2, map3);
                            }
                            arrayDeque.pop();
                        }
                    } catch (IOException e2) {
                        e = e2;
                        Constants$$ExternalSyntheticBUOutline0.m958m("Unexpected error when reading input.", e);
                        return subtitle;
                    } catch (XmlPullParserException e3) {
                        e = e3;
                        Constants$$ExternalSyntheticBUOutline0.m958m("Unable to decode source", e);
                        return subtitle;
                    }
                } else {
                    subtitle = subtitle2;
                    if (eventType == 2) {
                        i3++;
                    } else if (eventType == 3) {
                        i3--;
                    }
                }
                xmlPullParserNewPullParser.next();
                eventType = xmlPullParserNewPullParser.getEventType();
                subtitle2 = subtitle;
            }
            subtitle = subtitle2;
            return (Subtitle) Assertions.checkNotNull(ttmlSubtitle);
        } catch (IOException e4) {
            e = e4;
            subtitle = subtitle2;
        } catch (XmlPullParserException e5) {
            e = e5;
            subtitle = subtitle2;
        }
    }

    private static FrameAndTickRate parseFrameAndTickRates(XmlPullParser xmlPullParser) {
        float f;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int i = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            Assertions.checkArgument(Util.split(attributeValue2, " ").length == 2, "frameRateMultiplier doesn't have 2 parts");
            f = Integer.parseInt(r2[0]) / Integer.parseInt(r2[1]);
        } else {
            f = 1.0f;
        }
        FrameAndTickRate frameAndTickRate = DEFAULT_FRAME_AND_TICK_RATE;
        int i2 = frameAndTickRate.subFrameRate;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i2 = Integer.parseInt(attributeValue3);
        }
        int i3 = frameAndTickRate.tickRate;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i3 = Integer.parseInt(attributeValue4);
        }
        return new FrameAndTickRate(i * f, i2, i3);
    }

    private static int parseCellRows(XmlPullParser xmlPullParser, int i) {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return i;
        }
        Matcher matcher = CELL_RESOLUTION.matcher(attributeValue);
        if (!matcher.matches()) {
            Log.m163w("TtmlParser", "Ignoring malformed cell resolution: ".concat(attributeValue));
            return i;
        }
        boolean z = true;
        try {
            int i2 = Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1)));
            int i3 = Integer.parseInt((String) Assertions.checkNotNull(matcher.group(2)));
            if (i2 == 0 || i3 == 0) {
                z = false;
            }
            Assertions.checkArgument(z, "Invalid cell resolution " + i2 + " " + i3);
            return i3;
        } catch (NumberFormatException unused) {
            Log.m163w("TtmlParser", "Ignoring malformed cell resolution: ".concat(attributeValue));
            return i;
        }
    }

    private static TtsExtent parseTtsExtent(XmlPullParser xmlPullParser) {
        String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, "extent");
        if (attributeValue == null) {
            return null;
        }
        Matcher matcher = PIXEL_COORDINATES.matcher(attributeValue);
        if (!matcher.matches()) {
            Log.m163w("TtmlParser", "Ignoring non-pixel tts extent: ".concat(attributeValue));
            return null;
        }
        try {
            return new TtsExtent(Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1))), Integer.parseInt((String) Assertions.checkNotNull(matcher.group(2))));
        } catch (NumberFormatException unused) {
            Log.m163w("TtmlParser", "Ignoring malformed tts extent: ".concat(attributeValue));
            return null;
        }
    }

    private static Map<String, TtmlStyle> parseHeader(XmlPullParser xmlPullParser, Map<String, TtmlStyle> map, int i, TtsExtent ttsExtent, Map<String, TtmlRegion> map2, Map<String, String> map3) throws XmlPullParserException, IOException {
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "style")) {
                String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, "style");
                TtmlStyle styleAttributes = parseStyleAttributes(xmlPullParser, new TtmlStyle());
                if (attributeValue != null) {
                    for (String str : parseStyleIds(attributeValue)) {
                        styleAttributes.chain(map.get(str));
                    }
                }
                String id = styleAttributes.getId();
                if (id != null) {
                    map.put(id, styleAttributes);
                }
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "region")) {
                TtmlRegion regionAttributes = parseRegionAttributes(xmlPullParser, i, ttsExtent, map);
                if (regionAttributes != null) {
                    map2.put(regionAttributes.id, regionAttributes);
                }
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "metadata")) {
                parseMetadata(xmlPullParser, map3);
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, "head"));
        return map;
    }

    private static void parseMetadata(XmlPullParser xmlPullParser, Map<String, String> map) throws XmlPullParserException, IOException {
        String attributeValue;
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "image") && (attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, "id")) != null) {
                map.put(attributeValue, xmlPullParser.nextText());
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, "metadata"));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0204  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static TtmlRegion parseRegionAttributes(XmlPullParser xmlPullParser, int i, TtsExtent ttsExtent, Map<String, TtmlStyle> map) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        int i2;
        int i3;
        float f6;
        int i4;
        float f7;
        float f8;
        String attributeValue;
        TtmlStyle ttmlStyle;
        String attributeValue2;
        TtmlStyle ttmlStyle2;
        String attributeValue3 = XmlPullParserUtil.getAttributeValue(xmlPullParser, "id");
        if (attributeValue3 == null) {
            return null;
        }
        String attributeValue4 = XmlPullParserUtil.getAttributeValue(xmlPullParser, "origin");
        if (attributeValue4 == null && (attributeValue2 = XmlPullParserUtil.getAttributeValue(xmlPullParser, "style")) != null && (ttmlStyle2 = map.get(attributeValue2)) != null) {
            attributeValue4 = ttmlStyle2.getOrigin();
        }
        int i5 = 2;
        if (attributeValue4 != null) {
            Matcher matcher = PERCENTAGE_COORDINATES.matcher(attributeValue4);
            Matcher matcher2 = PIXEL_COORDINATES.matcher(attributeValue4);
            if (matcher.matches()) {
                try {
                    f2 = Float.parseFloat((String) Assertions.checkNotNull(matcher.group(1))) / 100.0f;
                    f = Float.parseFloat((String) Assertions.checkNotNull(matcher.group(2))) / 100.0f;
                } catch (NumberFormatException unused) {
                    Log.m163w("TtmlParser", "Ignoring region with malformed origin: ".concat(attributeValue4));
                    return null;
                }
            } else {
                if (!matcher2.matches()) {
                    Log.m163w("TtmlParser", "Ignoring region with unsupported origin: ".concat(attributeValue4));
                    return null;
                }
                if (ttsExtent == null) {
                    Log.m163w("TtmlParser", "Ignoring region with missing tts:extent: ".concat(attributeValue4));
                    return null;
                }
                try {
                    float f9 = Integer.parseInt((String) Assertions.checkNotNull(matcher2.group(1))) / ttsExtent.width;
                    float f10 = Integer.parseInt((String) Assertions.checkNotNull(matcher2.group(2))) / ttsExtent.height;
                    f2 = f9;
                    f = f10;
                } catch (NumberFormatException unused2) {
                    Log.m163w("TtmlParser", "Ignoring region with malformed origin: ".concat(attributeValue4));
                    return null;
                }
            }
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        String attributeValue5 = XmlPullParserUtil.getAttributeValue(xmlPullParser, "extent");
        if (attributeValue5 == null && (attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, "style")) != null && (ttmlStyle = map.get(attributeValue)) != null) {
            attributeValue5 = ttmlStyle.getExtent();
        }
        if (attributeValue5 != null) {
            Matcher matcher3 = PERCENTAGE_COORDINATES.matcher(attributeValue5);
            Matcher matcher4 = PIXEL_COORDINATES.matcher(attributeValue5);
            f3 = 1.0f;
            if (matcher3.matches()) {
                try {
                    f4 = Float.parseFloat((String) Assertions.checkNotNull(matcher3.group(1))) / 100.0f;
                    f8 = Float.parseFloat((String) Assertions.checkNotNull(matcher3.group(2))) / 100.0f;
                } catch (NumberFormatException unused3) {
                    Log.m163w("TtmlParser", "Ignoring region with malformed extent: " + attributeValue4);
                    return null;
                }
            } else {
                if (!matcher4.matches()) {
                    Log.m163w("TtmlParser", "Ignoring region with unsupported extent: " + attributeValue4);
                    return null;
                }
                if (ttsExtent == null) {
                    Log.m163w("TtmlParser", "Ignoring region with missing tts:extent: " + attributeValue4);
                    return null;
                }
                try {
                    float f11 = Integer.parseInt((String) Assertions.checkNotNull(matcher4.group(1))) / ttsExtent.width;
                    f8 = Integer.parseInt((String) Assertions.checkNotNull(matcher4.group(2))) / ttsExtent.height;
                    f4 = f11;
                } catch (NumberFormatException unused4) {
                    Log.m163w("TtmlParser", "Ignoring region with malformed extent: " + attributeValue4);
                    return null;
                }
            }
            f5 = f8;
        } else {
            f3 = 1.0f;
            f4 = 1.0f;
            f5 = 1.0f;
        }
        String attributeValue6 = XmlPullParserUtil.getAttributeValue(xmlPullParser, "displayAlign");
        int i6 = 0;
        if (attributeValue6 != null) {
            String lowerCase = Ascii.toLowerCase(attributeValue6);
            lowerCase.getClass();
            if (lowerCase.equals("center")) {
                f7 = f + (f5 / 2.0f);
                i2 = i;
                i3 = 2;
                i5 = 1;
            } else {
                if (lowerCase.equals("after")) {
                    f7 = f + f5;
                    i2 = i;
                    i3 = 2;
                }
                i2 = i;
                i3 = 2;
                f6 = f;
                i5 = 0;
            }
            f6 = f7;
        } else {
            i2 = i;
            i3 = 2;
            f6 = f;
            i5 = 0;
        }
        float f12 = f3 / i2;
        String attributeValue7 = XmlPullParserUtil.getAttributeValue(xmlPullParser, "writingMode");
        if (attributeValue7 != null) {
            String lowerCase2 = Ascii.toLowerCase(attributeValue7);
            lowerCase2.getClass();
            switch (lowerCase2.hashCode()) {
                case 3694:
                    if (!lowerCase2.equals("tb")) {
                        i6 = -1;
                    }
                    break;
                case 3553396:
                    i6 = !lowerCase2.equals("tblr") ? -1 : 1;
                    break;
                case 3553576:
                    i6 = !lowerCase2.equals("tbrl") ? -1 : i3;
                    break;
                default:
                    i6 = -1;
                    break;
            }
            switch (i6) {
                case 0:
                case 1:
                    i4 = i3;
                    break;
                case 2:
                    i4 = 1;
                    break;
                default:
                    i4 = Integer.MIN_VALUE;
                    break;
            }
        }
        return new TtmlRegion(attributeValue3, f2, f6, 0, i5, f4, f5, 1, f12, i4);
    }

    private static String[] parseStyleIds(String str) {
        String strTrim = str.trim();
        return strTrim.isEmpty() ? new String[0] : Util.split(strTrim, "\\s+");
    }

    private static TtmlStyle parseStyleAttributes(XmlPullParser xmlPullParser, TtmlStyle ttmlStyle) {
        String attributeValue;
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            attributeValue = xmlPullParser.getAttributeValue(i);
            String attributeName = xmlPullParser.getAttributeName(i);
            attributeName.getClass();
            switch (attributeName) {
                case "fontStyle":
                    ttmlStyle = createIfNull(ttmlStyle).setItalic("italic".equalsIgnoreCase(attributeValue));
                    break;
                case "extent":
                    ttmlStyle = createIfNull(ttmlStyle).setExtent(attributeValue);
                    break;
                case "fontFamily":
                    ttmlStyle = createIfNull(ttmlStyle).setFontFamily(attributeValue);
                    break;
                case "textAlign":
                    ttmlStyle = createIfNull(ttmlStyle).setTextAlign(parseAlignment(attributeValue));
                    break;
                case "origin":
                    ttmlStyle = createIfNull(ttmlStyle).setOrigin(attributeValue);
                    break;
                case "textDecoration":
                    String lowerCase = Ascii.toLowerCase(attributeValue);
                    lowerCase.getClass();
                    switch (lowerCase) {
                        case "nounderline":
                            ttmlStyle = createIfNull(ttmlStyle).setUnderline(false);
                            break;
                        case "underline":
                            ttmlStyle = createIfNull(ttmlStyle).setUnderline(true);
                            break;
                        case "nolinethrough":
                            ttmlStyle = createIfNull(ttmlStyle).setLinethrough(false);
                            break;
                        case "linethrough":
                            ttmlStyle = createIfNull(ttmlStyle).setLinethrough(true);
                            break;
                    }
                    break;
                case "fontWeight":
                    ttmlStyle = createIfNull(ttmlStyle).setBold("bold".equalsIgnoreCase(attributeValue));
                    break;
                case "id":
                    if (!"style".equals(xmlPullParser.getName())) {
                        break;
                    } else {
                        ttmlStyle = createIfNull(ttmlStyle).setId(attributeValue);
                        break;
                    }
                    break;
                case "ruby":
                    String lowerCase2 = Ascii.toLowerCase(attributeValue);
                    lowerCase2.getClass();
                    switch (lowerCase2) {
                        case "baseContainer":
                        case "base":
                            ttmlStyle = createIfNull(ttmlStyle).setRubyType(2);
                            break;
                        case "container":
                            ttmlStyle = createIfNull(ttmlStyle).setRubyType(1);
                            break;
                        case "delimiter":
                            ttmlStyle = createIfNull(ttmlStyle).setRubyType(4);
                            break;
                        case "textContainer":
                        case "text":
                            ttmlStyle = createIfNull(ttmlStyle).setRubyType(3);
                            break;
                    }
                    break;
                case "color":
                    ttmlStyle = createIfNull(ttmlStyle);
                    try {
                        ttmlStyle.setFontColor(ColorParser.parseTtmlColor(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused) {
                        Log.m163w("TtmlParser", "Failed parsing color value: " + attributeValue);
                        break;
                    }
                    break;
                case "shear":
                    ttmlStyle = createIfNull(ttmlStyle).setShearPercentage(parseShear(attributeValue));
                    break;
                case "textCombine":
                    String lowerCase3 = Ascii.toLowerCase(attributeValue);
                    lowerCase3.getClass();
                    if (!lowerCase3.equals("all")) {
                        if (lowerCase3.equals("none")) {
                            ttmlStyle = createIfNull(ttmlStyle).setTextCombine(false);
                        }
                        break;
                    } else {
                        ttmlStyle = createIfNull(ttmlStyle).setTextCombine(true);
                        break;
                    }
                    break;
                case "fontSize":
                    try {
                        ttmlStyle = createIfNull(ttmlStyle);
                        parseFontSize(attributeValue, ttmlStyle);
                        break;
                    } catch (SubtitleDecoderException unused2) {
                        Log.m163w("TtmlParser", "Failed parsing fontSize value: " + attributeValue);
                        break;
                    }
                    break;
                case "textEmphasis":
                    ttmlStyle = createIfNull(ttmlStyle).setTextEmphasis(TextEmphasis.parse(attributeValue));
                    break;
                case "rubyPosition":
                    String lowerCase4 = Ascii.toLowerCase(attributeValue);
                    lowerCase4.getClass();
                    if (!lowerCase4.equals("before")) {
                        if (lowerCase4.equals("after")) {
                            ttmlStyle = createIfNull(ttmlStyle).setRubyPosition(2);
                        }
                        break;
                    } else {
                        ttmlStyle = createIfNull(ttmlStyle).setRubyPosition(1);
                        break;
                    }
                    break;
                case "backgroundColor":
                    ttmlStyle = createIfNull(ttmlStyle);
                    try {
                        ttmlStyle.setBackgroundColor(ColorParser.parseTtmlColor(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused3) {
                        Log.m163w("TtmlParser", "Failed parsing background value: " + attributeValue);
                        break;
                    }
                    break;
                case "multiRowAlign":
                    ttmlStyle = createIfNull(ttmlStyle).setMultiRowAlign(parseAlignment(attributeValue));
                    break;
            }
        }
        return ttmlStyle;
    }

    private static TtmlStyle createIfNull(TtmlStyle ttmlStyle) {
        return ttmlStyle == null ? new TtmlStyle() : ttmlStyle;
    }

    private static Layout.Alignment parseAlignment(String str) {
        String lowerCase = Ascii.toLowerCase(str);
        lowerCase.getClass();
        switch (lowerCase) {
            case "center":
                return Layout.Alignment.ALIGN_CENTER;
            case "end":
            case "right":
                return Layout.Alignment.ALIGN_OPPOSITE;
            case "left":
            case "start":
                return Layout.Alignment.ALIGN_NORMAL;
            default:
                return null;
        }
    }

    private static TtmlNode parseNode(XmlPullParser xmlPullParser, TtmlNode ttmlNode, Map<String, TtmlRegion> map, FrameAndTickRate frameAndTickRate) throws SubtitleDecoderException {
        String attributeValue;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        int attributeCount = xmlPullParser2.getAttributeCount();
        String strSubstring = null;
        TtmlStyle styleAttributes = parseStyleAttributes(xmlPullParser2, null);
        long timeExpression = -9223372036854775807L;
        long timeExpression2 = -9223372036854775807L;
        long timeExpression3 = -9223372036854775807L;
        String[] strArr = null;
        String str = _UrlKt.FRAGMENT_ENCODE_SET;
        int i = 0;
        while (i < attributeCount) {
            String attributeName = xmlPullParser2.getAttributeName(i);
            int i2 = attributeCount;
            attributeValue = xmlPullParser2.getAttributeValue(i);
            attributeName.getClass();
            switch (attributeName) {
                case "region":
                    if (map.containsKey(attributeValue)) {
                        str = attributeValue;
                        continue;
                    }
                    i++;
                    xmlPullParser2 = xmlPullParser;
                    attributeCount = i2;
                    break;
                case "dur":
                    timeExpression3 = parseTimeExpression(attributeValue, frameAndTickRate);
                    break;
                case "end":
                    timeExpression2 = parseTimeExpression(attributeValue, frameAndTickRate);
                    break;
                case "begin":
                    timeExpression = parseTimeExpression(attributeValue, frameAndTickRate);
                    break;
                case "style":
                    String[] styleIds = parseStyleIds(attributeValue);
                    if (styleIds.length > 0) {
                        strArr = styleIds;
                        break;
                    }
                    break;
                case "backgroundImage":
                    if (attributeValue.startsWith("#")) {
                        strSubstring = attributeValue.substring(1);
                        break;
                    }
                    break;
            }
            i++;
            xmlPullParser2 = xmlPullParser;
            attributeCount = i2;
        }
        if (ttmlNode != null) {
            long j = ttmlNode.startTimeUs;
            if (j != -9223372036854775807L) {
                if (timeExpression != -9223372036854775807L) {
                    timeExpression += j;
                }
                if (timeExpression2 != -9223372036854775807L) {
                    timeExpression2 += j;
                }
            }
        }
        long j2 = timeExpression;
        if (timeExpression2 == -9223372036854775807L) {
            if (timeExpression3 != -9223372036854775807L) {
                timeExpression2 = j2 + timeExpression3;
            } else if (ttmlNode != null) {
                long j3 = ttmlNode.endTimeUs;
                if (j3 != -9223372036854775807L) {
                    timeExpression2 = j3;
                }
            }
        }
        return TtmlNode.buildNode(xmlPullParser.getName(), j2, timeExpression2, styleAttributes, strArr, str, strSubstring, ttmlNode);
    }

    private static boolean isSupportedTag(String str) {
        return str.equals("tt") || str.equals("head") || str.equals("body") || str.equals("div") || str.equals("p") || str.equals("span") || str.equals("br") || str.equals("style") || str.equals("styling") || str.equals("layout") || str.equals("region") || str.equals("metadata") || str.equals("image") || str.equals("data") || str.equals("information");
    }

    private static void parseFontSize(String str, TtmlStyle ttmlStyle) throws SubtitleDecoderException {
        Matcher matcher;
        String str2;
        String[] strArrSplit = Util.split(str, "\\s+");
        if (strArrSplit.length == 1) {
            matcher = FONT_SIZE.matcher(str);
        } else if (strArrSplit.length == 2) {
            matcher = FONT_SIZE.matcher(strArrSplit[1]);
            Log.m163w("TtmlParser", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        } else {
            throw new SubtitleDecoderException("Invalid number of entries for fontSize: " + strArrSplit.length + ".");
        }
        if (matcher.matches()) {
            str2 = (String) Assertions.checkNotNull(matcher.group(3));
            str2.getClass();
            switch (str2) {
                case "%":
                    ttmlStyle.setFontSizeUnit(3);
                    break;
                case "em":
                    ttmlStyle.setFontSizeUnit(2);
                    break;
                case "px":
                    ttmlStyle.setFontSizeUnit(1);
                    break;
                default:
                    throw new SubtitleDecoderException("Invalid unit for fontSize: '" + str2 + "'.");
            }
            ttmlStyle.setFontSize(Float.parseFloat((String) Assertions.checkNotNull(matcher.group(1))));
            return;
        }
        throw new SubtitleDecoderException("Invalid expression for fontSize: '" + str + "'.");
    }

    private static float parseShear(String str) {
        Matcher matcher = SIGNED_PERCENTAGE.matcher(str);
        if (!matcher.matches()) {
            Log.m163w("TtmlParser", "Invalid value for shear: " + str);
            return Float.MAX_VALUE;
        }
        try {
            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) Assertions.checkNotNull(matcher.group(1)))));
        } catch (NumberFormatException e) {
            Log.m164w("TtmlParser", "Failed to parse shear: " + str, e);
            return Float.MAX_VALUE;
        }
    }

    private static long parseTimeExpression(String str, FrameAndTickRate frameAndTickRate) throws SubtitleDecoderException {
        double d;
        double d2;
        double d3;
        Matcher matcher = CLOCK_TIME.matcher(str);
        if (matcher.matches()) {
            double d4 = (Long.parseLong((String) Assertions.checkNotNull(matcher.group(1))) * 3600) + (Long.parseLong((String) Assertions.checkNotNull(matcher.group(2))) * 60) + Long.parseLong((String) Assertions.checkNotNull(matcher.group(3)));
            String strGroup = matcher.group(4);
            return (long) ((d4 + (strGroup != null ? Double.parseDouble(strGroup) : 0.0d) + (matcher.group(5) != null ? Long.parseLong(r13) / frameAndTickRate.effectiveFrameRate : 0.0d) + (matcher.group(6) != null ? (Long.parseLong(r13) / ((double) frameAndTickRate.subFrameRate)) / ((double) frameAndTickRate.effectiveFrameRate) : 0.0d)) * 1000000.0d);
        }
        Matcher matcher2 = OFFSET_TIME.matcher(str);
        if (matcher2.matches()) {
            d = Double.parseDouble((String) Assertions.checkNotNull(matcher2.group(1)));
            String str2 = (String) Assertions.checkNotNull(matcher2.group(2));
            str2.getClass();
            switch (str2) {
                case "f":
                    d2 = frameAndTickRate.effectiveFrameRate;
                    d /= d2;
                    return (long) (d * 1000000.0d);
                case "h":
                    d3 = 3600.0d;
                    break;
                case "m":
                    d3 = 60.0d;
                    break;
                case "t":
                    d2 = frameAndTickRate.tickRate;
                    d /= d2;
                    return (long) (d * 1000000.0d);
                case "ms":
                    d2 = 1000.0d;
                    d /= d2;
                    return (long) (d * 1000000.0d);
                default:
                    return (long) (d * 1000000.0d);
            }
            d *= d3;
            return (long) (d * 1000000.0d);
        }
        throw new SubtitleDecoderException("Malformed time expression: " + str);
    }

    public static final class FrameAndTickRate {
        final float effectiveFrameRate;
        final int subFrameRate;
        final int tickRate;

        public FrameAndTickRate(float f, int i, int i2) {
            this.effectiveFrameRate = f;
            this.subFrameRate = i;
            this.tickRate = i2;
        }
    }

    public static final class TtsExtent {
        final int height;
        final int width;

        public TtsExtent(int i, int i2) {
            this.width = i;
            this.height = i2;
        }
    }
}
