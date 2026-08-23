package com.google.gson.internal.bind.util;

import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;
import p022j$.util.DesugarTimeZone;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ISO8601Utils {
    private static final TimeZone TIMEZONE_UTC = DesugarTimeZone.getTimeZone("UTC");

    /* JADX WARN: Removed duplicated region for block: B:53:0x00df A[Catch: IllegalArgumentException -> 0x004e, IndexOutOfBoundsException -> 0x0051, TryCatch #2 {IllegalArgumentException -> 0x004e, IndexOutOfBoundsException -> 0x0051, blocks: (B:3:0x0004, B:5:0x0017, B:6:0x0019, B:8:0x0025, B:9:0x0027, B:11:0x0037, B:13:0x003d, B:21:0x005b, B:23:0x006b, B:24:0x006d, B:26:0x0079, B:27:0x007c, B:29:0x0082, B:33:0x008c, B:38:0x009c, B:40:0x00a4, B:51:0x00d9, B:53:0x00df, B:55:0x00e5, B:79:0x0192, B:59:0x00ef, B:60:0x010a, B:61:0x010b, B:65:0x0127, B:67:0x0134, B:70:0x013d, B:72:0x015c, B:75:0x016b, B:76:0x018d, B:78:0x0190, B:64:0x0116, B:81:0x01c3, B:82:0x01ca, B:44:0x00bc, B:45:0x00bf), top: B:93:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01c3 A[Catch: IllegalArgumentException -> 0x004e, IndexOutOfBoundsException -> 0x0051, TryCatch #2 {IllegalArgumentException -> 0x004e, IndexOutOfBoundsException -> 0x0051, blocks: (B:3:0x0004, B:5:0x0017, B:6:0x0019, B:8:0x0025, B:9:0x0027, B:11:0x0037, B:13:0x003d, B:21:0x005b, B:23:0x006b, B:24:0x006d, B:26:0x0079, B:27:0x007c, B:29:0x0082, B:33:0x008c, B:38:0x009c, B:40:0x00a4, B:51:0x00d9, B:53:0x00df, B:55:0x00e5, B:79:0x0192, B:59:0x00ef, B:60:0x010a, B:61:0x010b, B:65:0x0127, B:67:0x0134, B:70:0x013d, B:72:0x015c, B:75:0x016b, B:76:0x018d, B:78:0x0190, B:64:0x0116, B:81:0x01c3, B:82:0x01ca, B:44:0x00bc, B:45:0x00bf), top: B:93:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Date parse(String str, ParsePosition parsePosition) throws ParseException {
        String str2;
        String message;
        int i;
        int i2;
        int i3;
        int i4;
        int length;
        TimeZone timeZone;
        char cCharAt;
        try {
            int index = parsePosition.getIndex();
            int i5 = index + 4;
            int i6 = parseInt(str, index, i5);
            if (checkOffset(str, i5, SignatureVisitor.SUPER)) {
                i5 = index + 5;
            }
            int i7 = i5 + 2;
            int i8 = parseInt(str, i5, i7);
            if (checkOffset(str, i7, SignatureVisitor.SUPER)) {
                i7 = i5 + 3;
            }
            int i9 = i7 + 2;
            int i10 = parseInt(str, i7, i9);
            boolean zCheckOffset = checkOffset(str, i9, 'T');
            if (!zCheckOffset && str.length() <= i9) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(i6, i8 - 1, i10);
                gregorianCalendar.setLenient(false);
                parsePosition.setIndex(i9);
                return gregorianCalendar.getTime();
            }
            if (zCheckOffset) {
                int i11 = i7 + 5;
                int i12 = parseInt(str, i7 + 3, i11);
                if (checkOffset(str, i11, ':')) {
                    i11 = i7 + 6;
                }
                int i13 = i11 + 2;
                int i14 = parseInt(str, i11, i13);
                if (checkOffset(str, i13, ':')) {
                    i13 = i11 + 3;
                }
                if (str.length() > i13 && (cCharAt = str.charAt(i13)) != 'Z' && cCharAt != '+' && cCharAt != '-') {
                    int i15 = i13 + 2;
                    i4 = parseInt(str, i13, i15);
                    if (i4 > 59 && i4 < 63) {
                        i4 = 59;
                    }
                    if (checkOffset(str, i15, '.')) {
                        int i16 = i13 + 3;
                        int iIndexOfNonDigit = indexOfNonDigit(str, i13 + 4);
                        int iMin = Math.min(iIndexOfNonDigit, i13 + 6);
                        int i17 = parseInt(str, i16, iMin);
                        int i18 = iMin - i16;
                        if (i18 == 1) {
                            i17 *= 100;
                        } else if (i18 == 2) {
                            i17 *= 10;
                        }
                        i = i12;
                        i9 = iIndexOfNonDigit;
                        i2 = i14;
                        i3 = i17;
                    } else {
                        i = i12;
                        i9 = i15;
                        i2 = i14;
                        i3 = 0;
                    }
                    if (str.length() > i9) {
                        throw new IllegalArgumentException("No time zone indicator");
                    }
                    char cCharAt2 = str.charAt(i9);
                    if (cCharAt2 == 'Z') {
                        timeZone = TIMEZONE_UTC;
                        length = i9 + 1;
                    } else {
                        if (cCharAt2 != '+' && cCharAt2 != '-') {
                            throw new IndexOutOfBoundsException("Invalid time zone indicator '" + cCharAt2 + "'");
                        }
                        String strSubstring = str.substring(i9);
                        if (strSubstring.length() < 5) {
                            strSubstring = strSubstring + "00";
                        }
                        length = i9 + strSubstring.length();
                        if (strSubstring.equals("+0000") || strSubstring.equals("+00:00")) {
                            timeZone = TIMEZONE_UTC;
                        } else {
                            String str3 = "GMT" + strSubstring;
                            TimeZone timeZone2 = DesugarTimeZone.getTimeZone(str3);
                            String id = timeZone2.getID();
                            if (!id.equals(str3) && !id.replace(":", _UrlKt.FRAGMENT_ENCODE_SET).equals(str3)) {
                                throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + str3 + " given, resolves to " + timeZone2.getID());
                            }
                            timeZone = timeZone2;
                        }
                    }
                    GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone);
                    gregorianCalendar2.setLenient(false);
                    gregorianCalendar2.set(1, i6);
                    gregorianCalendar2.set(2, i8 - 1);
                    gregorianCalendar2.set(5, i10);
                    gregorianCalendar2.set(11, i);
                    gregorianCalendar2.set(12, i2);
                    gregorianCalendar2.set(13, i4);
                    gregorianCalendar2.set(14, i3);
                    parsePosition.setIndex(length);
                    return gregorianCalendar2.getTime();
                }
                i9 = i13;
                i = i12;
                i2 = i14;
            } else {
                i = 0;
                i2 = 0;
            }
            i3 = 0;
            i4 = 0;
            if (str.length() > i9) {
            }
        } catch (IllegalArgumentException e) {
            e = e;
            if (str != null) {
                str2 = null;
            } else {
                str2 = '\"' + str + '\"';
            }
            message = e.getMessage();
            if (message != null || message.isEmpty()) {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException.initCause(e);
            throw parseException;
        } catch (IndexOutOfBoundsException e2) {
            e = e2;
            if (str != null) {
            }
            message = e.getMessage();
            if (message != null) {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException2 = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException2.initCause(e);
            throw parseException2;
        }
    }

    private static boolean checkOffset(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }

    private static int parseInt(String str, int i, int i2) {
        int i3;
        int i4;
        if (i < 0 || i2 > str.length() || i > i2) {
            throw new NumberFormatException(str);
        }
        if (i < i2) {
            i4 = i + 1;
            int iDigit = Character.digit(str.charAt(i), 10);
            if (iDigit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
            i3 = -iDigit;
        } else {
            i3 = 0;
            i4 = i;
        }
        while (i4 < i2) {
            int i5 = i4 + 1;
            int iDigit2 = Character.digit(str.charAt(i4), 10);
            if (iDigit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
            i3 = (i3 * 10) - iDigit2;
            i4 = i5;
        }
        return -i3;
    }

    private static int indexOfNonDigit(String str, int i) {
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (cCharAt < '0' || cCharAt > '9') {
                return i;
            }
            i++;
        }
        return str.length();
    }
}
