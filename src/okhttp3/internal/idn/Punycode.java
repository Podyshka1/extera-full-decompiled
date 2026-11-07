package okhttp3.internal.idn;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import okio.Buffer;
import okio.ByteString;
import org.mvel2.asm.signature.SignatureVisitor;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\u0005J(\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\u0005J(\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J \u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\r2\u0006\u0010!\u001a\u00020\u0017H\u0002J\u001c\u0010\"\u001a\u00020\u0017*\u00020\u00052\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\rH\u0002J\"\u0010#\u001a\b\u0012\u0004\u0012\u00020\r0$*\u00020\u00052\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\rH\u0002R\u0014\u0010\u0004\u001a\u00020\u0005X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u0018\u0010%\u001a\u00020\r*\u00020\r8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'¨\u0006("}, d2 = {"Lokhttp3/internal/idn/Punycode;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "PREFIX_STRING", _UrlKt.FRAGMENT_ENCODE_SET, "getPREFIX_STRING", "()Ljava/lang/String;", "PREFIX", "Lokio/ByteString;", "getPREFIX", "()Lokio/ByteString;", "BASE", _UrlKt.FRAGMENT_ENCODE_SET, "TMIN", "TMAX", "SKEW", "DAMP", "INITIAL_BIAS", "INITIAL_N", "encode", "string", "encodeLabel", _UrlKt.FRAGMENT_ENCODE_SET, "pos", "limit", "result", "Lokio/Buffer;", "decode", "decodeLabel", "adapt", "delta", "numpoints", "first", "requiresEncode", "codePoints", _UrlKt.FRAGMENT_ENCODE_SET, "punycodeDigit", "getPunycodeDigit", "(I)I", "okhttp"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPunycode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Punycode.kt\nokhttp3/internal/idn/Punycode\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,329:1\n2393#2,14:330\n*S KotlinDebug\n*F\n+ 1 Punycode.kt\nokhttp3/internal/idn/Punycode\n*L\n108#1:330,14\n*E\n"})
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
    private static final ByteString PREFIX = ByteString.INSTANCE.encodeUtf8("xn--");

    private Punycode() {
    }

    public final String getPREFIX_STRING() {
        return PREFIX_STRING;
    }

    public final ByteString getPREFIX() {
        return PREFIX;
    }

    public final String encode(String string) {
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
    private final boolean encodeLabel(String string, int pos, int limit, Buffer result) {
        int i;
        int i2;
        int i3;
        int i4 = 1;
        if (!requiresEncode(string, pos, limit)) {
            result.writeUtf8(string, pos, limit);
            return true;
        }
        result.write(PREFIX);
        List<Integer> listCodePoints = codePoints(string, pos, limit);
        Iterator<Integer> it = listCodePoints.iterator();
        int i5 = 0;
        while (true) {
            i = 128;
            if (!it.hasNext()) {
                break;
            }
            int iIntValue = it.next().intValue();
            if (iIntValue < 128) {
                result.writeByte(iIntValue);
                i5++;
            }
        }
        if (i5 > 0) {
            result.writeByte(45);
        }
        int iAdapt = 72;
        int i6 = 0;
        int i7 = i5;
        while (i7 < listCodePoints.size()) {
            Iterator<T> it2 = listCodePoints.iterator();
            if (!it2.hasNext()) {
                Utils$$ExternalSyntheticBUOutline0.m1121m();
                return false;
            }
            Object next = it2.next();
            if (it2.hasNext()) {
                int iIntValue2 = ((Number) next).intValue();
                if (iIntValue2 < i) {
                    iIntValue2 = Integer.MAX_VALUE;
                }
                do {
                    Object next2 = it2.next();
                    int iIntValue3 = ((Number) next2).intValue();
                    if (iIntValue3 < i) {
                        iIntValue3 = Integer.MAX_VALUE;
                    }
                    if (iIntValue2 > iIntValue3) {
                        next = next2;
                        iIntValue2 = iIntValue3;
                    }
                } while (it2.hasNext());
            }
            int iIntValue4 = ((Number) next).intValue();
            int i8 = (iIntValue4 - i) * (i7 + 1);
            if (i6 > Integer.MAX_VALUE - i8) {
                return false;
            }
            int i9 = i6 + i8;
            Iterator<Integer> it3 = listCodePoints.iterator();
            while (it3.hasNext()) {
                int iIntValue5 = it3.next().intValue();
                if (iIntValue5 < iIntValue4) {
                    if (i9 == Integer.MAX_VALUE) {
                        return false;
                    }
                    i9++;
                } else if (iIntValue5 == iIntValue4) {
                    IntProgression intProgressionStep = RangesKt.step(RangesKt.until(36, Integer.MAX_VALUE), 36);
                    int first = intProgressionStep.getFirst();
                    int last = intProgressionStep.getLast();
                    int step = intProgressionStep.getStep();
                    if ((step > 0 && first <= last) || (step < 0 && last <= first)) {
                        i3 = i9;
                        while (true) {
                            if (first <= iAdapt) {
                                i2 = i4;
                            } else {
                                i2 = i4;
                                i4 = first >= iAdapt + 26 ? 26 : first - iAdapt;
                            }
                            if (i3 < i4) {
                                break;
                            }
                            int i10 = i3 - i4;
                            int i11 = 36 - i4;
                            result.writeByte(getPunycodeDigit(i4 + (i10 % i11)));
                            i3 = i10 / i11;
                            if (first == last) {
                                break;
                            }
                            first += step;
                            i4 = i2;
                        }
                    } else {
                        i2 = i4;
                        i3 = i9;
                    }
                    result.writeByte(getPunycodeDigit(i3));
                    int i12 = i7 + 1;
                    iAdapt = adapt(i9, i12, i7 == i5 ? i2 : false);
                    i7 = i12;
                    i9 = 0;
                    i4 = i2;
                }
            }
            i6 = i9 + 1;
            i = iIntValue4 + 1;
        }
        return i4;
    }

    public final String decode(String string) {
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
    private final boolean decodeLabel(String string, int pos, int limit, Buffer result) {
        int i;
        int i2;
        int i3 = 1;
        if (!StringsKt.regionMatches(string, pos, PREFIX_STRING, 0, 4, true)) {
            result.writeUtf8(string, pos, limit);
            return true;
        }
        int i4 = pos + 4;
        ArrayList arrayList = new ArrayList();
        int iLastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) string, SignatureVisitor.SUPER, limit, false, 4, (Object) null);
        char c2 = '0';
        char c3 = '[';
        char c4 = '{';
        int i5 = 0;
        if (iLastIndexOf$default >= i4) {
            while (i4 < iLastIndexOf$default) {
                int i6 = i4 + 1;
                char cCharAt = string.charAt(i4);
                if (('a' > cCharAt || cCharAt >= '{') && (('A' > cCharAt || cCharAt >= '[') && (('0' > cCharAt || cCharAt >= ':') && cCharAt != '-'))) {
                    return false;
                }
                arrayList.add(Integer.valueOf(cCharAt));
                i4 = i6;
            }
            i4++;
        }
        int i7 = 128;
        int iAdapt = 72;
        int i8 = 0;
        while (i4 < limit) {
            int i9 = i3;
            boolean z = i5;
            IntProgression intProgressionStep = RangesKt.step(RangesKt.until(36, Integer.MAX_VALUE), 36);
            int first = intProgressionStep.getFirst();
            int last = intProgressionStep.getLast();
            int step = intProgressionStep.getStep();
            if ((step > 0 && first <= last) || (step < 0 && last <= first)) {
                i = i8;
                int i10 = i9;
                while (i4 != limit) {
                    int i11 = i4 + 1;
                    char cCharAt2 = string.charAt(i4);
                    if ('a' <= cCharAt2 && cCharAt2 < c4) {
                        i2 = cCharAt2 - 'a';
                    } else if ('A' <= cCharAt2 && cCharAt2 < c3) {
                        i2 = cCharAt2 - 'A';
                    } else {
                        if (c2 > cCharAt2 || cCharAt2 >= ':') {
                            return z;
                        }
                        i2 = cCharAt2 - 22;
                    }
                    int i12 = i10;
                    int i13 = i2 * i12;
                    int i14 = i;
                    if (i14 > Integer.MAX_VALUE - i13) {
                        return z;
                    }
                    i = i14 + i13;
                    int i15 = first <= iAdapt ? i9 : first >= iAdapt + 26 ? 26 : first - iAdapt;
                    if (i2 >= i15) {
                        int i16 = 36 - i15;
                        if (i12 > Integer.MAX_VALUE / i16) {
                            return z;
                        }
                        i10 = i12 * i16;
                        if (first != last) {
                            first += step;
                            i4 = i11;
                            c2 = '0';
                            c3 = '[';
                            c4 = '{';
                        }
                    }
                    i4 = i11;
                }
                return z;
            }
            i = i8;
            iAdapt = adapt(i - i8, arrayList.size() + 1, i8 == 0 ? i9 : z ? 1 : 0);
            int size = i / (arrayList.size() + 1);
            if (i7 > Integer.MAX_VALUE - size) {
                return z;
            }
            i7 += size;
            int size2 = i % (arrayList.size() + 1);
            if (i7 > 1114111) {
                return z;
            }
            arrayList.add(size2, Integer.valueOf(i7));
            i8 = size2 + 1;
            i5 = z ? 1 : 0;
            i3 = i9;
            c2 = '0';
            c3 = '[';
            c4 = '{';
        }
        boolean z2 = i3;
        int size3 = arrayList.size();
        while (i5 < size3) {
            Object obj = arrayList.get(i5);
            i5++;
            result.writeUtf8CodePoint(((Number) obj).intValue());
        }
        return z2;
    }

    private final int adapt(int delta, int numpoints, boolean first) {
        int i;
        if (first) {
            i = delta / DAMP;
        } else {
            i = delta / 2;
        }
        int i2 = i + (i / numpoints);
        int i3 = 0;
        while (i2 > 455) {
            i2 /= 35;
            i3 += 36;
        }
        return i3 + ((i2 * 36) / (i2 + 38));
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
    /* JADX WARN: Type inference failed for: r0v0, types: [char] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v6, types: [int] */
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
