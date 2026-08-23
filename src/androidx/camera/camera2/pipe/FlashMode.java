package androidx.camera.camera2.pipe;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
public final class FlashMode {
    public static final Companion Companion = new Companion(null);
    private static final int OFF;
    private static final int SINGLE;
    private static final int TORCH;
    private static final List values;
    private final int value;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FlashMode m1630boximpl(int i) {
        return new FlashMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1631constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1632equalsimpl(int i, Object obj) {
        return (obj instanceof FlashMode) && i == ((FlashMode) obj).m1635unboximpl();
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1633hashCodeimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1634toStringimpl(int i) {
        return "FlashMode(value=" + i + ')';
    }

    public boolean equals(Object obj) {
        return m1632equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1633hashCodeimpl(this.value);
    }

    public String toString() {
        return m1634toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1635unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getOFF-Le5xUZU, reason: not valid java name */
        public final int m1636getOFFLe5xUZU() {
            return FlashMode.OFF;
        }

        /* JADX INFO: renamed from: getTORCH-Le5xUZU, reason: not valid java name */
        public final int m1637getTORCHLe5xUZU() {
            return FlashMode.TORCH;
        }
    }

    private /* synthetic */ FlashMode(int i) {
        this.value = i;
    }

    static {
        int iM1631constructorimpl = m1631constructorimpl(0);
        OFF = iM1631constructorimpl;
        int iM1631constructorimpl2 = m1631constructorimpl(1);
        SINGLE = iM1631constructorimpl2;
        int iM1631constructorimpl3 = m1631constructorimpl(2);
        TORCH = iM1631constructorimpl3;
        values = CollectionsKt.listOf((Object[]) new FlashMode[]{m1630boximpl(iM1631constructorimpl), m1630boximpl(iM1631constructorimpl2), m1630boximpl(iM1631constructorimpl3)});
    }
}
