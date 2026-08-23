package androidx.camera.camera2.pipe;

import androidx.mediarouter.media.GlobalMediaRouter;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.CharsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087@\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u000b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u0005J\u001a\u0010\u0010\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0015\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\b\u0088\u0001\u0003\u0092\u0001\u00020\u0002¨\u0006\u0017"}, d2 = {"Landroidx/camera/camera2/pipe/StreamFormat;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "value", "constructor-impl", "(I)I", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(I)Ljava/lang/String;", "toString", "hashCode-impl", "hashCode", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals-impl", "(ILjava/lang/Object;)Z", "equals", "I", "getValue", "()I", "getName-impl", "name", "Companion", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class StreamFormat {
    private final int value;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int UNKNOWN = m1371constructorimpl(0);
    private static final int PRIVATE = m1371constructorimpl(34);
    private static final int DEPTH16 = m1371constructorimpl(1144402265);
    private static final int DEPTH_JPEG = m1371constructorimpl(1768253795);
    private static final int DEPTH_POINT_CLOUD = m1371constructorimpl(GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ADDED);
    private static final int FLEX_RGB_888 = m1371constructorimpl(41);
    private static final int FLEX_RGBA_8888 = m1371constructorimpl(42);
    private static final int HEIC = m1371constructorimpl(1212500294);
    private static final int JPEG = m1371constructorimpl(256);
    private static final int JPEG_R = m1371constructorimpl(4101);
    private static final int NV16 = m1371constructorimpl(16);
    private static final int NV21 = m1371constructorimpl(17);
    private static final int RAW10 = m1371constructorimpl(37);
    private static final int RAW12 = m1371constructorimpl(38);
    private static final int RAW_DEPTH = m1371constructorimpl(4098);
    private static final int RAW_PRIVATE = m1371constructorimpl(36);
    private static final int RAW_SENSOR = m1371constructorimpl(32);
    private static final int RGB_565 = m1371constructorimpl(4);
    private static final int Y12 = m1371constructorimpl(842094169);
    private static final int Y16 = m1371constructorimpl(540422489);
    private static final int Y8 = m1371constructorimpl(538982489);
    private static final int YCBCR_P010 = m1371constructorimpl(54);
    private static final int YUV_420_888 = m1371constructorimpl(35);
    private static final int YUV_422_888 = m1371constructorimpl(39);
    private static final int YUV_444_888 = m1371constructorimpl(40);
    private static final int YUY2 = m1371constructorimpl(20);
    private static final int YV12 = m1371constructorimpl(842094169);

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ StreamFormat m1370boximpl(int i) {
        return new StreamFormat(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1371constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1372equalsimpl(int i, Object obj) {
        return (obj instanceof StreamFormat) && i == ((StreamFormat) obj).getValue();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1373equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1375hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    public boolean equals(Object obj) {
        return m1372equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1375hashCodeimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ int getValue() {
        return this.value;
    }

    @kotlin.Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\t\u0010\u0006\u001a\u0004\b\n\u0010\b¨\u0006\u000b"}, d2 = {"Landroidx/camera/camera2/pipe/StreamFormat$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/camera/camera2/pipe/StreamFormat;", "UNKNOWN", "I", "getUNKNOWN-8FPWQzE", "()I", "PRIVATE", "getPRIVATE-8FPWQzE", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getUNKNOWN-8FPWQzE, reason: not valid java name */
        public final int m1379getUNKNOWN8FPWQzE() {
            return StreamFormat.UNKNOWN;
        }

        /* JADX INFO: renamed from: getPRIVATE-8FPWQzE, reason: not valid java name */
        public final int m1378getPRIVATE8FPWQzE() {
            return StreamFormat.PRIVATE;
        }
    }

    private /* synthetic */ StreamFormat(int i) {
        this.value = i;
    }

    public String toString() {
        return m1376toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1376toStringimpl(int i) {
        return "StreamFormat(" + m1374getNameimpl(i) + ')';
    }

    /* JADX INFO: renamed from: getName-impl, reason: not valid java name */
    public static final String m1374getNameimpl(int i) {
        if (m1373equalsimpl0(i, UNKNOWN)) {
            return "UNKNOWN";
        }
        if (m1373equalsimpl0(i, PRIVATE)) {
            return "PRIVATE";
        }
        if (m1373equalsimpl0(i, DEPTH16)) {
            return "DEPTH16";
        }
        if (m1373equalsimpl0(i, DEPTH_JPEG)) {
            return "DEPTH_JPEG";
        }
        if (m1373equalsimpl0(i, DEPTH_POINT_CLOUD)) {
            return "DEPTH_POINT_CLOUD";
        }
        if (m1373equalsimpl0(i, FLEX_RGB_888)) {
            return "FLEX_RGB_888";
        }
        if (m1373equalsimpl0(i, FLEX_RGBA_8888)) {
            return "FLEX_RGBA_8888";
        }
        if (m1373equalsimpl0(i, HEIC)) {
            return "HEIC";
        }
        if (m1373equalsimpl0(i, JPEG)) {
            return "JPEG";
        }
        if (m1373equalsimpl0(i, JPEG_R)) {
            return "JPEG_R";
        }
        if (m1373equalsimpl0(i, NV16)) {
            return "NV16";
        }
        if (m1373equalsimpl0(i, NV21)) {
            return "NV21";
        }
        if (m1373equalsimpl0(i, RAW10)) {
            return "RAW10";
        }
        if (m1373equalsimpl0(i, RAW12)) {
            return "RAW12";
        }
        if (m1373equalsimpl0(i, RAW_DEPTH)) {
            return "RAW_DEPTH";
        }
        if (m1373equalsimpl0(i, RAW_PRIVATE)) {
            return "RAW_PRIVATE";
        }
        if (m1373equalsimpl0(i, RAW_SENSOR)) {
            return "RAW_SENSOR";
        }
        if (m1373equalsimpl0(i, RGB_565)) {
            return "RGB_565";
        }
        if (m1373equalsimpl0(i, Y12)) {
            return "Y12";
        }
        if (m1373equalsimpl0(i, Y16)) {
            return "Y16";
        }
        if (m1373equalsimpl0(i, Y8)) {
            return "Y8";
        }
        if (m1373equalsimpl0(i, YCBCR_P010)) {
            return "YCBCR_P010";
        }
        if (m1373equalsimpl0(i, YUV_420_888)) {
            return "YUV_420_888";
        }
        if (m1373equalsimpl0(i, YUV_422_888)) {
            return "YUV_422_888";
        }
        if (m1373equalsimpl0(i, YUV_444_888)) {
            return "YUV_444_888";
        }
        if (m1373equalsimpl0(i, YUY2)) {
            return "YUY2";
        }
        if (m1373equalsimpl0(i, YV12)) {
            return "YV12";
        }
        return "UNKNOWN(" + Integer.toString(i, CharsKt.checkRadix(16)) + ')';
    }
}
