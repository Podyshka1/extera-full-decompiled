package androidx.camera.camera2.pipe;

/* JADX INFO: loaded from: classes3.dex */
public final class OutputId {
    private final int value;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ OutputId m1665boximpl(int i) {
        return new OutputId(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1666constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1667equalsimpl(int i, Object obj) {
        return (obj instanceof OutputId) && i == ((OutputId) obj).m1671unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1668equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1669hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m1667equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1669hashCodeimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1671unboximpl() {
        return this.value;
    }

    private /* synthetic */ OutputId(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1670toStringimpl(int i) {
        return "Output-" + i;
    }

    public String toString() {
        return m1670toStringimpl(this.value);
    }
}
