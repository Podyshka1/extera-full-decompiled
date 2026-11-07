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
@kotlin.Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0087@\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\bJ\u0010\u0010\u000f\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0011\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0005J\u001a\u0010\u0015\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\u0088\u0001\u0003\u0092\u0001\u00020\u0002¨\u0006\u001a"}, d2 = {"Landroidx/camera/camera2/pipe/AfMode;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "value", "constructor-impl", "(I)I", _UrlKt.FRAGMENT_ENCODE_SET, "isOn-impl", "(I)Z", "isOn", "isContinuous-impl", "isContinuous", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(I)Ljava/lang/String;", "toString", "hashCode-impl", "hashCode", "other", "equals-impl", "(ILjava/lang/Object;)Z", "equals", "I", "getValue", "()I", "Companion", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class AfMode {
    private static final int AUTO;
    private static final int CONTINUOUS_PICTURE;
    private static final int CONTINUOUS_VIDEO;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int EDOF;
    private static final int MACRO;
    private static final int OFF;
    private static final List<AfMode> values;
    private final int value;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ AfMode m1191boximpl(int i) {
        return new AfMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1192constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1193equalsimpl(int i, Object obj) {
        return (obj instanceof AfMode) && i == ((AfMode) obj).getValue();
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1194hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: isContinuous-impl, reason: not valid java name */
    public static final boolean m1195isContinuousimpl(int i) {
        return i == 3 || i == 4;
    }

    /* JADX INFO: renamed from: isOn-impl, reason: not valid java name */
    public static final boolean m1196isOnimpl(int i) {
        return i != 0;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1197toStringimpl(int i) {
        return "AfMode(value=" + i + ')';
    }

    public boolean equals(Object obj) {
        return m1193equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1194hashCodeimpl(this.value);
    }

    public String toString() {
        return m1197toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ int getValue() {
        return this.value;
    }

    private /* synthetic */ AfMode(int i) {
        this.value = i;
    }

    @kotlin.Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\t\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\n\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroidx/camera/camera2/pipe/AfMode$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "value", "Landroidx/camera/camera2/pipe/AfMode;", "fromIntOrNull-MKXwA8g", "(I)Landroidx/camera/camera2/pipe/AfMode;", "fromIntOrNull", "AUTO", "I", "getAUTO-vHZNRtE", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "values", "Ljava/util/List;", "getValues", "()Ljava/util/List;", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCameraControls.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraControls.kt\nandroidx/camera/camera2/pipe/AfMode$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,225:1\n295#2,2:226\n*S KotlinDebug\n*F\n+ 1 CameraControls.kt\nandroidx/camera/camera2/pipe/AfMode$Companion\n*L\n52#1:226,2\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getAUTO-vHZNRtE, reason: not valid java name */
        public final int m1200getAUTOvHZNRtE() {
            return AfMode.AUTO;
        }

        public final List<AfMode> getValues() {
            return AfMode.values;
        }

        @JvmStatic
        /* JADX INFO: renamed from: fromIntOrNull-MKXwA8g, reason: not valid java name */
        public final AfMode m1199fromIntOrNullMKXwA8g(int value) {
            Object next;
            Iterator<T> it = getValues().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (((AfMode) next).getValue() == value) {
                    break;
                }
            }
            return (AfMode) next;
        }
    }

    static {
        int iM1192constructorimpl = m1192constructorimpl(0);
        OFF = iM1192constructorimpl;
        int iM1192constructorimpl2 = m1192constructorimpl(1);
        AUTO = iM1192constructorimpl2;
        int iM1192constructorimpl3 = m1192constructorimpl(2);
        MACRO = iM1192constructorimpl3;
        int iM1192constructorimpl4 = m1192constructorimpl(3);
        CONTINUOUS_VIDEO = iM1192constructorimpl4;
        int iM1192constructorimpl5 = m1192constructorimpl(4);
        CONTINUOUS_PICTURE = iM1192constructorimpl5;
        int iM1192constructorimpl6 = m1192constructorimpl(5);
        EDOF = iM1192constructorimpl6;
        values = CollectionsKt.listOf((Object[]) new AfMode[]{m1191boximpl(iM1192constructorimpl), m1191boximpl(iM1192constructorimpl2), m1191boximpl(iM1192constructorimpl3), m1191boximpl(iM1192constructorimpl4), m1191boximpl(iM1192constructorimpl5), m1191boximpl(iM1192constructorimpl6)});
    }
}
