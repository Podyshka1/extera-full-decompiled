package androidx.camera.camera2.pipe;

import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
public final class AeMode {
    public static final Companion Companion = new Companion(null);
    private static final int OFF;

    /* JADX INFO: renamed from: ON */
    private static final int f8ON;
    private static final int ON_ALWAYS_FLASH;
    private static final int ON_AUTO_FLASH;
    private static final int ON_AUTO_FLASH_REDEYE;
    private static final int ON_EXTERNAL_FLASH;
    private static final int ON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITY;
    private static final List values;
    private final int value;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ AeMode m1484boximpl(int i) {
        return new AeMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1485constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1486equalsimpl(int i, Object obj) {
        return (obj instanceof AeMode) && i == ((AeMode) obj).m1491unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1487equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1488hashCodeimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: isOn-impl, reason: not valid java name */
    public static final boolean m1489isOnimpl(int i) {
        return i != 0;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1490toStringimpl(int i) {
        return "AeMode(value=" + i + ')';
    }

    public boolean equals(Object obj) {
        return m1486equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1488hashCodeimpl(this.value);
    }

    public String toString() {
        return m1490toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1491unboximpl() {
        return this.value;
    }

    private /* synthetic */ AeMode(int i) {
        this.value = i;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getOFF-bOjpiJc, reason: not valid java name */
        public final int m1493getOFFbOjpiJc() {
            return AeMode.OFF;
        }

        /* JADX INFO: renamed from: getON-bOjpiJc, reason: not valid java name */
        public final int m1494getONbOjpiJc() {
            return AeMode.f8ON;
        }

        public final List getValues() {
            return AeMode.values;
        }

        /* JADX INFO: renamed from: fromIntOrNull-kQd0u18, reason: not valid java name */
        public final AeMode m1492fromIntOrNullkQd0u18(int i) {
            Object next;
            Iterator it = getValues().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (((AeMode) next).m1491unboximpl() == i) {
                    break;
                }
            }
            return (AeMode) next;
        }
    }

    static {
        int iM1485constructorimpl = m1485constructorimpl(0);
        OFF = iM1485constructorimpl;
        int iM1485constructorimpl2 = m1485constructorimpl(1);
        f8ON = iM1485constructorimpl2;
        int iM1485constructorimpl3 = m1485constructorimpl(3);
        ON_ALWAYS_FLASH = iM1485constructorimpl3;
        int iM1485constructorimpl4 = m1485constructorimpl(2);
        ON_AUTO_FLASH = iM1485constructorimpl4;
        int iM1485constructorimpl5 = m1485constructorimpl(4);
        ON_AUTO_FLASH_REDEYE = iM1485constructorimpl5;
        int iM1485constructorimpl6 = m1485constructorimpl(5);
        ON_EXTERNAL_FLASH = iM1485constructorimpl6;
        int iM1485constructorimpl7 = m1485constructorimpl(6);
        ON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITY = iM1485constructorimpl7;
        values = CollectionsKt.listOf((Object[]) new AeMode[]{m1484boximpl(iM1485constructorimpl), m1484boximpl(iM1485constructorimpl2), m1484boximpl(iM1485constructorimpl4), m1484boximpl(iM1485constructorimpl3), m1484boximpl(iM1485constructorimpl5), m1484boximpl(iM1485constructorimpl6), m1484boximpl(iM1485constructorimpl7)});
    }
}
