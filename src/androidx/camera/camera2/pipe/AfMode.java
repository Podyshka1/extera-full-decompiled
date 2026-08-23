package androidx.camera.camera2.pipe;

import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
public final class AfMode {
    private static final int AUTO;
    private static final int CONTINUOUS_PICTURE;
    private static final int CONTINUOUS_VIDEO;
    public static final Companion Companion = new Companion(null);
    private static final int EDOF;
    private static final int MACRO;
    private static final int OFF;
    private static final List values;
    private final int value;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ AfMode m1495boximpl(int i) {
        return new AfMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1496constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1497equalsimpl(int i, Object obj) {
        return (obj instanceof AfMode) && i == ((AfMode) obj).m1502unboximpl();
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1498hashCodeimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: isContinuous-impl, reason: not valid java name */
    public static final boolean m1499isContinuousimpl(int i) {
        return i == 3 || i == 4;
    }

    /* JADX INFO: renamed from: isOn-impl, reason: not valid java name */
    public static final boolean m1500isOnimpl(int i) {
        return i != 0;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1501toStringimpl(int i) {
        return "AfMode(value=" + i + ')';
    }

    public boolean equals(Object obj) {
        return m1497equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1498hashCodeimpl(this.value);
    }

    public String toString() {
        return m1501toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1502unboximpl() {
        return this.value;
    }

    private /* synthetic */ AfMode(int i) {
        this.value = i;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getAUTO-vHZNRtE, reason: not valid java name */
        public final int m1504getAUTOvHZNRtE() {
            return AfMode.AUTO;
        }

        public final List getValues() {
            return AfMode.values;
        }

        /* JADX INFO: renamed from: fromIntOrNull-MKXwA8g, reason: not valid java name */
        public final AfMode m1503fromIntOrNullMKXwA8g(int i) {
            Object next;
            Iterator it = getValues().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (((AfMode) next).m1502unboximpl() == i) {
                    break;
                }
            }
            return (AfMode) next;
        }
    }

    static {
        int iM1496constructorimpl = m1496constructorimpl(0);
        OFF = iM1496constructorimpl;
        int iM1496constructorimpl2 = m1496constructorimpl(1);
        AUTO = iM1496constructorimpl2;
        int iM1496constructorimpl3 = m1496constructorimpl(2);
        MACRO = iM1496constructorimpl3;
        int iM1496constructorimpl4 = m1496constructorimpl(3);
        CONTINUOUS_VIDEO = iM1496constructorimpl4;
        int iM1496constructorimpl5 = m1496constructorimpl(4);
        CONTINUOUS_PICTURE = iM1496constructorimpl5;
        int iM1496constructorimpl6 = m1496constructorimpl(5);
        EDOF = iM1496constructorimpl6;
        values = CollectionsKt.listOf((Object[]) new AfMode[]{m1495boximpl(iM1496constructorimpl), m1495boximpl(iM1496constructorimpl2), m1495boximpl(iM1496constructorimpl3), m1495boximpl(iM1496constructorimpl4), m1495boximpl(iM1496constructorimpl5), m1495boximpl(iM1496constructorimpl6)});
    }
}
