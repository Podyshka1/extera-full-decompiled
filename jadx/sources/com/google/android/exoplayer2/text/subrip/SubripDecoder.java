package com.google.android.exoplayer2.text.subrip;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.SimpleSubtitleDecoder;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.LongArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.common.base.Charsets;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.p025ws.RealWebSocket;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class SubripDecoder extends SimpleSubtitleDecoder {
    private final ArrayList tags;
    private final StringBuilder textBuilder;
    private static final Pattern SUBRIP_TIMING_LINE = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");
    private static final Pattern SUBRIP_TAG_PATTERN = Pattern.compile("\\{\\\\.*?\\}");

    public SubripDecoder() {
        super("SubripDecoder");
        this.textBuilder = new StringBuilder();
        this.tags = new ArrayList();
    }

    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    protected Subtitle decode(byte[] bArr, int i, boolean z) {
        String str;
        ArrayList arrayList = new ArrayList();
        LongArray longArray = new LongArray();
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr, i);
        Charset charsetDetectUtfCharset = detectUtfCharset(parsableByteArray);
        while (true) {
            String line = parsableByteArray.readLine(charsetDetectUtfCharset);
            int i2 = 0;
            if (line == null) {
                break;
            }
            if (line.length() != 0) {
                try {
                    Integer.parseInt(line);
                    String line2 = parsableByteArray.readLine(charsetDetectUtfCharset);
                    if (line2 == null) {
                        Log.m329w("SubripDecoder", "Unexpected end");
                        break;
                    }
                    Matcher matcher = SUBRIP_TIMING_LINE.matcher(line2);
                    if (!matcher.matches()) {
                        Log.m329w("SubripDecoder", "Skipping invalid timing: " + line2);
                    } else {
                        longArray.add(parseTimecode(matcher, 1));
                        longArray.add(parseTimecode(matcher, 6));
                        this.textBuilder.setLength(0);
                        this.tags.clear();
                        for (String line3 = parsableByteArray.readLine(charsetDetectUtfCharset); !TextUtils.isEmpty(line3); line3 = parsableByteArray.readLine(charsetDetectUtfCharset)) {
                            if (this.textBuilder.length() > 0) {
                                this.textBuilder.append("<br>");
                            }
                            this.textBuilder.append(processLine(line3, this.tags));
                        }
                        Spanned spannedFromHtml = Html.fromHtml(this.textBuilder.toString());
                        while (true) {
                            if (i2 >= this.tags.size()) {
                                str = null;
                                break;
                            }
                            str = (String) this.tags.get(i2);
                            if (str.matches("\\{\\\\an[1-9]\\}")) {
                                break;
                            }
                            i2++;
                        }
                        arrayList.add(buildCue(spannedFromHtml, str));
                        arrayList.add(Cue.EMPTY);
                    }
                } catch (NumberFormatException unused) {
                    Log.m329w("SubripDecoder", "Skipping invalid index: " + line);
                }
            }
        }
        return new SubripSubtitle((Cue[]) arrayList.toArray(new Cue[0]), longArray.toArray());
    }

    private Charset detectUtfCharset(ParsableByteArray parsableByteArray) {
        Charset utfCharsetFromBom = parsableByteArray.readUtfCharsetFromBom();
        return utfCharsetFromBom != null ? utfCharsetFromBom : Charsets.UTF_8;
    }

    private String processLine(String str, ArrayList arrayList) {
        String strTrim = str.trim();
        StringBuilder sb = new StringBuilder(strTrim);
        Matcher matcher = SUBRIP_TAG_PATTERN.matcher(strTrim);
        int i = 0;
        while (matcher.find()) {
            String strGroup = matcher.group();
            arrayList.add(strGroup);
            int iStart = matcher.start() - i;
            int length = strGroup.length();
            sb.replace(iStart, iStart + length, _UrlKt.FRAGMENT_ENCODE_SET);
            i += length;
        }
        return sb.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Cue buildCue(Spanned spanned, String str) {
        Cue.Builder text = new Cue.Builder().setText(spanned);
        if (str == null) {
            return text.build();
        }
        switch (str.hashCode()) {
            case -685620710:
                if (str.equals("{\\an1}")) {
                    text.setPositionAnchor(0);
                } else {
                    text.setPositionAnchor(1);
                }
                break;
            case -685620679:
                str.equals("{\\an2}");
                text.setPositionAnchor(1);
                break;
            case -685620648:
                if (str.equals("{\\an3}")) {
                    text.setPositionAnchor(2);
                    break;
                }
                break;
            case -685620617:
                if (str.equals("{\\an4}")) {
                }
                break;
            case -685620586:
                str.equals("{\\an5}");
                text.setPositionAnchor(1);
                break;
            case -685620555:
                if (str.equals("{\\an6}")) {
                }
                break;
            case -685620524:
                if (str.equals("{\\an7}")) {
                }
                break;
            case -685620493:
                str.equals("{\\an8}");
                text.setPositionAnchor(1);
                break;
            case -685620462:
                if (str.equals("{\\an9}")) {
                }
                break;
        }
        switch (str.hashCode()) {
            case -685620710:
                if (str.equals("{\\an1}")) {
                    text.setLineAnchor(2);
                } else {
                    text.setLineAnchor(1);
                }
                break;
            case -685620679:
                if (str.equals("{\\an2}")) {
                }
                break;
            case -685620648:
                if (str.equals("{\\an3}")) {
                }
                break;
            case -685620617:
                str.equals("{\\an4}");
                text.setLineAnchor(1);
                break;
            case -685620586:
                str.equals("{\\an5}");
                text.setLineAnchor(1);
                break;
            case -685620555:
                str.equals("{\\an6}");
                text.setLineAnchor(1);
                break;
            case -685620524:
                if (str.equals("{\\an7}")) {
                    text.setLineAnchor(0);
                    break;
                }
                break;
            case -685620493:
                if (str.equals("{\\an8}")) {
                }
                break;
            case -685620462:
                if (str.equals("{\\an9}")) {
                }
                break;
        }
        return text.setPosition(getFractionalPositionForAnchorType(text.getPositionAnchor())).setLine(getFractionalPositionForAnchorType(text.getLineAnchor()), 0).build();
    }

    private static long parseTimecode(Matcher matcher, int i) {
        String strGroup = matcher.group(i + 1);
        long j = (strGroup != null ? Long.parseLong(strGroup) * 3600000 : 0L) + (Long.parseLong((String) Assertions.checkNotNull(matcher.group(i + 2))) * RealWebSocket.CANCEL_AFTER_CLOSE_MILLIS) + (Long.parseLong((String) Assertions.checkNotNull(matcher.group(i + 3))) * 1000);
        String strGroup2 = matcher.group(i + 4);
        if (strGroup2 != null) {
            j += Long.parseLong(strGroup2);
        }
        return j * 1000;
    }

    static float getFractionalPositionForAnchorType(int i) {
        if (i == 0) {
            return 0.08f;
        }
        if (i == 1) {
            return 0.5f;
        }
        if (i == 2) {
            return 0.92f;
        }
        throw new IllegalArgumentException();
    }
}
