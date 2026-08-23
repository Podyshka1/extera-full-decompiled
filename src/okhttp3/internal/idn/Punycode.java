package okhttp3.internal.idn;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import okio.Buffer;
import okio.ByteString;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes.dex */
public final class Punycode {
    private static final int BASE = 36;
    private static final int DAMP = 700;
    private static final int INITIAL_BIAS = 72;
    private static final int INITIAL_N = 128;
    private static final int SKEW = 38;
    private static final int TMAX = 26;
    private static final int TMIN = 1;
    public static final Punycode INSTANCE = new Punycode();
    private static final String PREFIX_STRING = "xn--";
    private static final ByteString PREFIX = ByteString.Companion.encodeUtf8("xn--");

    private Punycode() {
    }

    public final String getPREFIX_STRING() {
        return PREFIX_STRING;
    }

    public final ByteString getPREFIX() {
        return PREFIX;
    }

    public final String encode(String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        int length = string.length();
        Buffer buffer = new Buffer();
        int i = 0;
        while (i < length) {
            String str = string;
            int iIndexOf$default = StringsKt.indexOf$default((CharSequence) str, '.', i, false, 4, (Object) null);
            if (iIndexOf$default == -1) {
                iIndexOf$default = length;
            }
            if (!encodeLabel(str, i, iIndexOf$default, buffer)) {
                return null;
            }
            if (iIndexOf$default >= length) {
                break;
            }
            buffer.writeByte(46);
            i = iIndexOf$default + 1;
            string = str;
        }
        return buffer.readUtf8();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean encodeLabel(String str, int i, int i2, Buffer buffer) {
        int i3;
        int i4;
        int i5;
        int i6 = 1;
        if (!requiresEncode(str, i, i2)) {
            buffer.writeUtf8(str, i, i2);
            return true;
        }
        buffer.write(PREFIX);
        List<Integer> listCodePoints = codePoints(str, i, i2);
        Iterator<Integer> it = listCodePoints.iterator();
        int i7 = 0;
        while (true) {
            i3 = 128;
            if (!it.hasNext()) {
                break;
            }
            int iIntValue = it.next().intValue();
            if (iIntValue < 128) {
                buffer.writeByte(iIntValue);
                i7++;
            }
        }
        if (i7 > 0) {
            buffer.writeByte(45);
        }
        int iAdapt = 72;
        int i8 = 0;
        int i9 = i7;
        while (i9 < listCodePoints.size()) {
            Iterator<T> it2 = listCodePoints.iterator();
            if (!it2.hasNext()) {
                throw new NoSuchElementException();
            }
            Object next = it2.next();
            if (it2.hasNext()) {
                int iIntValue2 = ((Number) next).intValue();
                if (iIntValue2 < i3) {
                    iIntValue2 = Integer.MAX_VALUE;
                }
                do {
                    Object next2 = it2.next();
                    int iIntValue3 = ((Number) next2).intValue();
                    if (iIntValue3 < i3) {
                        iIntValue3 = Integer.MAX_VALUE;
                    }
                    if (iIntValue2 > iIntValue3) {
                        next = next2;
                        iIntValue2 = iIntValue3;
                    }
                } while (it2.hasNext());
            }
            int iIntValue4 = ((Number) next).intValue();
            int i10 = (iIntValue4 - i3) * (i9 + 1);
            if (i8 > Integer.MAX_VALUE - i10) {
                return false;
            }
            int i11 = i8 + i10;
            Iterator<Integer> it3 = listCodePoints.iterator();
            while (it3.hasNext()) {
                int iIntValue5 = it3.next().intValue();
                if (iIntValue5 < iIntValue4) {
                    if (i11 == Integer.MAX_VALUE) {
                        return false;
                    }
                    i11++;
                } else if (iIntValue5 == iIntValue4) {
                    IntProgression intProgressionStep = RangesKt.step(RangesKt.until(36, Integer.MAX_VALUE), 36);
                    int first = intProgressionStep.getFirst();
                    int last = intProgressionStep.getLast();
                    int step = intProgressionStep.getStep();
                    if ((step > 0 && first <= last) || (step < 0 && last <= first)) {
                        i5 = i11;
                        while (true) {
                            if (first <= iAdapt) {
                                i4 = i6;
                            } else {
                                i4 = i6;
                                i6 = first >= iAdapt + 26 ? 26 : first - iAdapt;
                            }
                            if (i5 < i6) {
                                break;
                            }
                            int i12 = i5 - i6;
                            int i13 = 36 - i6;
                            buffer.writeByte(getPunycodeDigit(i6 + (i12 % i13)));
                            i5 = i12 / i13;
                            if (first == last) {
                                break;
                            }
                            first += step;
                            i6 = i4;
                        }
                    } else {
                        i4 = i6;
                        i5 = i11;
                    }
                    buffer.writeByte(getPunycodeDigit(i5));
                    int i14 = i9 + 1;
                    iAdapt = adapt(i11, i14, i9 == i7 ? i4 : false);
                    i9 = i14;
                    i11 = 0;
                    i6 = i4;
                }
            }
            i8 = i11 + 1;
            i3 = iIntValue4 + 1;
        }
        return i6;
    }

    public final String decode(String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        int length = string.length();
        Buffer buffer = new Buffer();
        int i = 0;
        while (i < length) {
            String str = string;
            int iIndexOf$default = StringsKt.indexOf$default((CharSequence) str, '.', i, false, 4, (Object) null);
            if (iIndexOf$default == -1) {
                iIndexOf$default = length;
            }
            if (!decodeLabel(str, i, iIndexOf$default, buffer)) {
                return null;
            }
            if (iIndexOf$default >= length) {
                break;
            }
            buffer.writeByte(46);
            i = iIndexOf$default + 1;
            string = str;
        }
        return buffer.readUtf8();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean decodeLabel(String str, int i, int i2, Buffer buffer) {
        int i3;
        int i4;
        int i5 = 1;
        if (!StringsKt.regionMatches(str, i, PREFIX_STRING, 0, 4, true)) {
            buffer.writeUtf8(str, i, i2);
            return true;
        }
        int i6 = i + 4;
        ArrayList arrayList = new ArrayList();
        int iLastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str, SignatureVisitor.SUPER, i2, false, 4, (Object) null);
        char c = '0';
        char c2 = '[';
        char c3 = '{';
        int i7 = 0;
        if (iLastIndexOf$default >= i6) {
            while (i6 < iLastIndexOf$default) {
                int i8 = i6 + 1;
                char cCharAt = str.charAt(i6);
                if (('a' > cCharAt || cCharAt >= '{') && (('A' > cCharAt || cCharAt >= '[') && (('0' > cCharAt || cCharAt >= ':') && cCharAt != '-'))) {
                    return false;
                }
                arrayList.add(Integer.valueOf(cCharAt));
                i6 = i8;
            }
            i6++;
        }
        int i9 = 128;
        int iAdapt = 72;
        int i10 = 0;
        while (i6 < i2) {
            int i11 = i5;
            boolean z = i7;
            IntProgression intProgressionStep = RangesKt.step(RangesKt.until(36, Integer.MAX_VALUE), 36);
            int first = intProgressionStep.getFirst();
            int last = intProgressionStep.getLast();
            int step = intProgressionStep.getStep();
            if ((step > 0 && first <= last) || (step < 0 && last <= first)) {
                i3 = i10;
                int i12 = i11;
                while (i6 != i2) {
                    int i13 = i6 + 1;
                    char cCharAt2 = str.charAt(i6);
                    if ('a' <= cCharAt2 && cCharAt2 < c3) {
                        i4 = cCharAt2 - 'a';
                    } else if ('A' <= cCharAt2 && cCharAt2 < c2) {
                        i4 = cCharAt2 - 'A';
                    } else {
                        if (c > cCharAt2 || cCharAt2 >= ':') {
                            return z;
                        }
                        i4 = cCharAt2 - 22;
                    }
                    int i14 = i12;
                    int i15 = i4 * i14;
                    int i16 = i3;
                    if (i16 > Integer.MAX_VALUE - i15) {
                        return z;
                    }
                    i3 = i16 + i15;
                    int i17 = first <= iAdapt ? i11 : first >= iAdapt + 26 ? 26 : first - iAdapt;
                    if (i4 >= i17) {
                        int i18 = 36 - i17;
                        if (i14 > Integer.MAX_VALUE / i18) {
                            return z;
                        }
                        i12 = i14 * i18;
                        if (first != last) {
                            first += step;
                            i6 = i13;
                            c = '0';
                            c2 = '[';
                            c3 = '{';
                        }
                    }
                    i6 = i13;
                }
                return z;
            }
            i3 = i10;
            iAdapt = adapt(i3 - i10, arrayList.size() + 1, i10 == 0 ? i11 : z ? 1 : 0);
            int size = i3 / (arrayList.size() + 1);
            if (i9 > Integer.MAX_VALUE - size) {
                return z;
            }
            i9 += size;
            int size2 = i3 % (arrayList.size() + 1);
            if (i9 > 1114111) {
                return z;
            }
            arrayList.add(size2, Integer.valueOf(i9));
            i10 = size2 + 1;
            i7 = z ? 1 : 0;
            i5 = i11;
            c = '0';
            c2 = '[';
            c3 = '{';
        }
        boolean z2 = i5;
        int size3 = arrayList.size();
        while (i7 < size3) {
            Object obj = arrayList.get(i7);
            i7++;
            buffer.writeUtf8CodePoint(((Number) obj).intValue());
        }
        return z2;
    }

    private final int adapt(int i, int i2, boolean z) {
        int i3;
        if (z) {
            i3 = i / DAMP;
        } else {
            i3 = i / 2;
        }
        int i4 = i3 + (i3 / i2);
        int i5 = 0;
        while (i4 > 455) {
            i4 /= 35;
            i5 += 36;
        }
        return i5 + ((i4 * 36) / (i4 + 38));
    }

    private final boolean requiresEncode(String str, int i, int i2) {
        while (i < i2) {
            if (str.charAt(i) >= 128) {
                return true;
            }
            i++;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [char] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v6, types: [int] */
    private final List<Integer> codePoints(String str, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        while (i < i2) {
            int iCharAt = str.charAt(i);
            if (CharsKt.isSurrogate(iCharAt)) {
                int i3 = i + 1;
                char cCharAt = i3 < i2 ? str.charAt(i3) : (char) 0;
                if (Character.isLowSurrogate(iCharAt) || !Character.isLowSurrogate(cCharAt)) {
                    iCharAt = 63;
                } else {
                    iCharAt = 65536 + (((iCharAt & 1023) << 10) | (cCharAt & 1023));
                    i = i3;
                }
            }
            arrayList.add(Integer.valueOf(iCharAt));
            i++;
        }
        return arrayList;
    }

    private final int getPunycodeDigit(int i) {
        if (i < 26) {
            return i + 97;
        }
        if (i < 36) {
            return i + 22;
        }
        throw new IllegalStateException(("unexpected digit: " + i).toString());
    }
}
