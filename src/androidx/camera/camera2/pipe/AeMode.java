package androidx.camera.camera2.pipe;

import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0087@\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\r\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u0005J\u001a\u0010\u0013\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\u0088\u0001\u0003\u0092\u0001\u00020\u0002¨\u0006\u0018"}, d2 = {"Landroidx/camera/camera2/pipe/AeMode;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "value", "constructor-impl", "(I)I", _UrlKt.FRAGMENT_ENCODE_SET, "isOn-impl", "(I)Z", "isOn", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(I)Ljava/lang/String;", "toString", "hashCode-impl", "hashCode", "other", "equals-impl", "(ILjava/lang/Object;)Z", "equals", "I", "getValue", "()I", "Companion", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class AeMode {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int OFF;
    private static final int ON;
    private static final int ON_ALWAYS_FLASH;
    private static final int ON_AUTO_FLASH;
    private static final int ON_AUTO_FLASH_REDEYE;
    private static final int ON_EXTERNAL_FLASH;
    private static final int ON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITY;
    private static final List<AeMode> values;
    private final int value;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ AeMode m1090boximpl(int i) {
        return new AeMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1091constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1092equalsimpl(int i, Object obj) {
        return (obj instanceof AeMode) && i == ((AeMode) obj).getValue();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1093equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1094hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: isOn-impl, reason: not valid java name */
    public static final boolean m1095isOnimpl(int i) {
        return i != 0;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1096toStringimpl(int i) {
        return "AeMode(value=" + i + ')';
    }

    public boolean equals(Object obj) {
        return m1092equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1094hashCodeimpl(this.value);
    }

    public String toString() {
        return m1096toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ int getValue() {
        return this.value;
    }

    private /* synthetic */ AeMode(int i) {
        this.value = i;
    }

    @kotlin.Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\t\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\n\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0017\u0010\u000e\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000b\u001a\u0004\b\u000f\u0010\rR\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Landroidx/camera/camera2/pipe/AeMode$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "value", "Landroidx/camera/camera2/pipe/AeMode;", "fromIntOrNull-kQd0u18", "(I)Landroidx/camera/camera2/pipe/AeMode;", "fromIntOrNull", "OFF", "I", "getOFF-bOjpiJc", "()I", "ON", "getON-bOjpiJc", _UrlKt.FRAGMENT_ENCODE_SET, "values", "Ljava/util/List;", "getValues", "()Ljava/util/List;", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCameraControls.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraControls.kt\nandroidx/camera/camera2/pipe/AeMode$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,225:1\n295#2,2:226\n*S KotlinDebug\n*F\n+ 1 CameraControls.kt\nandroidx/camera/camera2/pipe/AeMode$Companion\n*L\n88#1:226,2\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getOFF-bOjpiJc, reason: not valid java name */
        public final int m1099getOFFbOjpiJc() {
            return AeMode.OFF;
        }

        /* JADX INFO: renamed from: getON-bOjpiJc, reason: not valid java name */
        public final int m1100getONbOjpiJc() {
            return AeMode.ON;
        }

        public final List<AeMode> getValues() {
            return AeMode.values;
        }

        @JvmStatic
        /* JADX INFO: renamed from: fromIntOrNull-kQd0u18, reason: not valid java name */
        public final AeMode m1098fromIntOrNullkQd0u18(int value) {
            Object next;
            Iterator<T> it = getValues().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (((AeMode) next).getValue() == value) {
                    break;
                }
            }
            return (AeMode) next;
        }
    }

    static {
        int iM1091constructorimpl = m1091constructorimpl(0);
        OFF = iM1091constructorimpl;
        int iM1091constructorimpl2 = m1091constructorimpl(1);
        ON = iM1091constructorimpl2;
        int iM1091constructorimpl3 = m1091constructorimpl(3);
        ON_ALWAYS_FLASH = iM1091constructorimpl3;
        int iM1091constructorimpl4 = m1091constructorimpl(2);
        ON_AUTO_FLASH = iM1091constructorimpl4;
        int iM1091constructorimpl5 = m1091constructorimpl(4);
        ON_AUTO_FLASH_REDEYE = iM1091constructorimpl5;
        int iM1091constructorimpl6 = m1091constructorimpl(5);
        ON_EXTERNAL_FLASH = iM1091constructorimpl6;
        int iM1091constructorimpl7 = m1091constructorimpl(6);
        ON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITY = iM1091constructorimpl7;
        values = CollectionsKt.listOf((Object[]) new AeMode[]{m1090boximpl(iM1091constructorimpl), m1090boximpl(iM1091constructorimpl2), m1090boximpl(iM1091constructorimpl4), m1090boximpl(iM1091constructorimpl3), m1090boximpl(iM1091constructorimpl5), m1090boximpl(iM1091constructorimpl6), m1090boximpl(iM1091constructorimpl7)});
    }
}
