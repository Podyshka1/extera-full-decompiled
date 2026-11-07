package kotlin;

import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a!\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0081\u0080\u0004¢\u0006\u0004\b\u0004\u0010\u0005\u001a!\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0081\u0080\u0004¢\u0006\u0004\b\u0007\u0010\u0005\u001a!\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\tH\u0081\u0080\u0004¢\u0006\u0004\b\n\u0010\u000b\u001a!\u0010\f\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\tH\u0081\u0080\u0004¢\u0006\u0004\b\r\u0010\u000b\u001a\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u000fH\u0081\u0080\u0004\u001a\u001a\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0011H\u0081\u0080\u0004\u001a\u0017\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u000fH\u0081\u0088\u0004¢\u0006\u0002\u0010\u0014\u001a\u0012\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000fH\u0081\u0088\u0004\u001a\u0012\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u000fH\u0081\u0088\u0004\u001a\u0017\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u0017H\u0081\u0088\u0004¢\u0006\u0002\u0010\u0019\u001a\u0012\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0013\u001a\u00020\u000fH\u0081\u0080\u0004\u001a\u0017\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u001bH\u0081\u0080\u0004¢\u0006\u0002\u0010\u001d\u001a\u0012\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u0011H\u0081\u0088\u0004\u001a\u0017\u0010\u001f\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0017H\u0081\u0088\u0004¢\u0006\u0002\u0010 \u001a\u0012\u0010!\u001a\u00020\u001b2\u0006\u0010\u0013\u001a\u00020\u0011H\u0081\u0080\u0004\u001a\u0017\u0010\"\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u001bH\u0081\u0080\u0004¢\u0006\u0002\u0010#\u001a\u0012\u0010$\u001a\u00020%2\u0006\u0010\u0013\u001a\u00020\u000fH\u0081\u0088\u0004\u001a\u001a\u0010$\u001a\u00020%2\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020\u000fH\u0081\u0088\u0004\u001a\u0012\u0010'\u001a\u00020%2\u0006\u0010\u0013\u001a\u00020\u0011H\u0081\u0088\u0004\u001a\u001a\u0010'\u001a\u00020%2\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010&\u001a\u00020\u000fH\u0080\u0080\u0004¨\u0006("}, d2 = {"uintRemainder", "Lkotlin/UInt;", "v1", "v2", "uintRemainder-J1ME1BU", "(II)I", "uintDivide", "uintDivide-J1ME1BU", "ulongDivide", "Lkotlin/ULong;", "ulongDivide-eb3DHEI", "(JJ)J", "ulongRemainder", "ulongRemainder-eb3DHEI", "uintCompare", _UrlKt.FRAGMENT_ENCODE_SET, "ulongCompare", _UrlKt.FRAGMENT_ENCODE_SET, "uintToULong", "value", "(I)J", "uintToLong", "uintToFloat", _UrlKt.FRAGMENT_ENCODE_SET, "floatToUInt", "(F)I", "uintToDouble", _UrlKt.FRAGMENT_ENCODE_SET, "doubleToUInt", "(D)I", "ulongToFloat", "floatToULong", "(F)J", "ulongToDouble", "doubleToULong", "(D)J", "uintToString", _UrlKt.FRAGMENT_ENCODE_SET, "base", "ulongToString", "kotlin-stdlib"}, m910k = 2, mv = {2, 3, 0}, xi = 48)
@JvmName(name = "UnsignedKt")
public final class UnsignedKt {
    @PublishedApi
    public static final double uintToDouble(int i) {
        return ((double) (Integer.MAX_VALUE & i)) + (((double) ((i >>> 31) << 30)) * 2.0d);
    }

    @PublishedApi
    @InlineOnly
    private static final long uintToLong(int i) {
        return ((long) i) & 4294967295L;
    }

    @PublishedApi
    public static final double ulongToDouble(long j) {
        return ((j >>> 11) * 2048.0d) + (j & 2047);
    }

    @PublishedApi
    /* JADX INFO: renamed from: uintRemainder-J1ME1BU, reason: not valid java name */
    public static final int m3960uintRemainderJ1ME1BU(int i, int i2) {
        return UInt.m3703constructorimpl((int) ((((long) i) & 4294967295L) % (((long) i2) & 4294967295L)));
    }

    @PublishedApi
    /* JADX INFO: renamed from: uintDivide-J1ME1BU, reason: not valid java name */
    public static final int m3959uintDivideJ1ME1BU(int i, int i2) {
        return UInt.m3703constructorimpl((int) ((((long) i) & 4294967295L) / (((long) i2) & 4294967295L)));
    }

