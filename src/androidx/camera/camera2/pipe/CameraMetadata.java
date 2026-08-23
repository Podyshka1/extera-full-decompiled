package androidx.camera.camera2.pipe;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.compat.Api33Compat;
import androidx.camera.camera2.pipe.compat.Api34Compat;
import androidx.camera.camera2.pipe.compat.Api35Compat;
import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraMetadata extends Metadata, UnsafeWrapper {
    public static final Companion Companion = Companion.$$INSTANCE;

    CameraExtensionMetadata awaitExtensionMetadata(int i);

    /* JADX INFO: renamed from: awaitPhysicalMetadata-EfqyGwQ, reason: not valid java name */
    CameraMetadata mo1611awaitPhysicalMetadataEfqyGwQ(String str);

    Object get(CameraCharacteristics.Key key);

    /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: not valid java name */
    String mo1612getCameraDz_R5H8();

    Object getOrDefault(CameraCharacteristics.Key key, Object obj);

    Set getPhysicalCameraIds();

    Set getSessionKeys();

    Set getSupportedExtensions();

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final Metadata.Key CAMERA_AVAILABLE_COLOR_SPACE_PROFILES;
        private static final Metadata.Key CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP;
        private static final Metadata.Key CAMERA_STREAM_CONFIGURATION_MAP;
        private static int[] EMPTY_INT_ARRAY;

        private Companion() {
        }

        static {
            Metadata.Key.Companion companion = Metadata.Key.Companion;
            CAMERA_STREAM_CONFIGURATION_MAP = companion.create("androidx.camera.camera2.pipe.scalar.streamConfigurationMap", Reflection.getOrCreateKotlinClass(CameraStreamConfigurationMap.class));
            CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP = companion.create("androidx.camera.camera2.pipe.scalar.multiResolutionStreamConfigurationMap", Reflection.getOrCreateKotlinClass(CameraMultiResolutionStreamConfigurationMap.class));
            CAMERA_AVAILABLE_COLOR_SPACE_PROFILES = companion.create("androidx.camera.camera2.pipe.request.availableColorSpaceProfilesMap", Reflection.getOrCreateKotlinClass(CameraColorSpaceProfiles.class));
            EMPTY_INT_ARRAY = new int[0];
        }

        public final int[] getAvailableCapabilities(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
            CameraCharacteristics.Key REQUEST_AVAILABLE_CAPABILITIES = CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES;
            Intrinsics.checkNotNullExpressionValue(REQUEST_AVAILABLE_CAPABILITIES, "REQUEST_AVAILABLE_CAPABILITIES");
            int[] iArr = (int[]) cameraMetadata.get(REQUEST_AVAILABLE_CAPABILITIES);
            return iArr == null ? EMPTY_INT_ARRAY : iArr;
        }

        public final int[] getAvailableVideoStabilizationModes(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
            CameraCharacteristics.Key CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES = CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES;
            Intrinsics.checkNotNullExpressionValue(CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES, "CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES");
            int[] iArr = (int[]) cameraMetadata.get(CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES);
            return iArr == null ? EMPTY_INT_ARRAY : iArr;
        }

        public final boolean isHardwareLevelExternal(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
            CameraCharacteristics.Key INFO_SUPPORTED_HARDWARE_LEVEL = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
            Intrinsics.checkNotNullExpressionValue(INFO_SUPPORTED_HARDWARE_LEVEL, "INFO_SUPPORTED_HARDWARE_LEVEL");
            Integer num = (Integer) cameraMetadata.get(INFO_SUPPORTED_HARDWARE_LEVEL);
            return num != null && num.intValue() == 4;
        }

        public final boolean isHardwareLevelLegacy(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
            CameraCharacteristics.Key INFO_SUPPORTED_HARDWARE_LEVEL = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
            Intrinsics.checkNotNullExpressionValue(INFO_SUPPORTED_HARDWARE_LEVEL, "INFO_SUPPORTED_HARDWARE_LEVEL");
            Integer num = (Integer) cameraMetadata.get(INFO_SUPPORTED_HARDWARE_LEVEL);
            return num != null && num.intValue() == 2;
        }

        public final boolean isHardwareLevelLimited(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
            CameraCharacteristics.Key INFO_SUPPORTED_HARDWARE_LEVEL = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
            Intrinsics.checkNotNullExpressionValue(INFO_SUPPORTED_HARDWARE_LEVEL, "INFO_SUPPORTED_HARDWARE_LEVEL");
            Integer num = (Integer) cameraMetadata.get(INFO_SUPPORTED_HARDWARE_LEVEL);
            return num != null && num.intValue() == 0;
        }

        public final boolean getSupportsPrivateReprocessing(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
            return ArraysKt.contains(getAvailableCapabilities(cameraMetadata), 4);
        }

        public final boolean getSupportsHighSpeedVideo(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
            return ArraysKt.contains(getAvailableCapabilities(cameraMetadata), 9);
        }

        public final boolean getSupportsAutoFocusTrigger(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
            CameraCharacteristics.Key LENS_INFO_MINIMUM_FOCUS_DISTANCE = CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE;
            Intrinsics.checkNotNullExpressionValue(LENS_INFO_MINIMUM_FOCUS_DISTANCE, "LENS_INFO_MINIMUM_FOCUS_DISTANCE");
            Float f = (Float) cameraMetadata.get(LENS_INFO_MINIMUM_FOCUS_DISTANCE);
            if (f != null) {
                return f.floatValue() > 0.0f;
            }
            CameraCharacteristics.Key CONTROL_AF_AVAILABLE_MODES = CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES;
            Intrinsics.checkNotNullExpressionValue(CONTROL_AF_AVAILABLE_MODES, "CONTROL_AF_AVAILABLE_MODES");
            int[] iArr = (int[]) cameraMetadata.get(CONTROL_AF_AVAILABLE_MODES);
            if (iArr == null) {
                return false;
            }
            return ArraysKt.contains(iArr, 1) || ArraysKt.contains(iArr, 2) || ArraysKt.contains(iArr, 4) || ArraysKt.contains(iArr, 3);
        }

        public final boolean getSupportsZoomOverride(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
            return Build.VERSION.SDK_INT >= 34 && Api34Compat.isZoomOverrideSupported(cameraMetadata);
        }

        public final boolean getSupportsTorchStrength(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
            return Build.VERSION.SDK_INT >= 35 && Api35Compat.isTorchStrengthSupported(cameraMetadata);
        }

        public final int getMaxTorchStrengthLevel(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
            if (Build.VERSION.SDK_INT >= 35) {
                return Api35Compat.getMaxTorchStrengthLevel(cameraMetadata);
            }
            return 1;
        }

        public final int getDefaultTorchStrengthLevel(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
            if (Build.VERSION.SDK_INT >= 35) {
                return Api35Compat.getDefaultTorchStrengthLevel(cameraMetadata);
            }
            return 1;
        }

        public final boolean getSupportsLowLightBoost(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
            CameraCharacteristics.Key CONTROL_AE_AVAILABLE_MODES = CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES;
            Intrinsics.checkNotNullExpressionValue(CONTROL_AE_AVAILABLE_MODES, "CONTROL_AE_AVAILABLE_MODES");
            int[] iArr = (int[]) cameraMetadata.get(CONTROL_AE_AVAILABLE_MODES);
            if (iArr == null) {
                return false;
            }
            return ArraysKt.contains(iArr, 6);
        }

        public final boolean getSupportsPreviewStabilization(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
            if (Build.VERSION.SDK_INT >= 33) {
                return Api33Compat.INSTANCE.supportsPreviewStabilization(cameraMetadata);
            }
            return false;
        }
    }
}
