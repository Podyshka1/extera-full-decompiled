package androidx.camera.camera2.pipe;

/* JADX INFO: loaded from: classes3.dex */
public final class RequestNumber {
    private final long value;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ RequestNumber m1747boximpl(long j) {
        return new RequestNumber(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m1748constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1749equalsimpl(long j, Object obj) {
        return (obj instanceof RequestNumber) && j == ((RequestNumber) obj).m1752unboximpl();
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1750hashCodeimpl(long j) {
        return CameraTimestamp$$ExternalSyntheticBackport0.m47m(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1751toStringimpl(long j) {
        return "RequestNumber(value=" + j + ')';
    }

    public boolean equals(Object obj) {
        return m1749equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1750hashCodeimpl(this.value);
    }

    public String toString() {
        return m1751toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m1752unboximpl() {
        return this.value;
    }

    private /* synthetic */ RequestNumber(long j) {
        this.value = j;
    }
}
