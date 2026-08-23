package androidx.camera.camera2.pipe;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class StreamFormat {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int UNKNOWN = m1773constructorimpl(0);
    private static final int PRIVATE = m1773constructorimpl(34);
    private static final int DEPTH16 = m1773constructorimpl(1144402265);
    private static final int DEPTH_JPEG = m1773constructorimpl(1768253795);
    private static final int DEPTH_POINT_CLOUD = m1773constructorimpl(257);
    private static final int FLEX_RGB_888 = m1773constructorimpl(41);
    private static final int FLEX_RGBA_8888 = m1773constructorimpl(42);
    private static final int HEIC = m1773constructorimpl(1212500294);
    private static final int JPEG = m1773constructorimpl(256);
    private static final int JPEG_R = m1773constructorimpl(4101);
    private static final int NV16 = m1773constructorimpl(16);
    private static final int NV21 = m1773constructorimpl(17);
    private static final int RAW10 = m1773constructorimpl(37);
    private static final int RAW12 = m1773constructorimpl(38);
    private static final int RAW_DEPTH = m1773constructorimpl(4098);
    private static final int RAW_PRIVATE = m1773constructorimpl(36);
    private static final int RAW_SENSOR = m1773constructorimpl(32);
    private static final int RGB_565 = m1773constructorimpl(4);
    private static final int Y12 = m1773constructorimpl(842094169);
    private static final int Y16 = m1773constructorimpl(540422489);

    /* JADX INFO: renamed from: Y8 */
    private static final int f11Y8 = m1773constructorimpl(538982489);
    private static final int YCBCR_P010 = m1773constructorimpl(54);
    private static final int YUV_420_888 = m1773constructorimpl(35);
    private static final int YUV_422_888 = m1773constructorimpl(39);
    private static final int YUV_444_888 = m1773constructorimpl(40);
    private static final int YUY2 = m1773constructorimpl(20);
    private static final int YV12 = m1773constructorimpl(842094169);

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ StreamFormat m1772boximpl(int i) {
        return new StreamFormat(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1773constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1774equalsimpl(int i, Object obj) {
        return (obj instanceof StreamFormat) && i == ((StreamFormat) obj).m1779unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1775equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1777hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m1774equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1777hashCodeimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1779unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getUNKNOWN-8FPWQzE, reason: not valid java name */
        public final int m1781getUNKNOWN8FPWQzE() {
            return StreamFormat.UNKNOWN;
        }

        /* JADX INFO: renamed from: getPRIVATE-8FPWQzE, reason: not valid java name */
        public final int m1780getPRIVATE8FPWQzE() {
            return StreamFormat.PRIVATE;
        }
    }

    private /* synthetic */ StreamFormat(int i) {
        this.value = i;
    }

    public String toString() {
        return m1778toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1778toStringimpl(int i) {
        return "StreamFormat(" + m1776getNameimpl(i) + ')';
    }

    /* JADX INFO: renamed from: getName-impl, reason: not valid java name */
    public static final String m1776getNameimpl(int i) {
        if (m1775equalsimpl0(i, UNKNOWN)) {
            return "UNKNOWN";
        }
        if (m1775equalsimpl0(i, PRIVATE)) {
            return "PRIVATE";
        }
        if (m1775equalsimpl0(i, DEPTH16)) {
            return "DEPTH16";
        }
        if (m1775equalsimpl0(i, DEPTH_JPEG)) {
            return "DEPTH_JPEG";
        }
        if (m1775equalsimpl0(i, DEPTH_POINT_CLOUD)) {
            return "DEPTH_POINT_CLOUD";
        }
        if (m1775equalsimpl0(i, FLEX_RGB_888)) {
            return "FLEX_RGB_888";
        }
        if (m1775equalsimpl0(i, FLEX_RGBA_8888)) {
            return "FLEX_RGBA_8888";
        }
        if (m1775equalsimpl0(i, HEIC)) {
            return "HEIC";
        }
        if (m1775equalsimpl0(i, JPEG)) {
            return "JPEG";
        }
        if (m1775equalsimpl0(i, JPEG_R)) {
            return "JPEG_R";
        }
        if (m1775equalsimpl0(i, NV16)) {
            return "NV16";
        }
        if (m1775equalsimpl0(i, NV21)) {
            return "NV21";
        }
        if (m1775equalsimpl0(i, RAW10)) {
            return "RAW10";
        }
        if (m1775equalsimpl0(i, RAW12)) {
            return "RAW12";
        }
        if (m1775equalsimpl0(i, RAW_DEPTH)) {
            return "RAW_DEPTH";
        }
        if (m1775equalsimpl0(i, RAW_PRIVATE)) {
            return "RAW_PRIVATE";
        }
        if (m1775equalsimpl0(i, RAW_SENSOR)) {
            return "RAW_SENSOR";
        }
        if (m1775equalsimpl0(i, RGB_565)) {
            return "RGB_565";
        }
        if (m1775equalsimpl0(i, Y12)) {
            return "Y12";
        }
        if (m1775equalsimpl0(i, Y16)) {
            return "Y16";
        }
        if (m1775equalsimpl0(i, f11Y8)) {
            return "Y8";
        }
        if (m1775equalsimpl0(i, YCBCR_P010)) {
            return "YCBCR_P010";
        }
        if (m1775equalsimpl0(i, YUV_420_888)) {
            return "YUV_420_888";
        }
        if (m1775equalsimpl0(i, YUV_422_888)) {
            return "YUV_422_888";
        }
        if (m1775equalsimpl0(i, YUV_444_888)) {
            return "YUV_444_888";
        }
        if (m1775equalsimpl0(i, YUY2)) {
            return "YUY2";
        }
        if (m1775equalsimpl0(i, YV12)) {
            return "YV12";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("UNKNOWN(");
        String string = Integer.toString(i, CharsKt.checkRadix(16));
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        sb.append(string);
        sb.append(')');
        return sb.toString();
    }
}
