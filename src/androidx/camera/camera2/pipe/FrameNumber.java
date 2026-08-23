package androidx.camera.camera2.pipe;

/* JADX INFO: loaded from: classes3.dex */
public final class FrameNumber {
    private final long value;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FrameNumber m1642boximpl(long j) {
        return new FrameNumber(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m1643constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1644equalsimpl(long j, Object obj) {
        return (obj instanceof FrameNumber) && j == ((FrameNumber) obj).m1648unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1645equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1646hashCodeimpl(long j) {
        return CameraTimestamp$$ExternalSyntheticBackport0.m47m(j);
    }

    public boolean equals(Object obj) {
        return m1644equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1646hashCodeimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m1648unboximpl() {
        return this.value;
    }

    private /* synthetic */ FrameNumber(long j) {
        this.value = j;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1647toStringimpl(long j) {
        return "Frame-" + j;
    }

    public String toString() {
        return m1647toStringimpl(this.value);
    }
}
