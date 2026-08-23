package kotlin.text;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0010\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0001\n\u0002\b\u0002\u001a\u0015\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0003\u001a\u001d\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0006\u001a\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b*\u00020\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\t\u001a\u001d\u0010\u0007\u001a\u0004\u0018\u00010\b*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0087\u0080\u0004¢\u0006\u0002\u0010\n\u001a\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u0005*\u00020\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\f\u001a\u001d\u0010\u000b\u001a\u0004\u0018\u00010\u0005*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0087\u0080\u0004¢\u0006\u0002\u0010\r\u001a\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u000f*\u00020\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0010\u001a\u001d\u0010\u000e\u001a\u0004\u0018\u00010\u000f*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0011\u001a\u0012\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0002H\u0080\u0080\u0004¨\u0006\u0015"}, d2 = {"toByteOrNull", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/lang/String;)Ljava/lang/Byte;", "radix", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/lang/String;I)Ljava/lang/Byte;", "toShortOrNull", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/lang/String;)Ljava/lang/Short;", "(Ljava/lang/String;I)Ljava/lang/Short;", "toIntOrNull", "(Ljava/lang/String;)Ljava/lang/Integer;", "(Ljava/lang/String;I)Ljava/lang/Integer;", "toLongOrNull", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/lang/String;)Ljava/lang/Long;", "(Ljava/lang/String;I)Ljava/lang/Long;", "numberFormatError", _UrlKt.FRAGMENT_ENCODE_SET, "input", "kotlin-stdlib"}, m754k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/text/StringsKt")
public class StringsKt__StringNumberConversionsKt extends StringsKt__StringNumberConversionsJVMKt {
    @SinceKotlin(version = "1.1")
    public static final Byte toByteOrNull(String str) {
        return toByteOrNull(str, 10);
    }

    @SinceKotlin(version = "1.1")
    public static final Byte toByteOrNull(String str, int i) {
        int iIntValue;
        Integer intOrNull = toIntOrNull(str, i);
        if (intOrNull == null || (iIntValue = intOrNull.intValue()) < -128 || iIntValue > 127) {
            return null;
        }
        return Byte.valueOf((byte) iIntValue);
    }

    @SinceKotlin(version = "1.1")
    public static final Short toShortOrNull(String str) {
        return toShortOrNull(str, 10);
    }

    @SinceKotlin(version = "1.1")
    public static final Short toShortOrNull(String str, int i) {
        int iIntValue;
        Integer intOrNull = toIntOrNull(str, i);
        if (intOrNull == null || (iIntValue = intOrNull.intValue()) < -32768 || iIntValue > 32767) {
            return null;
        }
        return Short.valueOf((short) iIntValue);
    }

    @SinceKotlin(version = "1.1")
    public static Integer toIntOrNull(String str) {
        return toIntOrNull(str, 10);
    }

    @SinceKotlin(version = "1.1")
    public static final Integer toIntOrNull(String str, int i) {
        boolean z;
        int i2;
        int i3;
        CharsKt__CharJVMKt.checkRadix(i);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i4 = 0;
        char cCharAt = str.charAt(0);
        int i5 = -2147483647;
        if (Intrinsics.compare((int) cCharAt, 48) < 0) {
            i2 = 1;
            if (length == 1) {
                return null;
            }
            if (cCharAt == '+') {
                z = false;
            } else {
                if (cCharAt != '-') {
                    return null;
                }
                i5 = Integer.MIN_VALUE;
                z = true;
            }
        } else {
            z = false;
            i2 = 0;
        }
        int i6 = -59652323;
        while (i2 < length) {
            int iDigitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i2), i);
            if (iDigitOf < 0) {
                return null;
            }
            if ((i4 < i6 && (i6 != -59652323 || i4 < (i6 = i5 / i))) || (i3 = i4 * i) < i5 + iDigitOf) {
                return null;
            }
            i4 = i3 - iDigitOf;
            i2++;
        }
        return z ? Integer.valueOf(i4) : Integer.valueOf(-i4);
    }

    @SinceKotlin(version = "1.1")
    public static Long toLongOrNull(String str) {
        return toLongOrNull(str, 10);
    }

    @SinceKotlin(version = "1.1")
    public static final Long toLongOrNull(String str, int i) {
        boolean z;
        CharsKt__CharJVMKt.checkRadix(i);
        int length = str.length();
        Long l = null;
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char cCharAt = str.charAt(0);
        long j = -9223372036854775807L;
        if (Intrinsics.compare((int) cCharAt, 48) < 0) {
            z = true;
            if (length == 1) {
                return null;
            }
            if (cCharAt == '+') {
                z = false;
                i2 = 1;
            } else {
                if (cCharAt != '-') {
                    return null;
                }
                j = Long.MIN_VALUE;
                i2 = 1;
            }
        } else {
            z = false;
        }
        long j2 = 0;
        long j3 = -256204778801521550L;
        while (i2 < length) {
            int iDigitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i2), i);
            if (iDigitOf < 0) {
                return l;
            }
            if (j2 < j3) {
                if (j3 != -256204778801521550L) {
                    return l;
                }
                j3 = j / ((long) i);
                if (j2 < j3) {
                    return l;
                }
            }
            Long l2 = l;
            int i3 = i2;
            long j4 = j2 * ((long) i);
            long j5 = iDigitOf;
            if (j4 < j + j5) {
                return l2;
            }
            j2 = j4 - j5;
            i2 = i3 + 1;
            l = l2;
        }
        return z ? Long.valueOf(j2) : Long.valueOf(-j2);
    }

    public static final Void numberFormatError(String str) {
        throw new NumberFormatException("Invalid number format: '" + str + '\'');
    }
}
