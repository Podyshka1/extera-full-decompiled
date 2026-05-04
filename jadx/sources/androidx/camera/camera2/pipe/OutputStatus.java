package androidx.camera.camera2.pipe;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
public final class OutputStatus {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int PENDING = m1673constructorimpl(0);
    private static final int AVAILABLE = m1673constructorimpl(1);
    private static final int UNAVAILABLE = m1673constructorimpl(2);
    private static final int ERROR_OUTPUT_FAILED = m1673constructorimpl(10);
    private static final int ERROR_OUTPUT_ABORTED = m1673constructorimpl(11);
    private static final int ERROR_OUTPUT_MISSING = m1673constructorimpl(12);
    private static final int ERROR_OUTPUT_DROPPED = m1673constructorimpl(13);

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ OutputStatus m1672boximpl(int i) {
        return new OutputStatus(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1673constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1674equalsimpl(int i, Object obj) {
        return (obj instanceof OutputStatus) && i == ((OutputStatus) obj).m1677unboximpl();
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1675hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m1674equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1675hashCodeimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1677unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getAVAILABLE-U7r42EA, reason: not valid java name */
        public final int m1678getAVAILABLEU7r42EA() {
            return OutputStatus.AVAILABLE;
        }

        /* JADX INFO: renamed from: getUNAVAILABLE-U7r42EA, reason: not valid java name */
        public final int m1682getUNAVAILABLEU7r42EA() {
            return OutputStatus.UNAVAILABLE;
        }

        /* JADX INFO: renamed from: getERROR_OUTPUT_FAILED-U7r42EA, reason: not valid java name */
        public final int m1680getERROR_OUTPUT_FAILEDU7r42EA() {
            return OutputStatus.ERROR_OUTPUT_FAILED;
        }

        /* JADX INFO: renamed from: getERROR_OUTPUT_ABORTED-U7r42EA, reason: not valid java name */
        public final int m1679getERROR_OUTPUT_ABORTEDU7r42EA() {
            return OutputStatus.ERROR_OUTPUT_ABORTED;
        }

        /* JADX INFO: renamed from: getERROR_OUTPUT_MISSING-U7r42EA, reason: not valid java name */
        public final int m1681getERROR_OUTPUT_MISSINGU7r42EA() {
            return OutputStatus.ERROR_OUTPUT_MISSING;
        }
    }

    private /* synthetic */ OutputStatus(int i) {
        this.value = i;
    }

    public String toString() {
        return m1676toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1676toStringimpl(int i) {
        if (i == 0) {
            return "PENDING";
        }
        if (i == 1) {
            return "AVAILABLE";
        }
        if (i == 2) {
            return "UNAVAILABLE";
        }
        switch (i) {
            case 10:
                return "ERROR_OUTPUT_FAILED";
            case 11:
                return "ERROR_OUTPUT_ABORTED";
            case 12:
                return "ERROR_OUTPUT_MISSING";
            case 13:
                return "ERROR_OUTPUT_DROPPED";
            default:
                return "OutputStatus(value=" + i + ')';
        }
    }
}
