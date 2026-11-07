package androidx.camera.camera2.pipe;

import android.os.Build;
import android.util.Size;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.android.gms.cast.MediaStatus;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\bg\u0018\u00002\u00020\u0001:\u00070123456J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00058&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00118&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u000bR\u0014\u0010\u0017\u001a\u00020\u00148&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u00188&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u0004\u0018\u00010\u001c8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0016\u0010#\u001a\u0004\u0018\u00010 8&X¦\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0016\u0010'\u001a\u0004\u0018\u00010$8&X¦\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0016\u0010+\u001a\u0004\u0018\u00010(8&X¦\u0004¢\u0006\u0006\u001a\u0004\b)\u0010*R\u0016\u0010/\u001a\u0004\u0018\u00010,8&X¦\u0004¢\u0006\u0006\u001a\u0004\b-\u0010.ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u00067À\u0006\u0003"}, d2 = {"Landroidx/camera/camera2/pipe/OutputStream;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "isValidForHighSpeedOperatingMode", "()Z", "Landroidx/camera/camera2/pipe/CameraStream;", "getStream", "()Landroidx/camera/camera2/pipe/CameraStream;", "stream", "Landroidx/camera/camera2/pipe/OutputId;", "getId-4LaLFng", "()I", "id", "Landroid/util/Size;", "getSize", "()Landroid/util/Size;", "size", "Landroidx/camera/camera2/pipe/StreamFormat;", "getFormat-8FPWQzE", "format", "Landroidx/camera/camera2/pipe/CameraId;", "getCamera-Dz_R5H8", "()Ljava/lang/String;", "camera", "Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;", "getMirrorMode-dO1_9xk", "()Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;", "mirrorMode", "Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;", "getTimestampBase-pcPfPbY", "()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;", "timestampBase", "Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;", "getDynamicRangeProfile-OoVcG5w", "()Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;", "dynamicRangeProfile", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;", "getStreamUseCase-8x2ez34", "()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;", "streamUseCase", "Landroidx/camera/camera2/pipe/OutputStream$OutputType;", "getOutputType", "()Landroidx/camera/camera2/pipe/OutputStream$OutputType;", "outputType", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;", "getStreamUseHint-HIPxoCc", "()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;", "streamUseHint", "Config", "OutputType", "MirrorMode", "TimestampBase", "DynamicRangeProfile", "StreamUseHint", "StreamUseCase", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public interface OutputStream {
    /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: not valid java name */
    String getCamera();

    /* JADX INFO: renamed from: getDynamicRangeProfile-OoVcG5w, reason: not valid java name */
    DynamicRangeProfile getDynamicRangeProfile();

    /* JADX INFO: renamed from: getFormat-8FPWQzE, reason: not valid java name */
    int getFormat();

    /* JADX INFO: renamed from: getId-4LaLFng, reason: not valid java name */
    int getId();

    /* JADX INFO: renamed from: getMirrorMode-dO1_9xk, reason: not valid java name */
    MirrorMode getMirrorMode();

    OutputType getOutputType();

    Size getSize();

    CameraStream getStream();

    /* JADX INFO: renamed from: getStreamUseCase-8x2ez34, reason: not valid java name */
    StreamUseCase getStreamUseCase();

    /* JADX INFO: renamed from: getStreamUseHint-HIPxoCc, reason: not valid java name */
    StreamUseHint getStreamUseHint();

    /* JADX INFO: renamed from: getTimestampBase-pcPfPbY, reason: not valid java name */
    TimestampBase mo1386getTimestampBasepcPfPbY();

    @kotlin.Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 32\u00020\u0001:\u0003345Bc\b\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00010\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001f\u001a\u0004\b \u0010\u0018R\u0019\u0010\t\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\t\u0010!\u001a\u0004\b\"\u0010#R\u0019\u0010\r\u001a\u0004\u0018\u00010\f8\u0006¢\u0006\f\n\u0004\b\r\u0010$\u001a\u0004\b%\u0010&R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010'\u001a\u0004\b(\u0010)R\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010*\u001a\u0004\b+\u0010,R\u001d\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00010\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010-\u001a\u0004\b.\u0010/R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\u000b\u00100\u001a\u0004\b1\u00102\u0082\u0001\u000267¨\u00068"}, d2 = {"Landroidx/camera/camera2/pipe/OutputStream$Config;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/util/Size;", "size", "Landroidx/camera/camera2/pipe/StreamFormat;", "format", "Landroidx/camera/camera2/pipe/CameraId;", "camera", "Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;", "mirrorMode", "Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;", "timestampBase", "Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;", "dynamicRangeProfile", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;", "streamUseCase", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;", "streamUseHint", _UrlKt.FRAGMENT_ENCODE_SET, "sensorPixelModes", "<init>", "(Landroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Landroid/util/Size;", "getSize", "()Landroid/util/Size;", "I", "getFormat-8FPWQzE", "()I", "Ljava/lang/String;", "getCamera-1LO98Z0", "Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;", "getMirrorMode-dO1_9xk", "()Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;", "Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;", "getDynamicRangeProfile-OoVcG5w", "()Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;", "getStreamUseCase-8x2ez34", "()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;", "getStreamUseHint-HIPxoCc", "()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;", "Ljava/util/List;", "getSensorPixelModes", "()Ljava/util/List;", "Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;", "getTimestampBase-pcPfPbY", "()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;", "Companion", "SimpleOutputConfig", "LazyOutputConfig", "Landroidx/camera/camera2/pipe/OutputStream$Config$LazyOutputConfig;", "Landroidx/camera/camera2/pipe/OutputStream$Config$SimpleOutputConfig;", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static abstract class Config {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String camera;
        private final DynamicRangeProfile dynamicRangeProfile;
        private final int format;
        private final MirrorMode mirrorMode;
        private final List<Object> sensorPixelModes;
        private final Size size;
        private final StreamUseCase streamUseCase;
        private final StreamUseHint streamUseHint;

        public /* synthetic */ Config(Size size, int i, String str, MirrorMode mirrorMode, TimestampBase timestampBase, DynamicRangeProfile dynamicRangeProfile, StreamUseCase streamUseCase, StreamUseHint streamUseHint, List list, DefaultConstructorMarker defaultConstructorMarker) {
            this(size, i, str, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, streamUseHint, list);
        }

        /* JADX INFO: renamed from: getTimestampBase-pcPfPbY, reason: not valid java name */
        public final TimestampBase m1393getTimestampBasepcPfPbY() {
            return null;
        }

        private Config(Size size, int i, String str, MirrorMode mirrorMode, TimestampBase timestampBase, DynamicRangeProfile dynamicRangeProfile, StreamUseCase streamUseCase, StreamUseHint streamUseHint, List<Object> list) {
            this.size = size;
            this.format = i;
            this.camera = str;
            this.mirrorMode = mirrorMode;
            this.dynamicRangeProfile = dynamicRangeProfile;
            this.streamUseCase = streamUseCase;
            this.streamUseHint = streamUseHint;
            this.sensorPixelModes = list;
        }

        public final Size getSize() {
            return this.size;
        }

        /* JADX INFO: renamed from: getFormat-8FPWQzE, reason: not valid java name and from getter */
        public final int getFormat() {
            return this.format;
        }

        /* JADX INFO: renamed from: getCamera-1LO98Z0, reason: not valid java name and from getter */
        public final String getCamera() {
            return this.camera;
        }

        /* JADX INFO: renamed from: getMirrorMode-dO1_9xk, reason: not valid java name and from getter */
        public final MirrorMode getMirrorMode() {
            return this.mirrorMode;
        }

        /* JADX INFO: renamed from: getDynamicRangeProfile-OoVcG5w, reason: not valid java name and from getter */
        public final DynamicRangeProfile getDynamicRangeProfile() {
            return this.dynamicRangeProfile;
        }

        /* JADX INFO: renamed from: getStreamUseCase-8x2ez34, reason: not valid java name and from getter */
        public final StreamUseCase getStreamUseCase() {
            return this.streamUseCase;
        }

        /* JADX INFO: renamed from: getStreamUseHint-HIPxoCc, reason: not valid java name and from getter */
        public final StreamUseHint getStreamUseHint() {
            return this.streamUseHint;
        }

        public final List<Object> getSensorPixelModes() {
            return this.sensorPixelModes;
        }

        @kotlin.Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0006\u001a\u00020\u0005*\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u007f\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\u000e\u001a\u00020\u00042\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u000e\b\u0002\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00010\u0019¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Landroidx/camera/camera2/pipe/OutputStream$Config$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/camera/camera2/pipe/OutputStream$OutputType;", _UrlKt.FRAGMENT_ENCODE_SET, "isLazilyConfigurable", "(Landroidx/camera/camera2/pipe/OutputStream$OutputType;)Z", "Landroid/util/Size;", "size", "Landroidx/camera/camera2/pipe/StreamFormat;", "format", "Landroidx/camera/camera2/pipe/CameraId;", "camera", "outputType", "Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;", "mirrorMode", "Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;", "timestampBase", "Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;", "dynamicRangeProfile", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;", "streamUseCase", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;", "streamUseHint", _UrlKt.FRAGMENT_ENCODE_SET, "sensorPixelModes", "Landroidx/camera/camera2/pipe/OutputStream$Config;", "create-vBYXiEU", "(Landroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;)Landroidx/camera/camera2/pipe/OutputStream$Config;", "create", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX INFO: renamed from: create-vBYXiEU$default, reason: not valid java name */
            public static /* synthetic */ Config m1394createvBYXiEU$default(Companion companion, Size size, int i, String str, OutputType outputType, MirrorMode mirrorMode, TimestampBase timestampBase, DynamicRangeProfile dynamicRangeProfile, StreamUseCase streamUseCase, StreamUseHint streamUseHint, List list, int i2, Object obj) {
                if ((i2 & 4) != 0) {
                    str = null;
                }
                if ((i2 & 8) != 0) {
                    outputType = OutputType.INSTANCE.getSURFACE();
                }
                if ((i2 & 16) != 0) {
                    mirrorMode = null;
                }
                if ((i2 & 32) != 0) {
                    timestampBase = null;
                }
                if ((i2 & 64) != 0) {
                    dynamicRangeProfile = null;
                }
                if ((i2 & 128) != 0) {
                    streamUseCase = null;
                }
                if ((i2 & 256) != 0) {
                    streamUseHint = null;
                }
                if ((i2 & 512) != 0) {
                    list = CollectionsKt.emptyList();
                }
                return companion.m1395createvBYXiEU(size, i, str, outputType, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, streamUseHint, list);
            }

            /* JADX INFO: renamed from: create-vBYXiEU, reason: not valid java name */
            public final Config m1395createvBYXiEU(Size size, int format, String camera, OutputType outputType, MirrorMode mirrorMode, TimestampBase timestampBase, DynamicRangeProfile dynamicRangeProfile, StreamUseCase streamUseCase, StreamUseHint streamUseHint, List<Object> sensorPixelModes) {
                if (isLazilyConfigurable(outputType)) {
                    return new LazyOutputConfig(size, format, camera, outputType, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, streamUseHint, sensorPixelModes, null);
                }
                if (!Intrinsics.areEqual(outputType, OutputType.INSTANCE.getSURFACE())) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("Check failed.");
                    return null;
                }
                return new SimpleOutputConfig(size, format, camera, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, streamUseHint, sensorPixelModes, null);
            }

            private final boolean isLazilyConfigurable(OutputType outputType) {
                OutputType.Companion companion = OutputType.INSTANCE;
                if (Intrinsics.areEqual(outputType, companion.getSURFACE_TEXTURE()) || Intrinsics.areEqual(outputType, companion.getSURFACE_VIEW())) {
                    return true;
                }
                return (Intrinsics.areEqual(outputType, companion.getMEDIA_CODEC()) || Intrinsics.areEqual(outputType, companion.getMEDIA_RECORDER())) && Build.VERSION.SDK_INT >= 35;
            }
        }

        @kotlin.Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001Ba\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Landroidx/camera/camera2/pipe/OutputStream$Config$SimpleOutputConfig;", "Landroidx/camera/camera2/pipe/OutputStream$Config;", "Landroid/util/Size;", "size", "Landroidx/camera/camera2/pipe/StreamFormat;", "format", "Landroidx/camera/camera2/pipe/CameraId;", "camera", "Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;", "mirrorMode", "Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;", "timestampBase", "Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;", "dynamicRangeProfile", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;", "streamUseCase", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;", "streamUseHint", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "sensorPixelModes", "<init>", "(Landroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class SimpleOutputConfig extends Config {
            public /* synthetic */ SimpleOutputConfig(Size size, int i, String str, MirrorMode mirrorMode, TimestampBase timestampBase, DynamicRangeProfile dynamicRangeProfile, StreamUseCase streamUseCase, StreamUseHint streamUseHint, List list, DefaultConstructorMarker defaultConstructorMarker) {
                this(size, i, str, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, streamUseHint, list);
            }

            private SimpleOutputConfig(Size size, int i, String str, MirrorMode mirrorMode, TimestampBase timestampBase, DynamicRangeProfile dynamicRangeProfile, StreamUseCase streamUseCase, StreamUseHint streamUseHint, List<Object> list) {
                super(size, i, str, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, streamUseHint, list, null);
            }
        }

        @kotlin.Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001Bi\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014¢\u0006\u0004\b\u0017\u0010\u0018R\u001a\u0010\t\u001a\u00020\b8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\t\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Landroidx/camera/camera2/pipe/OutputStream$Config$LazyOutputConfig;", "Landroidx/camera/camera2/pipe/OutputStream$Config;", "Landroid/util/Size;", "size", "Landroidx/camera/camera2/pipe/StreamFormat;", "format", "Landroidx/camera/camera2/pipe/CameraId;", "camera", "Landroidx/camera/camera2/pipe/OutputStream$OutputType;", "outputType", "Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;", "mirrorMode", "Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;", "timestampBase", "Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;", "dynamicRangeProfile", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;", "streamUseCase", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;", "streamUseHint", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "sensorPixelModes", "<init>", "(Landroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Landroidx/camera/camera2/pipe/OutputStream$OutputType;", "getOutputType$camera_camera2_pipe", "()Landroidx/camera/camera2/pipe/OutputStream$OutputType;", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class LazyOutputConfig extends Config {
            private final OutputType outputType;

            public /* synthetic */ LazyOutputConfig(Size size, int i, String str, OutputType outputType, MirrorMode mirrorMode, TimestampBase timestampBase, DynamicRangeProfile dynamicRangeProfile, StreamUseCase streamUseCase, StreamUseHint streamUseHint, List list, DefaultConstructorMarker defaultConstructorMarker) {
                this(size, i, str, outputType, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, streamUseHint, list);
            }

            private LazyOutputConfig(Size size, int i, String str, OutputType outputType, MirrorMode mirrorMode, TimestampBase timestampBase, DynamicRangeProfile dynamicRangeProfile, StreamUseCase streamUseCase, StreamUseHint streamUseHint, List<Object> list) {
                super(size, i, str, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, streamUseHint, list, null);
                this.outputType = outputType;
            }

            /* JADX INFO: renamed from: getOutputType$camera_camera2_pipe, reason: from getter */
            public final OutputType getOutputType() {
                return this.outputType;
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Config(size=");
            sb.append(this.size);
            sb.append(", format=");
            sb.append((Object) StreamFormat.m1466toStringimpl(this.format));
            sb.append(", camera=");
            String str = this.camera;
            sb.append((Object) (str == null ? "null" : CameraId.m1303toStringimpl(str)));
            sb.append(", mirrorMode=");
            sb.append(this.mirrorMode);
            sb.append(", timestampBase=null, dynamicRangeProfile=");
            sb.append(this.dynamicRangeProfile);
            sb.append(", streamUseCase=");
            sb.append(this.streamUseCase);
            sb.append(", streamUseHint=");
            sb.append(this.streamUseHint);
            sb.append(", sensorPixelModes=");
            sb.append(this.sensorPixelModes);
            sb.append(')');
            return sb.toString();
        }
    }

    @kotlin.Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/camera/camera2/pipe/OutputStream$OutputType;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Companion", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class OutputType {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final OutputType SURFACE = new OutputType();
        private static final OutputType SURFACE_VIEW = new OutputType();
        private static final OutputType SURFACE_TEXTURE = new OutputType();
        private static final OutputType SURFACE_DEFERRED_FOR_QUERY_ONLY = new OutputType();
        private static final OutputType MEDIA_CODEC = new OutputType();
        private static final OutputType MEDIA_RECORDER = new OutputType();

        @kotlin.Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007R\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0007R\u0014\u0010\f\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0007R\u0011\u0010\u000e\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0007R\u0011\u0010\u0010\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0007¨\u0006\u0012"}, d2 = {"Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "SURFACE", "Landroidx/camera/camera2/pipe/OutputStream$OutputType;", "getSURFACE", "()Landroidx/camera/camera2/pipe/OutputStream$OutputType;", "SURFACE_VIEW", "getSURFACE_VIEW", "SURFACE_TEXTURE", "getSURFACE_TEXTURE", "SURFACE_DEFERRED_FOR_QUERY_ONLY", "getSURFACE_DEFERRED_FOR_QUERY_ONLY$camera_camera2_pipe", "MEDIA_CODEC", "getMEDIA_CODEC", "MEDIA_RECORDER", "getMEDIA_RECORDER", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final OutputType getSURFACE() {
                return OutputType.SURFACE;
            }

            public final OutputType getSURFACE_VIEW() {
                return OutputType.SURFACE_VIEW;
            }

            public final OutputType getSURFACE_TEXTURE() {
                return OutputType.SURFACE_TEXTURE;
            }

            public final OutputType getSURFACE_DEFERRED_FOR_QUERY_ONLY$camera_camera2_pipe() {
                return OutputType.SURFACE_DEFERRED_FOR_QUERY_ONLY;
            }

            public final OutputType getMEDIA_CODEC() {
                return OutputType.MEDIA_CODEC;
            }

            public final OutputType getMEDIA_RECORDER() {
                return OutputType.MEDIA_RECORDER;
            }
        }

        private OutputType() {
        }
    }

    @kotlin.Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087@\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u000b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u0005J\u001a\u0010\u0010\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\u0088\u0001\u0003\u0092\u0001\u00020\u0002¨\u0006\u0015"}, d2 = {"Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "value", "constructor-impl", "(I)I", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(I)Ljava/lang/String;", "toString", "hashCode-impl", "hashCode", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals-impl", "(ILjava/lang/Object;)Z", "equals", "I", "getValue", "()I", "Companion", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    @JvmInline
    public static final class MirrorMode {
        private final int value;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final int MIRROR_MODE_AUTO = m1405constructorimpl(0);
        private static final int MIRROR_MODE_NONE = m1405constructorimpl(1);
        private static final int MIRROR_MODE_H = m1405constructorimpl(2);
        private static final int MIRROR_MODE_V = m1405constructorimpl(3);

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ MirrorMode m1404boximpl(int i) {
            return new MirrorMode(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static int m1405constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m1406equalsimpl(int i, Object obj) {
            return (obj instanceof MirrorMode) && i == ((MirrorMode) obj).getValue();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m1407equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m1408hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m1409toStringimpl(int i) {
            return "MirrorMode(value=" + i + ')';
        }

        public boolean equals(Object obj) {
            return m1406equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m1408hashCodeimpl(this.value);
        }

        public String toString() {
            return m1409toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
        public final /* synthetic */ int getValue() {
            return this.value;
        }

        @kotlin.Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/camera/camera2/pipe/OutputStream$MirrorMode$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;", "MIRROR_MODE_AUTO", "I", "getMIRROR_MODE_AUTO-DrUKqn0", "()I", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* JADX INFO: renamed from: getMIRROR_MODE_AUTO-DrUKqn0, reason: not valid java name */
            public final int m1411getMIRROR_MODE_AUTODrUKqn0() {
                return MirrorMode.MIRROR_MODE_AUTO;
            }
        }

        private /* synthetic */ MirrorMode(int i) {
            this.value = i;
        }
    }

    @kotlin.Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0087@\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005\u0088\u0001\u0003\u0092\u0001\u00020\u0002¨\u0006\u0007"}, d2 = {"Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "value", "constructor-impl", "(I)I", "Companion", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    @JvmInline
    public static final class TimestampBase {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final int TIMESTAMP_BASE_DEFAULT = m1431constructorimpl(0);
        private static final int TIMESTAMP_BASE_SENSOR = m1431constructorimpl(1);
        private static final int TIMESTAMP_BASE_MONOTONIC = m1431constructorimpl(2);
        private static final int TIMESTAMP_BASE_REALTIME = m1431constructorimpl(3);
        private static final int TIMESTAMP_BASE_CHOREOGRAPHER_SYNCED = m1431constructorimpl(4);

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static int m1431constructorimpl(int i) {
            return i;
        }

        @kotlin.Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;", "TIMESTAMP_BASE_REALTIME", "I", "getTIMESTAMP_BASE_REALTIME-6HVI0MA", "()I", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* JADX INFO: renamed from: getTIMESTAMP_BASE_REALTIME-6HVI0MA, reason: not valid java name */
            public final int m1432getTIMESTAMP_BASE_REALTIME6HVI0MA() {
                return TimestampBase.TIMESTAMP_BASE_REALTIME;
            }
        }
    }

    @kotlin.Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087@\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\r\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0012\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\u0088\u0001\u0003\u0092\u0001\u00020\u0002¨\u0006\u0017"}, d2 = {"Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "value", "constructor-impl", "(J)J", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(J)Ljava/lang/String;", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode-impl", "(J)I", "hashCode", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals-impl", "(JLjava/lang/Object;)Z", "equals", "J", "getValue", "()J", "Companion", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    @JvmInline
    public static final class DynamicRangeProfile {
        private final long value;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long STANDARD = m1397constructorimpl(1);
        private static final long HLG10 = m1397constructorimpl(2);
        private static final long HDR10 = m1397constructorimpl(4);
        private static final long HDR10_PLUS = m1397constructorimpl(8);
        private static final long DOLBY_VISION_10B_HDR_REF = m1397constructorimpl(16);
        private static final long DOLBY_VISION_10B_HDR_REF_PO = m1397constructorimpl(32);
        private static final long DOLBY_VISION_10B_HDR_OEM = m1397constructorimpl(64);
        private static final long DOLBY_VISION_10B_HDR_OEM_PO = m1397constructorimpl(128);
        private static final long DOLBY_VISION_8B_HDR_REF = m1397constructorimpl(256);
        private static final long DOLBY_VISION_8B_HDR_REF_PO = m1397constructorimpl(512);
        private static final long DOLBY_VISION_8B_HDR_OEM = m1397constructorimpl(1024);
        private static final long DOLBY_VISION_8B_HDR_OEM_PO = m1397constructorimpl(MediaStatus.COMMAND_QUEUE_REPEAT_ONE);
        private static final long PUBLIC_MAX = m1397constructorimpl(MediaStatus.COMMAND_EDIT_TRACKS);

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ DynamicRangeProfile m1396boximpl(long j) {
            return new DynamicRangeProfile(j);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static long m1397constructorimpl(long j) {
            return j;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m1398equalsimpl(long j, Object obj) {
            return (obj instanceof DynamicRangeProfile) && j == ((DynamicRangeProfile) obj).getValue();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m1399equalsimpl0(long j, long j2) {
            return j == j2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m1400hashCodeimpl(long j) {
            return Long.hashCode(j);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m1401toStringimpl(long j) {
            return "DynamicRangeProfile(value=" + j + ')';
        }

        public boolean equals(Object obj) {
            return m1398equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m1400hashCodeimpl(this.value);
        }

        public String toString() {
            return m1401toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
        public final /* synthetic */ long getValue() {
            return this.value;
        }

        @kotlin.Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;", "STANDARD", "J", "getSTANDARD-fFAQAUE", "()J", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* JADX INFO: renamed from: getSTANDARD-fFAQAUE, reason: not valid java name */
            public final long m1403getSTANDARDfFAQAUE() {
                return DynamicRangeProfile.STANDARD;
            }
        }

        private /* synthetic */ DynamicRangeProfile(long j) {
            this.value = j;
        }
    }

    @kotlin.Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087@\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\r\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0012\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\u0088\u0001\u0003\u0092\u0001\u00020\u0002¨\u0006\u0017"}, d2 = {"Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "value", "constructor-impl", "(J)J", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(J)Ljava/lang/String;", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode-impl", "(J)I", "hashCode", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals-impl", "(JLjava/lang/Object;)Z", "equals", "J", "getValue", "()J", "Companion", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    @JvmInline
    public static final class StreamUseHint {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long DEFAULT = m1423constructorimpl(0);
        private static final long VIDEO_RECORD = m1423constructorimpl(1);
        private final long value;

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ StreamUseHint m1422boximpl(long j) {
            return new StreamUseHint(j);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static long m1423constructorimpl(long j) {
            return j;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m1424equalsimpl(long j, Object obj) {
            return (obj instanceof StreamUseHint) && j == ((StreamUseHint) obj).getValue();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m1425equalsimpl0(long j, long j2) {
            return j == j2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m1426hashCodeimpl(long j) {
            return Long.hashCode(j);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m1427toStringimpl(long j) {
            return "StreamUseHint(value=" + j + ')';
        }

        public boolean equals(Object obj) {
            return m1424equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m1426hashCodeimpl(this.value);
        }

        public String toString() {
            return m1427toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
        public final /* synthetic */ long getValue() {
            return this.value;
        }

        private /* synthetic */ StreamUseHint(long j) {
            this.value = j;
        }

        @kotlin.Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0013\u0010\u0004\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\t\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\n\u0010\u0007¨\u0006\u000b"}, d2 = {"Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", PluginsConstants.Strategy.DEFAULT, "Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;", "getDEFAULT-4VYZOf8", "()J", "J", "VIDEO_RECORD", "getVIDEO_RECORD-4VYZOf8", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* JADX INFO: renamed from: getDEFAULT-4VYZOf8, reason: not valid java name */
            public final long m1429getDEFAULT4VYZOf8() {
                return StreamUseHint.DEFAULT;
            }

            /* JADX INFO: renamed from: getVIDEO_RECORD-4VYZOf8, reason: not valid java name */
            public final long m1430getVIDEO_RECORD4VYZOf8() {
                return StreamUseHint.VIDEO_RECORD;
            }
        }
    }

    @kotlin.Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087@\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\r\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0012\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\u0088\u0001\u0003\u0092\u0001\u00020\u0002¨\u0006\u0017"}, d2 = {"Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "value", "constructor-impl", "(J)J", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(J)Ljava/lang/String;", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode-impl", "(J)I", "hashCode", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals-impl", "(JLjava/lang/Object;)Z", "equals", "J", "getValue", "()J", "Companion", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    @JvmInline
    public static final class StreamUseCase {
        private final long value;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long DEFAULT = m1413constructorimpl(0);
        private static final long PREVIEW = m1413constructorimpl(1);
        private static final long STILL_CAPTURE = m1413constructorimpl(2);
        private static final long VIDEO_RECORD = m1413constructorimpl(3);
        private static final long PREVIEW_VIDEO_STILL = m1413constructorimpl(4);
        private static final long VIDEO_CALL = m1413constructorimpl(5);
        private static final long CROPPED_RAW = m1413constructorimpl(6);

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ StreamUseCase m1412boximpl(long j) {
            return new StreamUseCase(j);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static long m1413constructorimpl(long j) {
            return j;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m1414equalsimpl(long j, Object obj) {
            return (obj instanceof StreamUseCase) && j == ((StreamUseCase) obj).getValue();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m1415equalsimpl0(long j, long j2) {
            return j == j2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m1416hashCodeimpl(long j) {
            return Long.hashCode(j);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m1417toStringimpl(long j) {
            return "StreamUseCase(value=" + j + ')';
        }

        public boolean equals(Object obj) {
            return m1414equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m1416hashCodeimpl(this.value);
        }

        public String toString() {
            return m1417toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
        public final /* synthetic */ long getValue() {
            return this.value;
        }

        @kotlin.Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\t\u0010\u0006\u001a\u0004\b\n\u0010\bR\u0017\u0010\u000b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0006\u001a\u0004\b\f\u0010\b¨\u0006\r"}, d2 = {"Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;", PluginsConstants.Strategy.DEFAULT, "J", "getDEFAULT-vrKr8v8", "()J", "PREVIEW", "getPREVIEW-vrKr8v8", "VIDEO_RECORD", "getVIDEO_RECORD-vrKr8v8", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* JADX INFO: renamed from: getDEFAULT-vrKr8v8, reason: not valid java name */
            public final long m1419getDEFAULTvrKr8v8() {
                return StreamUseCase.DEFAULT;
            }

            /* JADX INFO: renamed from: getPREVIEW-vrKr8v8, reason: not valid java name */
            public final long m1420getPREVIEWvrKr8v8() {
                return StreamUseCase.PREVIEW;
            }

            /* JADX INFO: renamed from: getVIDEO_RECORD-vrKr8v8, reason: not valid java name */
            public final long m1421getVIDEO_RECORDvrKr8v8() {
                return StreamUseCase.VIDEO_RECORD;
            }
        }

        private /* synthetic */ StreamUseCase(long j) {
            this.value = j;
        }
    }

    default boolean isValidForHighSpeedOperatingMode() {
        if (getStreamUseCase() == null) {
            return true;
        }
        StreamUseCase streamUseCase = getStreamUseCase();
        StreamUseCase.Companion companion = StreamUseCase.INSTANCE;
        if (streamUseCase == null ? false : StreamUseCase.m1415equalsimpl0(streamUseCase.getValue(), companion.m1419getDEFAULTvrKr8v8())) {
            return true;
        }
        StreamUseCase streamUseCase2 = getStreamUseCase();
        if (streamUseCase2 == null ? false : StreamUseCase.m1415equalsimpl0(streamUseCase2.getValue(), companion.m1420getPREVIEWvrKr8v8())) {
            return true;
        }
        StreamUseCase streamUseCase3 = getStreamUseCase();
        if ((streamUseCase3 == null ? false : StreamUseCase.m1415equalsimpl0(streamUseCase3.getValue(), companion.m1421getVIDEO_RECORDvrKr8v8())) || getStreamUseHint() == null) {
            return true;
        }
        StreamUseHint streamUseHint = getStreamUseHint();
        StreamUseHint.Companion companion2 = StreamUseHint.INSTANCE;
        if (streamUseHint == null ? false : StreamUseHint.m1425equalsimpl0(streamUseHint.getValue(), companion2.m1429getDEFAULT4VYZOf8())) {
            return true;
        }
        StreamUseHint streamUseHint2 = getStreamUseHint();
        return streamUseHint2 == null ? false : StreamUseHint.m1425equalsimpl0(streamUseHint2.getValue(), companion2.m1430getVIDEO_RECORD4VYZOf8());
    }
}
