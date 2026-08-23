package androidx.camera.camera2.pipe;

import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
public final class AwbMode {
    private static final int AUTO;
    private static final int CLOUDY_DAYLIGHT;
    public static final Companion Companion = new Companion(null);
    private static final int DAYLIGHT;
    private static final int FLUORESCENT;
    private static final int INCANDESCENT;
    private static final int OFF;
    private static final int SHADE;
    private static final int TWILIGHT;
    private static final List values;
    private final int value;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ AwbMode m1515boximpl(int i) {
        return new AwbMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1516constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1517equalsimpl(int i, Object obj) {
        return (obj instanceof AwbMode) && i == ((AwbMode) obj).m1521unboximpl();
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1518hashCodeimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: isOn-impl, reason: not valid java name */
    public static final boolean m1519isOnimpl(int i) {
        return i != 0;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1520toStringimpl(int i) {
        return "AwbMode(value=" + i + ')';
    }

    public boolean equals(Object obj) {
        return m1517equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1518hashCodeimpl(this.value);
    }

    public String toString() {
        return m1520toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1521unboximpl() {
        return this.value;
    }

    private /* synthetic */ AwbMode(int i) {
        this.value = i;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List getValues() {
            return AwbMode.values;
        }

        /* JADX INFO: renamed from: fromIntOrNull--SaEiwI, reason: not valid java name */
        public final AwbMode m1522fromIntOrNullSaEiwI(int i) {
            Object next;
            Iterator it = getValues().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (((AwbMode) next).m1521unboximpl() == i) {
                    break;
                }
            }
            return (AwbMode) next;
        }
    }

    static {
        int iM1516constructorimpl = m1516constructorimpl(0);
        OFF = iM1516constructorimpl;
        int iM1516constructorimpl2 = m1516constructorimpl(1);
        AUTO = iM1516constructorimpl2;
        int iM1516constructorimpl3 = m1516constructorimpl(6);
        CLOUDY_DAYLIGHT = iM1516constructorimpl3;
        int iM1516constructorimpl4 = m1516constructorimpl(5);
        DAYLIGHT = iM1516constructorimpl4;
        int iM1516constructorimpl5 = m1516constructorimpl(2);
        INCANDESCENT = iM1516constructorimpl5;
        int iM1516constructorimpl6 = m1516constructorimpl(3);
        FLUORESCENT = iM1516constructorimpl6;
        int iM1516constructorimpl7 = m1516constructorimpl(8);
        SHADE = iM1516constructorimpl7;
        int iM1516constructorimpl8 = m1516constructorimpl(7);
        TWILIGHT = iM1516constructorimpl8;
        values = CollectionsKt.listOf((Object[]) new AwbMode[]{m1515boximpl(iM1516constructorimpl), m1515boximpl(iM1516constructorimpl2), m1515boximpl(iM1516constructorimpl3), m1515boximpl(iM1516constructorimpl4), m1515boximpl(iM1516constructorimpl5), m1515boximpl(iM1516constructorimpl6), m1515boximpl(iM1516constructorimpl7), m1515boximpl(iM1516constructorimpl8)});
    }
}
