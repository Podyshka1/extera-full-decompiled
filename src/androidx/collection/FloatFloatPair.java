package androidx.collection;

import androidx.camera.camera2.pipe.CameraTimestamp$$ExternalSyntheticBackport0;

/* JADX INFO: loaded from: classes.dex */
public final class FloatFloatPair {
    public final long packedValue;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FloatFloatPair m2041boximpl(long j) {
        return new FloatFloatPair(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m2043constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m2044equalsimpl(long j, Object obj) {
        return (obj instanceof FloatFloatPair) && j == ((FloatFloatPair) obj).m2047unboximpl();
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m2045hashCodeimpl(long j) {
        return CameraTimestamp$$ExternalSyntheticBackport0.m47m(j);
    }

    public boolean equals(Object obj) {
        return m2044equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m2045hashCodeimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m2047unboximpl() {
        return this.packedValue;
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m2042constructorimpl(float f, float f2) {
        return m2043constructorimpl((((long) Float.floatToRawIntBits(f2)) & 4294967295L) | (Float.floatToRawIntBits(f) << 32));
    }

    private /* synthetic */ FloatFloatPair(long j) {
        this.packedValue = j;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m2046toStringimpl(long j) {
        return '(' + Float.intBitsToFloat((int) (j >> 32)) + ", " + Float.intBitsToFloat((int) (j & 4294967295L)) + ')';
    }

    public String toString() {
        return m2046toStringimpl(this.packedValue);
    }
}
