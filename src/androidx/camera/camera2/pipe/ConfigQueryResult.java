package androidx.camera.camera2.pipe;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
public final class ConfigQueryResult {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int UNKNOWN = m1622constructorimpl(0);
    private static final int SUPPORTED = m1622constructorimpl(1);
    private static final int UNSUPPORTED = m1622constructorimpl(2);

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ConfigQueryResult m1621boximpl(int i) {
        return new ConfigQueryResult(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1622constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1623equalsimpl(int i, Object obj) {
        return (obj instanceof ConfigQueryResult) && i == ((ConfigQueryResult) obj).m1627unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1624equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1625hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m1623equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1625hashCodeimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1627unboximpl() {
        return this.value;
    }

    private /* synthetic */ ConfigQueryResult(int i) {
        this.value = i;
    }

    public String toString() {
        return m1626toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1626toStringimpl(int i) {
        return m1624equalsimpl0(i, SUPPORTED) ? "SUPPORTED" : m1624equalsimpl0(i, UNSUPPORTED) ? "UNSUPPORTED" : "UNKNOWN";
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getUNKNOWN-Xp6DSB4, reason: not valid java name */
        public final int m1629getUNKNOWNXp6DSB4() {
            return ConfigQueryResult.UNKNOWN;
        }

        /* JADX INFO: renamed from: getSUPPORTED-Xp6DSB4, reason: not valid java name */
        public final int m1628getSUPPORTEDXp6DSB4() {
            return ConfigQueryResult.SUPPORTED;
        }
    }
}
