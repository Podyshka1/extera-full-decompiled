package androidx.media3.extractor.text.ssa;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.ssa.SsaStyle;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.common.base.Ascii;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public final class SsaParser implements SubtitleParser {
    private static final Pattern SSA_TIMECODE_PATTERN = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");
    private final SsaDialogueFormat dialogueFormatFromInitializationData;
    private final boolean haveInitializationData;
    private Map<String, SsaStyle> styles;
    private float screenWidth = -3.4028235E38f;
    private float screenHeight = -3.4028235E38f;
    private final ParsableByteArray parsableByteArray = new ParsableByteArray();

    private static float computeDefaultLineOrPosition(int i) {
        if (i == 0) {
            return 0.05f;
        }
        if (i != 1) {
            return i != 2 ? -3.4028235E38f : 0.95f;
        }
        return 0.5f;
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public int getCueReplacementBehavior() {
        return 1;
    }

    public SsaParser(List<byte[]> list) {
        if (list != null && !list.isEmpty()) {
            this.haveInitializationData = true;
            String strFromUtf8Bytes = Util.fromUtf8Bytes(list.get(0));
            Assertions.checkArgument(strFromUtf8Bytes.startsWith("Format:"));
            this.dialogueFormatFromInitializationData = (SsaDialogueFormat) Assertions.checkNotNull(SsaDialogueFormat.fromFormatLine(strFromUtf8Bytes));
            parseHeader(new ParsableByteArray(list.get(1)), StandardCharsets.UTF_8);
            return;
        }
        this.haveInitializationData = false;
        this.dialogueFormatFromInitializationData = null;
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public void parse(byte[] bArr, int i, int i2, SubtitleParser.OutputOptions outputOptions, Consumer<CuesWithTiming> consumer) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        this.parsableByteArray.reset(bArr, i + i2);
        this.parsableByteArray.setPosition(i);
        Charset charsetDetectUtfCharset = detectUtfCharset(this.parsableByteArray);
        if (!this.haveInitializationData) {
            parseHeader(this.parsableByteArray, charsetDetectUtfCharset);
        }
        parseEventBody(this.parsableByteArray, arrayList, arrayList2, charsetDetectUtfCharset);
        ArrayList arrayList3 = (outputOptions.startTimeUs == -9223372036854775807L || !outputOptions.outputAllCues) ? null : new ArrayList();
        int i3 = 0;
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            List<Cue> list = arrayList.get(i4);
            if (!list.isEmpty() || i4 == 0) {
                if (i4 == arrayList.size() - 1) {
                    MethodWriter$$ExternalSyntheticBUOutline0.m959m();
                    return;
                }
                long jLongValue = arrayList2.get(i4).longValue();
                long jLongValue2 = arrayList2.get(i4 + 1).longValue();
                CuesWithTiming cuesWithTiming = new CuesWithTiming(list, jLongValue, jLongValue2 - jLongValue);
                long j = outputOptions.startTimeUs;
                if (j == -9223372036854775807L || jLongValue2 >= j) {
                    consumer.accept(cuesWithTiming);
                } else if (arrayList3 != null) {
                    arrayList3.add(cuesWithTiming);
                }
            }
        }
        if (arrayList3 != null) {
            int size = arrayList3.size();
            while (i3 < size) {
                Object obj = arrayList3.get(i3);
                i3++;
                consumer.accept((CuesWithTiming) obj);
            }
        }
    }

    private Charset detectUtfCharset(ParsableByteArray parsableByteArray) {
        Charset utfCharsetFromBom = parsableByteArray.readUtfCharsetFromBom();
        return utfCharsetFromBom != null ? utfCharsetFromBom : StandardCharsets.UTF_8;
    }

    private void parseHeader(ParsableByteArray parsableByteArray, Charset charset) {
        while (true) {
            String line = parsableByteArray.readLine(charset);
            if (line == null) {
                return;
            }
            if ("[Script Info]".equalsIgnoreCase(line)) {
                parseScriptInfo(parsableByteArray, charset);
            } else if ("[V4+ Styles]".equalsIgnoreCase(line)) {
                this.styles = parseStyles(parsableByteArray, charset);
            } else if ("[V4 Styles]".equalsIgnoreCase(line)) {
                Log.m162i("SsaParser", "[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(line)) {
                return;
            }
        }
    }

    private void parseScriptInfo(ParsableByteArray parsableByteArray, Charset charset) {
        while (true) {
            String line = parsableByteArray.readLine(charset);
            if (line == null) {
                return;
            }
            if (parsableByteArray.bytesLeft() != 0 && parsableByteArray.peekCodePoint(charset) == 91) {
                return;
            }
            String[] strArrSplit = line.split(":");
            if (strArrSplit.length == 2) {
                String lowerCase = Ascii.toLowerCase(strArrSplit[0].trim());
                lowerCase.getClass();
                if (lowerCase.equals("playresx")) {
                    this.screenWidth = Float.parseFloat(strArrSplit[1].trim());
                } else if (lowerCase.equals("playresy")) {
                    try {
                        this.screenHeight = Float.parseFloat(strArrSplit[1].trim());
                    } catch (NumberFormatException unused) {
                    }
                }
            }
        }
    }

    private static Map<String, SsaStyle> parseStyles(ParsableByteArray parsableByteArray, Charset charset) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        SsaStyle.Format formatFromFormatLine = null;
        while (true) {
            String line = parsableByteArray.readLine(charset);
            if (line == null || (parsableByteArray.bytesLeft() != 0 && parsableByteArray.peekCodePoint(charset) == 91)) {
                break;
            }
            if (line.startsWith("Format:")) {
                formatFromFormatLine = SsaStyle.Format.fromFormatLine(line);
            } else if (line.startsWith("Style:")) {
                if (formatFromFormatLine == null) {
                    Log.m163w("SsaParser", "Skipping 'Style:' line before 'Format:' line: ".concat(line));
                } else {
                    SsaStyle ssaStyleFromStyleLine = SsaStyle.fromStyleLine(line, formatFromFormatLine);
                    if (ssaStyleFromStyleLine != null) {
                        linkedHashMap.put(ssaStyleFromStyleLine.name, ssaStyleFromStyleLine);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private void parseEventBody(ParsableByteArray parsableByteArray, List<List<Cue>> list, List<Long> list2, Charset charset) {
        SsaDialogueFormat ssaDialogueFormatFromFormatLine = this.haveInitializationData ? this.dialogueFormatFromInitializationData : null;
        while (true) {
            String line = parsableByteArray.readLine(charset);
            if (line == null) {
                return;
            }
            if (line.startsWith("Format:")) {
                ssaDialogueFormatFromFormatLine = SsaDialogueFormat.fromFormatLine(line);
            } else if (line.startsWith("Dialogue:")) {
                if (ssaDialogueFormatFromFormatLine == null) {
                    Log.m163w("SsaParser", "Skipping dialogue line before complete format: ".concat(line));
                } else {
                    parseDialogueLine(line, ssaDialogueFormatFromFormatLine, list, list2);
                }
            }
        }
    }

    private void parseDialogueLine(String str, SsaDialogueFormat ssaDialogueFormat, List<List<Cue>> list, List<Long> list2) {
        int i;
        int i2;
        Assertions.checkArgument(str.startsWith("Dialogue:"));
        String[] strArrSplit = str.substring(9).split(",", ssaDialogueFormat.length);
        if (strArrSplit.length != ssaDialogueFormat.length) {
            Log.m163w("SsaParser", "Skipping dialogue line with fewer columns than format: ".concat(str));
            return;
        }
        int i3 = ssaDialogueFormat.layerIndex;
        if (i3 != -1) {
            try {
                i = Integer.parseInt(strArrSplit[i3].trim());
            } catch (RuntimeException unused) {
                Log.m163w("SsaParser", "Fail to parse layer: " + strArrSplit[ssaDialogueFormat.layerIndex]);
                i = 0;
            }
        } else {
            i = 0;
        }
        int i4 = i;
        long timecodeUs = parseTimecodeUs(strArrSplit[ssaDialogueFormat.startTimeIndex]);
        if (timecodeUs == -9223372036854775807L) {
            Log.m163w("SsaParser", "Skipping invalid timing: ".concat(str));
            return;
        }
        long timecodeUs2 = parseTimecodeUs(strArrSplit[ssaDialogueFormat.endTimeIndex]);
        if (timecodeUs2 == -9223372036854775807L || timecodeUs2 <= timecodeUs) {
            Log.m163w("SsaParser", "Skipping invalid timing: ".concat(str));
            return;
        }
        Map<String, SsaStyle> map = this.styles;
        SsaStyle ssaStyle = (map == null || (i2 = ssaDialogueFormat.styleIndex) == -1) ? null : map.get(strArrSplit[i2].trim());
        String str2 = strArrSplit[ssaDialogueFormat.textIndex];
        Cue cueCreateCue = createCue(SsaStyle.Overrides.stripStyleOverrides(str2).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " "), i4, ssaStyle, SsaStyle.Overrides.parseFromDialogue(str2), this.screenWidth, this.screenHeight);
        int iAddCuePlacerholderByTime = addCuePlacerholderByTime(timecodeUs2, list2, list);
        for (int iAddCuePlacerholderByTime2 = addCuePlacerholderByTime(timecodeUs, list2, list); iAddCuePlacerholderByTime2 < iAddCuePlacerholderByTime; iAddCuePlacerholderByTime2++) {
            list.get(iAddCuePlacerholderByTime2).add(cueCreateCue);
        }
    }

    private static long parseTimecodeUs(String str) {
        Matcher matcher = SSA_TIMECODE_PATTERN.matcher(str.trim());
        if (matcher.matches()) {
            return (Long.parseLong((String) Util.castNonNull(matcher.group(1))) * 3600000000L) + (Long.parseLong((String) Util.castNonNull(matcher.group(2))) * 60000000) + (Long.parseLong((String) Util.castNonNull(matcher.group(3))) * 1000000) + (Long.parseLong((String) Util.castNonNull(matcher.group(4))) * NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
        }
        return -9223372036854775807L;
    }

    private static Cue createCue(String str, int i, SsaStyle ssaStyle, SsaStyle.Overrides overrides, float f, float f2) {
        SpannableString spannableString = new SpannableString(str);
        Cue.Builder zIndex = new Cue.Builder().setText(spannableString).setZIndex(i);
        if (ssaStyle != null) {
            if (ssaStyle.primaryColor != null) {
                spannableString.setSpan(new ForegroundColorSpan(ssaStyle.primaryColor.intValue()), 0, spannableString.length(), 33);
            }
            if (ssaStyle.borderStyle == 3 && ssaStyle.outlineColor != null) {
                spannableString.setSpan(new BackgroundColorSpan(ssaStyle.outlineColor.intValue()), 0, spannableString.length(), 33);
            }
            float f3 = ssaStyle.fontSize;
            if (f3 != -3.4028235E38f && f2 != -3.4028235E38f) {
                zIndex.setTextSize(f3 / f2, 1);
            }
            boolean z = ssaStyle.bold;
            if (z && ssaStyle.italic) {
                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
            } else if (z) {
                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            } else if (ssaStyle.italic) {
                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
            }
            if (ssaStyle.underline) {
                spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            }
            if (ssaStyle.strikeout) {
                spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
            }
        }
        int i2 = overrides.alignment;
        if (i2 == -1) {
            i2 = ssaStyle != null ? ssaStyle.alignment : -1;
        }
        zIndex.setTextAlignment(toTextAlignment(i2)).setPositionAnchor(toPositionAnchor(i2)).setLineAnchor(toLineAnchor(i2));
        PointF pointF = overrides.position;
        if (pointF != null && f2 != -3.4028235E38f && f != -3.4028235E38f) {
            zIndex.setPosition(pointF.x / f);
            zIndex.setLine(overrides.position.y / f2, 0);
        } else {
            zIndex.setPosition(computeDefaultLineOrPosition(zIndex.getPositionAnchor()));
            zIndex.setLine(computeDefaultLineOrPosition(zIndex.getLineAnchor()), 0);
        }
        return zIndex.build();
    }

    private static Layout.Alignment toTextAlignment(int i) {
        switch (i) {
            case -1:
                return null;
            case 0:
            default:
                Log.m163w("SsaParser", "Unknown alignment: " + i);
                return null;
            case 1:
            case 4:
            case 7:
                return Layout.Alignment.ALIGN_NORMAL;
            case 2:
            case 5:
            case 8:
                return Layout.Alignment.ALIGN_CENTER;
            case 3:
            case 6:
            case 9:
                return Layout.Alignment.ALIGN_OPPOSITE;
        }
    }

    private static int toLineAnchor(int i) {
        switch (i) {
            case -1:
                break;
            case 0:
            default:
                Log.m163w("SsaParser", "Unknown alignment: " + i);
                break;
            case 1:
            case 2:
            case 3:
                break;
            case 4:
            case 5:
            case 6:
                break;
            case 7:
            case 8:
            case 9:
                break;
        }
        return Integer.MIN_VALUE;
    }

    private static int toPositionAnchor(int i) {
        switch (i) {
            case -1:
                break;
            case 0:
            default:
                Log.m163w("SsaParser", "Unknown alignment: " + i);
                break;
            case 1:
            case 4:
            case 7:
                break;
            case 2:
            case 5:
            case 8:
                break;
            case 3:
            case 6:
            case 9:
                break;
        }
        return Integer.MIN_VALUE;
    }

    private static int addCuePlacerholderByTime(long j, List<Long> list, List<List<Cue>> list2) {
        int i;
        int size = list.size() - 1;
        while (true) {
            if (size < 0) {
                i = 0;
                break;
            }
            if (list.get(size).longValue() == j) {
                return size;
            }
            if (list.get(size).longValue() < j) {
                i = size + 1;
                break;
            }
            size--;
        }
        list.add(i, Long.valueOf(j));
        list2.add(i, i == 0 ? new ArrayList() : new ArrayList(list2.get(i - 1)));
        return i;
    }
}
