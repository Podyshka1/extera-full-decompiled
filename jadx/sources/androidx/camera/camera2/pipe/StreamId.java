package androidx.camera.camera2.pipe;

/* JADX INFO: loaded from: classes3.dex */
public final class StreamId {
    private final int value;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ StreamId m1786boximpl(int i) {
        return new StreamId(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1787constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1788equalsimpl(int i, Object obj) {
        return (obj instanceof StreamId) && i == ((StreamId) obj).m1792unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1789equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1790hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m1788equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1790hashCodeimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1792unboximpl() {
        return this.value;
    }

    private /* synthetic */ StreamId(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1791toStringimpl(int i) {
        return "Stream-" + i;
    }

    public String toString() {
        return m1791toStringimpl(this.value);
    }
}
