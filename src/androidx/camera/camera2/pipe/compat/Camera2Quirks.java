package androidx.camera.camera2.pipe.compat;

import android.os.Build;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.StrictMode;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0019\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0000¢\u0006\u0002\b\fJ\u0017\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0000¢\u0006\u0004\b\u0013\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0000¢\u0006\u0004\b\u0015\u0010\u0011J\u0015\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0000¢\u0006\u0002\b\u001aR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Landroidx/camera/camera2/pipe/compat/Camera2Quirks;", _UrlKt.FRAGMENT_ENCODE_SET, "metadataProvider", "Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;", "strictMode", "Landroidx/camera/camera2/pipe/StrictMode;", "<init>", "(Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Landroidx/camera/camera2/pipe/StrictMode;)V", "shouldWaitForRepeatingRequestStartOnDisconnect", _UrlKt.FRAGMENT_ENCODE_SET, "graphConfig", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "shouldWaitForRepeatingRequestStartOnDisconnect$camera_camera2_pipe", "shouldCreateEmptyCaptureSessionBeforeClosing", "cameraId", "Landroidx/camera/camera2/pipe/CameraId;", "shouldCreateEmptyCaptureSessionBeforeClosing-EfqyGwQ$camera_camera2_pipe", "(Ljava/lang/String;)Z", "shouldWaitForCameraDeviceOnClosed", "shouldWaitForCameraDeviceOnClosed-EfqyGwQ$camera_camera2_pipe", "shouldCloseCameraBeforeCreatingCaptureSession", "shouldCloseCameraBeforeCreatingCaptureSession-EfqyGwQ$camera_camera2_pipe", "getRepeatingRequestFrameCountForCapture", _UrlKt.FRAGMENT_ENCODE_SET, "graphConfigFlags", "Landroidx/camera/camera2/pipe/CameraGraph$Flags;", "getRepeatingRequestFrameCountForCapture$camera_camera2_pipe", "Companion", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class Camera2Quirks {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Map<String, Set<String>> SHOULD_WAIT_FOR_REPEATING_DEVICE_MAP = MapsKt.mapOf(TuplesKt.to("Google", SetsKt.setOf((Object[]) new String[]{"oriole", "raven", "bluejay", "panther", "cheetah", "lynx"})));
    private static final Map<String, Set<String>> SM8150_DEVICES = MapsKt.mapOf(TuplesKt.to("google", SetsKt.setOf((Object[]) new String[]{"pixel 4", "pixel 4 xl"})), TuplesKt.to("samsung", SetsKt.setOf("sm-g770f")));
    private final Camera2MetadataProvider metadataProvider;
    private final StrictMode strictMode;

    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CameraGraph.RepeatingRequestRequirementsBeforeCapture.CompletionBehavior.values().length];
            try {
                iArr[CameraGraph.RepeatingRequestRequirementsBeforeCapture.CompletionBehavior.AT_LEAST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CameraGraph.RepeatingRequestRequirementsBeforeCapture.CompletionBehavior.EXACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public Camera2Quirks(Camera2MetadataProvider camera2MetadataProvider, StrictMode strictMode) {
        this.metadataProvider = camera2MetadataProvider;
        this.strictMode = strictMode;
    }

    /* JADX INFO: renamed from: shouldWaitForRepeatingRequestStartOnDisconnect$camera_camera2_pipe */
    public final boolean m70x94af7f6a(CameraGraph.Config graphConfig) {
        if (this.strictMode.getEnabled()) {
            return false;
        }
        Boolean awaitRepeatingRequestOnDisconnect = graphConfig.getFlags().getAwaitRepeatingRequestOnDisconnect();
        return awaitRepeatingRequestOnDisconnect != null ? awaitRepeatingRequestOnDisconnect.booleanValue() : CameraMetadata.INSTANCE.isHardwareLevelLegacy(this.metadataProvider.mo1437awaitCameraMetadataEfqyGwQ(graphConfig.getCamera()));
    }

    /* JADX INFO: renamed from: shouldCreateEmptyCaptureSessionBeforeClosing-EfqyGwQ$camera_camera2_pipe */
    public final boolean m69xfcf3eba9(String cameraId) {
        return !this.strictMode.getEnabled() && Build.VERSION.SDK_INT < 29 && CameraMetadata.INSTANCE.isHardwareLevelLegacy(this.metadataProvider.mo1437awaitCameraMetadataEfqyGwQ(cameraId));
    }

    /* JADX INFO: renamed from: shouldWaitForCameraDeviceOnClosed-EfqyGwQ$camera_camera2_pipe, reason: not valid java name */
    public final boolean m1440shouldWaitForCameraDeviceOnClosedEfqyGwQ$camera_camera2_pipe(String cameraId) {
        if (this.strictMode.getEnabled()) {
            return false;
        }
        return CameraMetadata.INSTANCE.isHardwareLevelLegacy(this.metadataProvider.mo1437awaitCameraMetadataEfqyGwQ(cameraId));
    }

    /* JADX INFO: renamed from: shouldCloseCameraBeforeCreatingCaptureSession-EfqyGwQ$camera_camera2_pipe */
    public final boolean m68x552c1673(String cameraId) {
        if (this.strictMode.getEnabled()) {
            return false;
        }
        return (Build.VERSION.SDK_INT <= 32 && CameraMetadata.INSTANCE.isHardwareLevelLegacy(this.metadataProvider.mo1437awaitCameraMetadataEfqyGwQ(cameraId))) || (StringsKt.equals("motorola", Build.BRAND, true) && StringsKt.equals("moto e20", Build.MODEL, true) && Intrinsics.areEqual(cameraId, "1"));
    }

    public final int getRepeatingRequestFrameCountForCapture$camera_camera2_pipe(CameraGraph.Flags graphConfigFlags) {
        if (this.strictMode.getEnabled()) {
            return 0;
        }
        CameraGraph.RepeatingRequestRequirementsBeforeCapture awaitRepeatingRequestBeforeCapture = graphConfigFlags.getAwaitRepeatingRequestBeforeCapture();
        Set<String> set = SHOULD_WAIT_FOR_REPEATING_DEVICE_MAP.get(Build.MANUFACTURER);
        int iMax = (set == null || !set.contains(Build.DEVICE) || Build.VERSION.SDK_INT >= 34) ? 0 : Math.max(0, 10);
        int i = WhenMappings.$EnumSwitchMapping$0[awaitRepeatingRequestBeforeCapture.getCompletionBehavior().ordinal()];
        if (i == 1) {
            return Math.max(iMax, awaitRepeatingRequestBeforeCapture.getRepeatingFramesToComplete());
        }
        if (i != 2) {
            LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m753m();
            return 0;
        }
        return awaitRepeatingRequestBeforeCapture.getRepeatingFramesToComplete();
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\t\u001a\u00020\nH\u0000¢\u0006\u0002\b\u000bR \u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Landroidx/camera/camera2/pipe/compat/Camera2Quirks$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "SHOULD_WAIT_FOR_REPEATING_DEVICE_MAP", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "SM8150_DEVICES", "shouldCloseCaptureSessionOnDisconnect", _UrlKt.FRAGMENT_ENCODE_SET, "shouldCloseCaptureSessionOnDisconnect$camera_camera2_pipe", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean shouldCloseCaptureSessionOnDisconnect$camera_camera2_pipe() {
            int i = Build.VERSION.SDK_INT;
            if (i <= 27) {
                return true;
            }
            String str = Build.HARDWARE;
            if (Intrinsics.areEqual(str, "samsungexynos7870")) {
                return true;
            }
            if (!StringsKt.equals(str, "qcom", true) || i > 31) {
                Map map = Camera2Quirks.SM8150_DEVICES;
                String str2 = Build.BRAND;
                Locale locale = Locale.ROOT;
                Set set = (Set) map.get(str2.toLowerCase(locale));
                if (set == null || !set.contains(Build.MODEL.toLowerCase(locale))) {
                    return false;
                }
            }
            return true;
        }
    }
}
