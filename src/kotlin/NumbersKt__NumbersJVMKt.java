package kotlin;

import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.DoubleCompanionObject;
import kotlin.jvm.internal.FloatCompanionObject;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\t\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u00020\u0003H\u0087\u0088\u0004\u001a\u000e\u0010\u0004\u001a\u00020\u0001*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u0004\u001a\u00020\u0001*\u00020\u0003H\u0087\u0088\u0004\u001a\u000e\u0010\u0005\u001a\u00020\u0001*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u0005\u001a\u00020\u0001*\u00020\u0003H\u0087\u0088\u0004\u001a\u000e\u0010\u0006\u001a\u00020\u0007*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\b\u001a\u00020\u0007*\u00020\u0002H\u0087\u0088\u0004\u001a\u0016\u0010\t\u001a\u00020\u0002*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007H\u0087\u0088\u0004\u001a\u000e\u0010\u0006\u001a\u00020\f*\u00020\u0003H\u0087\u0088\u0004\u001a\u000e\u0010\b\u001a\u00020\f*\u00020\u0003H\u0087\u0088\u0004\u001a\u0016\u0010\t\u001a\u00020\u0003*\u00020\r2\u0006\u0010\u000b\u001a\u00020\fH\u0087\u0088\u0004\u001a\u000e\u0010\u000e\u001a\u00020\f*\u00020\fH\u0087\u0088\u0004\u001a\u000e\u0010\u000f\u001a\u00020\f*\u00020\fH\u0087\u0088\u0004\u001a\u000e\u0010\u0010\u001a\u00020\f*\u00020\fH\u0087\u0088\u0004\u001a\u000e\u0010\u0011\u001a\u00020\f*\u00020\fH\u0087\u0088\u0004\u001a\u000e\u0010\u0012\u001a\u00020\f*\u00020\fH\u0087\u0088\u0004\u001a\u0016\u0010\u0013\u001a\u00020\f*\u00020\f2\u0006\u0010\u0014\u001a\u00020\fH\u0087\u0088\u0004\u001a\u0016\u0010\u0015\u001a\u00020\f*\u00020\f2\u0006\u0010\u0014\u001a\u00020\fH\u0087\u0088\u0004\u001a\u000e\u0010\u000e\u001a\u00020\f*\u00020\u0007H\u0087\u0088\u0004\u001a\u000e\u0010\u000f\u001a\u00020\f*\u00020\u0007H\u0087\u0088\u0004\u001a\u000e\u0010\u0010\u001a\u00020\f*\u00020\u0007H\u0087\u0088\u0004\u001a\u000e\u0010\u0011\u001a\u00020\u0007*\u00020\u0007H\u0087\u0088\u0004\u001a\u000e\u0010\u0012\u001a\u00020\u0007*\u00020\u0007H\u0087\u0088\u0004\u001a\u0016\u0010\u0013\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0014\u001a\u00020\fH\u0087\u0088\u0004\u001a\u0016\u0010\u0015\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0014\u001a\u00020\fH\u0087\u0088\u0004¨\u0006\u0016"}, d2 = {"isNaN", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "isInfinite", "isFinite", "toBits", _UrlKt.FRAGMENT_ENCODE_SET, "toRawBits", "fromBits", "Lkotlin/Double$Companion;", "bits", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/Float$Companion;", "countOneBits", "countLeadingZeroBits", "countTrailingZeroBits", "takeHighestOneBit", "takeLowestOneBit", "rotateLeft", "bitCount", "rotateRight", "kotlin-stdlib"}, m910k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/NumbersKt")
class NumbersKt__NumbersJVMKt extends NumbersKt__FloorDivModKt {
    @InlineOnly
    private static final boolean isNaN(double d) {
        return Double.isNaN(d);
    }

    @InlineOnly
    private static final boolean isNaN(float f) {
        return Float.isNaN(f);
    }

    @InlineOnly
    private static final boolean isInfinite(double d) {
        return Double.isInfinite(d);
    }

    @InlineOnly
    private static final boolean isInfinite(float f) {
        return Float.isInfinite(f);
    }

    @InlineOnly
    private static final boolean isFinite(double d) {
        return Math.abs(d) <= Double.MAX_VALUE;
    }

    @InlineOnly
    private static final boolean isFinite(float f) {
        return Math.abs(f) <= Float.MAX_VALUE;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final long toBits(double d) {
        return Double.doubleToLongBits(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final long toRawBits(double d) {
        return Double.doubleToRawLongBits(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double fromBits(DoubleCompanionObject doubleCompanionObject, long j) {
        return Double.longBitsToDouble(j);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final int toBits(float f) {
        return Float.floatToIntBits(f);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final int toRawBits(float f) {
        return Float.floatToRawIntBits(f);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float fromBits(FloatCompanionObject floatCompanionObject, int i) {
        return Float.intBitsToFloat(i);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countOneBits(int i) {
        return Integer.bitCount(i);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countLeadingZeroBits(int i) {
        return Integer.numberOfLeadingZeros(i);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countTrailingZeroBits(int i) {
        return Integer.numberOfTrailingZeros(i);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int takeHighestOneBit(int i) {
        return Integer.highestOneBit(i);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int takeLowestOneBit(int i) {
        return Integer.lowestOneBit(i);
    }

    @SinceKotlin(version = "1.6")
    @InlineOnly
    private static final int rotateLeft(int i, int i2) {
        return Integer.rotateLeft(i, i2);
    }

    @SinceKotlin(version = "1.6")
    @InlineOnly
    private static final int rotateRight(int i, int i2) {
        return Integer.rotateRight(i, i2);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countOneBits(long j) {
        return Long.bitCount(j);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countLeadingZeroBits(long j) {
        return Long.numberOfLeadingZeros(j);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countTrailingZeroBits(long j) {
        return Long.numberOfTrailingZeros(j);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final long takeHighestOneBit(long j) {
        return Long.highestOneBit(j);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final long takeLowestOneBit(long j) {
        return Long.lowestOneBit(j);
    }

    @SinceKotlin(version = "1.6")
    @InlineOnly
    private static final long rotateLeft(long j, int i) {
        return Long.rotateLeft(j, i);
    }

    @SinceKotlin(version = "1.6")
    @InlineOnly
    private static final long rotateRight(long j, int i) {
        return Long.rotateRight(j, i);
    }
}
