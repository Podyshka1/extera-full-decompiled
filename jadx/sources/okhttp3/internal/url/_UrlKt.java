package okhttp3.internal.url;

import java.io.EOFException;
import java.nio.charset.Charset;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilCommonKt;
import okio.Buffer;

/* JADX INFO: loaded from: classes.dex */
public final class _UrlKt {
    public static final String FORM_ENCODE_SET = " !\"#$&'()+,/:;<=>?@[\\]^`{|}~";
    public static final String FRAGMENT_ENCODE_SET = "";
    public static final String FRAGMENT_ENCODE_SET_URI = " \"#<>\\^`{|}";
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public static final String PASSWORD_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    public static final String PATH_SEGMENT_ENCODE_SET = " \"<>^`{}|/\\?#";
    public static final String PATH_SEGMENT_ENCODE_SET_URI = "[]";
    public static final String QUERY_COMPONENT_ENCODE_SET = " !\"#$&'(),/:;<=>?@[]\\^`{|}~";
    public static final String QUERY_COMPONENT_ENCODE_SET_URI = "\\^`{|}";
    public static final String QUERY_COMPONENT_REENCODE_SET = " \"'<>#&=";
    public static final String QUERY_ENCODE_SET = " \"'<>#";
    public static final String USERNAME_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";

    public static final char[] getHEX_DIGITS() {
        return HEX_DIGITS;
    }

    public static final void writeCanonicalized(Buffer buffer, String input, int i, int i2, String encodeSet, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) throws EOFException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(encodeSet, "encodeSet");
        Buffer buffer2 = null;
        while (i < i2) {
            int iCodePointAt = input.codePointAt(i);
            if (z && (iCodePointAt == 9 || iCodePointAt == 10 || iCodePointAt == 12 || iCodePointAt == 13)) {
                Unit unit = Unit.INSTANCE;
            } else {
                String str = "+";
                if (iCodePointAt == 32 && encodeSet == FORM_ENCODE_SET) {
                    buffer.writeUtf8("+");
                } else if (iCodePointAt == 43 && z3) {
                    if (!z) {
                        str = "%2B";
                    }
                    buffer.writeUtf8(str);
                } else if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && !z4) || StringsKt.contains$default((CharSequence) encodeSet, (char) iCodePointAt, false, 2, (Object) null) || (iCodePointAt == 37 && (!z || (z2 && !isPercentEncoded(input, i, i2)))))) {
                    if (buffer2 == null) {
                        buffer2 = new Buffer();
                    }
                    if (charset == null || Intrinsics.areEqual(charset, Charsets.UTF_8)) {
                        buffer2.writeUtf8CodePoint(iCodePointAt);
                    } else {
                        buffer2.writeString(input, i, Character.charCount(iCodePointAt) + i, charset);
                    }
                    while (!buffer2.exhausted()) {
                        byte b = buffer2.readByte();
                        buffer.writeByte(37);
                        char[] cArr = HEX_DIGITS;
                        buffer.writeByte((int) cArr[((b & 255) >> 4) & 15]);
                        buffer.writeByte((int) cArr[b & 15]);
                    }
                    Unit unit2 = Unit.INSTANCE;
                } else {
                    buffer.writeUtf8CodePoint(iCodePointAt);
                }
            }
            i += Character.charCount(iCodePointAt);
        }
    }

    public static /* synthetic */ String canonicalizeWithCharset$default(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        if ((i3 & 8) != 0) {
            z = false;
        }
        if ((i3 & 16) != 0) {
            z2 = false;
        }
        if ((i3 & 32) != 0) {
            z3 = false;
        }
        if ((i3 & 64) != 0) {
            z4 = false;
        }
        if ((i3 & 128) != 0) {
            charset = null;
        }
        return canonicalizeWithCharset(str, i, i2, str2, z, z2, z3, z4, charset);
    }

    public static final String canonicalizeWithCharset(String str, int i, int i2, String encodeSet, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) throws EOFException {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(encodeSet, "encodeSet");
        int iCharCount = i;
        while (iCharCount < i2) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && !z4) || StringsKt.contains$default((CharSequence) encodeSet, (char) iCodePointAt, false, 2, (Object) null) || ((iCodePointAt == 37 && (!z || (z2 && !isPercentEncoded(str, iCharCount, i2)))) || (iCodePointAt == 43 && z3)))) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, i, iCharCount);
                writeCanonicalized(buffer, str, iCharCount, i2, encodeSet, z, z2, z3, z4, charset);
                return buffer.readUtf8();
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        String strSubstring = str.substring(i, i2);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final void writePercentDecoded(Buffer buffer, String encoded, int i, int i2, boolean z) {
        int i3;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(encoded, "encoded");
        while (i < i2) {
            int iCodePointAt = encoded.codePointAt(i);
            if (iCodePointAt == 37 && (i3 = i + 2) < i2) {
                int hexDigit = _UtilCommonKt.parseHexDigit(encoded.charAt(i + 1));
                int hexDigit2 = _UtilCommonKt.parseHexDigit(encoded.charAt(i3));
                if (hexDigit != -1 && hexDigit2 != -1) {
                    buffer.writeByte((hexDigit << 4) + hexDigit2);
                    i = Character.charCount(iCodePointAt) + i3;
                } else {
                    buffer.writeUtf8CodePoint(iCodePointAt);
                    i += Character.charCount(iCodePointAt);
                }
            } else if (iCodePointAt == 43 && z) {
                buffer.writeByte(32);
                i++;
            } else {
                buffer.writeUtf8CodePoint(iCodePointAt);
                i += Character.charCount(iCodePointAt);
            }
        }
    }

    public static /* synthetic */ String canonicalize$default(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        if ((i3 & 8) != 0) {
            z = false;
        }
        if ((i3 & 16) != 0) {
            z2 = false;
        }
        if ((i3 & 32) != 0) {
            z3 = false;
        }
        if ((i3 & 64) != 0) {
            z4 = false;
        }
        return canonicalize(str, i, i2, str2, z, z2, z3, z4);
    }

    public static final String canonicalize(String str, int i, int i2, String encodeSet, boolean z, boolean z2, boolean z3, boolean z4) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(encodeSet, "encodeSet");
        return canonicalizeWithCharset$default(str, i, i2, encodeSet, z, z2, z3, z4, null, 128, null);
    }

    public static /* synthetic */ String percentDecode$default(String str, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return percentDecode(str, i, i2, z);
    }

    public static final String percentDecode(String str, int i, int i2, boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        for (int i3 = i; i3 < i2; i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt == '%' || (cCharAt == '+' && z)) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, i, i3);
                writePercentDecoded(buffer, str, i3, i2, z);
                return buffer.readUtf8();
            }
        }
        String strSubstring = str.substring(i, i2);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final boolean isPercentEncoded(String str, int i, int i2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int i3 = i + 2;
        return i3 < i2 && str.charAt(i) == '%' && _UtilCommonKt.parseHexDigit(str.charAt(i + 1)) != -1 && _UtilCommonKt.parseHexDigit(str.charAt(i3)) != -1;
    }
}
