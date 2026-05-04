package androidx.camera.camera2.pipe.compat;

import android.os.Build;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.StrictMode;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2Quirks {
    public static final Companion Companion = new Companion(null);
    private static final Map SHOULD_WAIT_FOR_REPEATING_DEVICE_MAP = MapsKt.mapOf(TuplesKt.m1081to("Google", SetsKt.setOf((Object[]) new String[]{"oriole", "raven", "bluejay", "panther", "cheetah", "lynx"})));
    private static final Map SM8150_DEVICES = MapsKt.mapOf(TuplesKt.m1081to("google", SetsKt.setOf((Object[]) new String[]{"pixel 4", "pixel 4 xl"})), TuplesKt.m1081to("samsung", SetsKt.setOf("sm-g770f")));
    private final Camera2MetadataProvider metadataProvider;
    private final StrictMode strictMode;

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

    public Camera2Quirks(Camera2MetadataProvider metadataProvider, StrictMode strictMode) {
        Intrinsics.checkNotNullParameter(metadataProvider, "metadataProvider");
        Intrinsics.checkNotNullParameter(strictMode, "strictMode");
        this.metadataProvider = metadataProvider;
        this.strictMode = strictMode;
    }

    /* JADX INFO: renamed from: shouldWaitForRepeatingRequestStartOnDisconnect$camera_camera2_pipe */
    public final boolean m72x94af7f6a(CameraGraph.Config graphConfig) {
        Intrinsics.checkNotNullParameter(graphConfig, "graphConfig");
        if (this.strictMode.getEnabled()) {
            return false;
        }
        Boolean awaitRepeatingRequestOnDisconnect = graphConfig.getFlags().getAwaitRepeatingRequestOnDisconnect();
        return awaitRepeatingRequestOnDisconnect != null ? awaitRepeatingRequestOnDisconnect.booleanValue() : CameraMetadata.Companion.isHardwareLevelLegacy(this.metadataProvider.mo1841awaitCameraMetadataEfqyGwQ(graphConfig.m1575getCameraDz_R5H8()));
    }

    /* JADX INFO: renamed from: shouldCreateEmptyCaptureSessionBeforeClosing-EfqyGwQ$camera_camera2_pipe */
    public final boolean m71xfcf3eba9(String cameraId) {
        int i;
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        return !this.strictMode.getEnabled() && 24 <= (i = Build.VERSION.SDK_INT) && i < 29 && CameraMetadata.Companion.isHardwareLevelLegacy(this.metadataProvider.mo1841awaitCameraMetadataEfqyGwQ(cameraId));
    }

    /* JADX INFO: renamed from: shouldWaitForCameraDeviceOnClosed-EfqyGwQ$camera_camera2_pipe, reason: not valid java name */
    public final boolean m1844shouldWaitForCameraDeviceOnClosedEfqyGwQ$camera_camera2_pipe(String cameraId) {
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        if (this.strictMode.getEnabled()) {
            return false;
        }
        return CameraMetadata.Companion.isHardwareLevelLegacy(this.metadataProvider.mo1841awaitCameraMetadataEfqyGwQ(cameraId));
    }

    /* JADX INFO: renamed from: shouldCloseCameraBeforeCreatingCaptureSession-EfqyGwQ$camera_camera2_pipe */
    public final boolean m70x552c1673(String cameraId) {
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        if (this.strictMode.getEnabled()) {
            return false;
        }
        return (Build.VERSION.SDK_INT <= 32 && CameraMetadata.Companion.isHardwareLevelLegacy(this.metadataProvider.mo1841awaitCameraMetadataEfqyGwQ(cameraId))) || (StringsKt.equals("motorola", Build.BRAND, true) && StringsKt.equals("moto e20", Build.MODEL, true) && Intrinsics.areEqual(cameraId, "1"));
    }

    public final int getRepeatingRequestFrameCountForCapture$camera_camera2_pipe(CameraGraph.Flags graphConfigFlags) {
        Intrinsics.checkNotNullParameter(graphConfigFlags, "graphConfigFlags");
        int iMax = 0;
        if (this.strictMode.getEnabled()) {
            return 0;
        }
        CameraGraph.RepeatingRequestRequirementsBeforeCapture awaitRepeatingRequestBeforeCapture = graphConfigFlags.getAwaitRepeatingRequestBeforeCapture();
        Set set = (Set) SHOULD_WAIT_FOR_REPEATING_DEVICE_MAP.get(Build.MANUFACTURER);
        if (set != null && set.contains(Build.DEVICE) && Build.VERSION.SDK_INT < 34) {
            iMax = Math.max(0, 10);
        }
        int i = WhenMappings.$EnumSwitchMapping$0[awaitRepeatingRequestBeforeCapture.getCompletionBehavior().ordinal()];
        if (i == 1) {
            return Math.max(iMax, awaitRepeatingRequestBeforeCapture.m1598getRepeatingFramesToCompletepVg5ArA());
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        return awaitRepeatingRequestBeforeCapture.m1598getRepeatingFramesToCompletepVg5ArA();
    }

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
                String BRAND = Build.BRAND;
                Intrinsics.checkNotNullExpressionValue(BRAND, "BRAND");
                Locale locale = Locale.ROOT;
                String lowerCase = BRAND.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                Set set = (Set) map.get(lowerCase);
                if (set == null) {
                    return false;
                }
                String MODEL = Build.MODEL;
                Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
                String lowerCase2 = MODEL.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                if (!set.contains(lowerCase2)) {
                    return false;
                }
            }
            return true;
        }
    }
}