    @PublishedApi
    /* JADX INFO: renamed from: ulongDivide-eb3DHEI, reason: not valid java name */
    public static final long m3961ulongDivideeb3DHEI(long j, long j2) {
        if (j2 < 0) {
            return Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) < 0 ? ULong.m3782constructorimpl(0L) : ULong.m3782constructorimpl(1L);
        }
        if (j >= 0) {
            return ULong.m3782constructorimpl(j / j2);
        }
        long j3 = ((j >>> 1) / j2) << 1;
        return ULong.m3782constructorimpl(j3 + ((long) (Long.compare(ULong.m3782constructorimpl(j - (j3 * j2)) ^ Long.MIN_VALUE, ULong.m3782constructorimpl(j2) ^ Long.MIN_VALUE) < 0 ? 0 : 1)));
    }

    @PublishedApi
    /* JADX INFO: renamed from: ulongRemainder-eb3DHEI, reason: not valid java name */
    public static final long m3962ulongRemaindereb3DHEI(long j, long j2) {
        if (j2 < 0) {
            return Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) < 0 ? j : ULong.m3782constructorimpl(j - j2);
        }
        if (j >= 0) {
            return ULong.m3782constructorimpl(j % j2);
        }
        long j3 = j - ((((j >>> 1) / j2) << 1) * j2);
        if (Long.compare(ULong.m3782constructorimpl(j3) ^ Long.MIN_VALUE, ULong.m3782constructorimpl(j2) ^ Long.MIN_VALUE) < 0) {
            j2 = 0;
        }
        return ULong.m3782constructorimpl(j3 - j2);
    }

    @PublishedApi
    public static final int uintCompare(int i, int i2) {
        return Intrinsics.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE);
    }

    @PublishedApi
    public static final int ulongCompare(long j, long j2) {
        return Intrinsics.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE);
    }

    @PublishedApi
    @InlineOnly
    private static final long uintToULong(int i) {
        return ULong.m3782constructorimpl(((long) i) & 4294967295L);
    }

    @PublishedApi
    @InlineOnly
    private static final float uintToFloat(int i) {
        return (float) uintToDouble(i);
    }

    @PublishedApi
    @InlineOnly
    private static final int floatToUInt(float f) {
        return doubleToUInt(f);
    }

    @PublishedApi
    public static final int doubleToUInt(double d) {
        if (Double.isNaN(d) || d <= 0.0d) {
            return 0;
        }
        if (d >= 4.294967295E9d) {
            return -1;
        }
        if (d <= 2.147483647E9d) {
            return UInt.m3703constructorimpl((int) d);
        }
        return UInt.m3703constructorimpl(UInt.m3703constructorimpl((int) (d - 2.147483647E9d)) + Integer.MAX_VALUE);
    }

    @PublishedApi
    @InlineOnly
    private static final float ulongToFloat(long j) {
        return (float) ulongToDouble(j);
    }

    @PublishedApi
    @InlineOnly
    private static final long floatToULong(float f) {
        return doubleToULong(f);
    }

    @PublishedApi
    public static final long doubleToULong(double d) {
        if (Double.isNaN(d) || d <= 0.0d) {
            return 0L;
        }
        if (d >= 1.8446744073709552E19d) {
            return -1L;
        }
        if (d < 9.223372036854776E18d) {
            return ULong.m3782constructorimpl((long) d);
        }
        return ULong.m3782constructorimpl(ULong.m3782constructorimpl((long) (d - 9.223372036854776E18d)) - Long.MIN_VALUE);
    }

    @InlineOnly
    private static final String uintToString(int i) {
        return String.valueOf(((long) i) & 4294967295L);
    }

    @InlineOnly
    private static final String uintToString(int i, int i2) {
        return ulongToString(((long) i) & 4294967295L, i2);
    }

    @InlineOnly
    private static final String ulongToString(long j) {
        return ulongToString(j, 10);
    }

    public static final String ulongToString(long j, int i) {
        if (j >= 0) {
            return Long.toString(j, CharsKt.checkRadix(i));
        }
        long j2 = i;
        long j3 = ((j >>> 1) / j2) << 1;
        long j4 = j - (j3 * j2);
        if (j4 >= j2) {
            j4 -= j2;
            j3++;
        }
        return Long.toString(j3, CharsKt.checkRadix(i)) + Long.toString(j4, CharsKt.checkRadix(i));
    }
}
