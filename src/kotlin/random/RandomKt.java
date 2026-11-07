package kotlin.random;

import com.sun.jna.Native$$ExternalSyntheticBUOutline5;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.LongRange;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\u0080\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0004H\u0087\u0080\u0004\u001a\u0016\u0010\u0005\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0007H\u0087\u0080\u0004\u001a\u0016\u0010\b\u001a\u00020\u0004*\u00020\u00012\u0006\u0010\u0006\u001a\u00020\tH\u0087\u0080\u0004\u001a\u0012\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0003H\u0080\u0080\u0004\u001a\u0016\u0010\f\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003H\u0080\u0080\u0004\u001a\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0003H\u0080\u0080\u0004\u001a\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0004H\u0080\u0080\u0004\u001a\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0012H\u0080\u0080\u0004\u001a\u001a\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0015H\u0080\u0080\u0004¨\u0006\u0016"}, d2 = {"Random", "Lkotlin/random/Random;", "seed", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "nextInt", "range", "Lkotlin/ranges/IntRange;", "nextLong", "Lkotlin/ranges/LongRange;", "fastLog2", "value", "takeUpperBits", "bitCount", "checkRangeBounds", _UrlKt.FRAGMENT_ENCODE_SET, "from", "until", _UrlKt.FRAGMENT_ENCODE_SET, "boundsErrorMessage", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, m862k = 2, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Random.kt\nkotlin/random/RandomKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,390:1\n1#2:391\n*E\n"})
public final class RandomKt {
    public static final int takeUpperBits(int i, int i2) {
        return (i >>> (32 - i2)) & ((-i2) >> 31);
    }

    @SinceKotlin(version = "1.3")
    public static final Random Random(int i) {
        return new XorWowRandom(i, i >> 31);
    }

    @SinceKotlin(version = "1.3")
    public static final Random Random(long j) {
        return new XorWowRandom((int) j, (int) (j >> 32));
    }

    @SinceKotlin(version = "1.3")
    public static final int nextInt(Random random, IntRange intRange) {
        if (!intRange.isEmpty()) {
            return intRange.getLast() < Integer.MAX_VALUE ? random.nextInt(intRange.getFirst(), intRange.getLast() + 1) : intRange.getFirst() > Integer.MIN_VALUE ? random.nextInt(intRange.getFirst() - 1, intRange.getLast()) + 1 : random.nextInt();
        }
        Native$$ExternalSyntheticBUOutline5.m493m("Cannot get random in empty range: ", intRange);
        return 0;
    }

    @SinceKotlin(version = "1.3")
    public static final long nextLong(Random random, LongRange longRange) {
        if (!longRange.isEmpty()) {
            return longRange.getLast() < LongCompanionObject.MAX_VALUE ? random.nextLong(longRange.getFirst(), longRange.getLast() + 1) : longRange.getFirst() > Long.MIN_VALUE ? random.nextLong(longRange.getFirst() - 1, longRange.getLast()) + 1 : random.nextLong();
        }
        Native$$ExternalSyntheticBUOutline5.m493m("Cannot get random in empty range: ", longRange);
        return 0L;
    }

    public static final int fastLog2(int i) {
        return 31 - Integer.numberOfLeadingZeros(i);
    }

    public static final void checkRangeBounds(int i, int i2) {
        if (i2 > i) {
            return;
        }
        RandomKt$$ExternalSyntheticBUOutline0.m884m(boundsErrorMessage(Integer.valueOf(i), Integer.valueOf(i2)));
    }

    public static final void checkRangeBounds(long j, long j2) {
        if (j2 > j) {
            return;
        }
        RandomKt$$ExternalSyntheticBUOutline0.m884m(boundsErrorMessage(Long.valueOf(j), Long.valueOf(j2)));
    }

    public static final void checkRangeBounds(double d, double d2) {
        if (d2 > d) {
            return;
        }
        RandomKt$$ExternalSyntheticBUOutline0.m884m(boundsErrorMessage(Double.valueOf(d), Double.valueOf(d2)));
    }

    public static final String boundsErrorMessage(Object obj, Object obj2) {
        return "Random range is empty: [" + obj + ", " + obj2 + ").";
    }
}
