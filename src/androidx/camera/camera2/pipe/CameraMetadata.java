package androidx.camera.camera2.pipe;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.os.Build;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.compat.Api33Compat;
import androidx.camera.camera2.pipe.compat.Api34Compat;
import androidx.camera.camera2.pipe.compat.Api35Compat;
import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\t\bg\u0018\u0000 !2\u00020\u00012\u00020\u0002:\u0001!J&\u0010\u0006\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H¦\u0002¢\u0006\u0004\b\u0006\u0010\u0007J+\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\b\u001a\u00028\u0000H&¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000bH&¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H&¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u000b8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u001e\u0010\u001c\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00190\u00188&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00188&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001bR\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00100\u00188&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u001bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\"À\u0006\u0001"}, d2 = {"Landroidx/camera/camera2/pipe/CameraMetadata;", "Landroidx/camera/camera2/pipe/Metadata;", "Landroidx/camera/camera2/pipe/UnsafeWrapper;", "T", "Landroid/hardware/camera2/CameraCharacteristics$Key;", "key", "get", "(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;", "default", "getOrDefault", "(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;", "Landroidx/camera/camera2/pipe/CameraId;", "cameraId", "awaitPhysicalMetadata-EfqyGwQ", "(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;", "awaitPhysicalMetadata", _UrlKt.FRAGMENT_ENCODE_SET, "extension", "Landroidx/camera/camera2/pipe/CameraExtensionMetadata;", "awaitExtensionMetadata", "(I)Landroidx/camera/camera2/pipe/CameraExtensionMetadata;", "getCamera-Dz_R5H8", "()Ljava/lang/String;", "camera", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/CaptureRequest$Key;", "getSessionKeys", "()Ljava/util/Set;", "sessionKeys", "getPhysicalCameraIds", "physicalCameraIds", "getSupportedExtensions", "supportedExtensions", "Companion", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public interface CameraMetadata extends Metadata, UnsafeWrapper {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    CameraExtensionMetadata awaitExtensionMetadata(int extension);

    /* JADX INFO: renamed from: awaitPhysicalMetadata-EfqyGwQ, reason: not valid java name */
    CameraMetadata mo1217awaitPhysicalMetadataEfqyGwQ(String cameraId);

    <T> T get(CameraCharacteristics.Key<T> key);

    /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: not valid java name */
    String mo1218getCameraDz_R5H8();

    <T> T getOrDefault(CameraCharacteristics.Key<T> key, T t);

    Set<CameraId> getPhysicalCameraIds();

    Set<CaptureRequest.Key<?>> getSessionKeys();

    Set<Integer> getSupportedExtensions();

    @kotlin.Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R&\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u0012\u0004\b\n\u0010\u0003\u001a\u0004\b\b\u0010\tR&\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00048\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\f\u0010\u0007\u0012\u0004\b\u000e\u0010\u0003\u001a\u0004\b\r\u0010\tR&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00048\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\u0010\u0010\u0007\u0012\u0004\b\u0012\u0010\u0003\u001a\u0004\b\u0011\u0010\tR\"\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0015\u0010\u001d\u001a\u00020\u0013*\u00020\u001a8G¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0015\u0010\u001f\u001a\u00020\u0013*\u00020\u001a8G¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001cR\u0015\u0010!\u001a\u00020 *\u00020\u001a8G¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0015\u0010#\u001a\u00020 *\u00020\u001a8G¢\u0006\u0006\u001a\u0004\b#\u0010\"R\u0015\u0010$\u001a\u00020 *\u00020\u001a8G¢\u0006\u0006\u001a\u0004\b$\u0010\"R\u0015\u0010&\u001a\u00020 *\u00020\u001a8G¢\u0006\u0006\u001a\u0004\b%\u0010\"R\u0015\u0010(\u001a\u00020 *\u00020\u001a8G¢\u0006\u0006\u001a\u0004\b'\u0010\"R\u0015\u0010*\u001a\u00020 *\u00020\u001a8G¢\u0006\u0006\u001a\u0004\b)\u0010\"R\u0015\u0010,\u001a\u00020 *\u00020\u001a8G¢\u0006\u0006\u001a\u0004\b+\u0010\"R\u0015\u00100\u001a\u00020-*\u00020\u001a8G¢\u0006\u0006\u001a\u0004\b.\u0010/R\u0015\u00102\u001a\u00020-*\u00020\u001a8G¢\u0006\u0006\u001a\u0004\b1\u0010/R\u0015\u00104\u001a\u00020 *\u00020\u001a8G¢\u0006\u0006\u001a\u0004\b3\u0010\"R\u0015\u00106\u001a\u00020 *\u00020\u001a8G¢\u0006\u0006\u001a\u0004\b5\u0010\"¨\u00067"}, d2 = {"Landroidx/camera/camera2/pipe/CameraMetadata$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/camera/camera2/pipe/Metadata$Key;", "Landroidx/camera/camera2/pipe/CameraStreamConfigurationMap;", "CAMERA_STREAM_CONFIGURATION_MAP", "Landroidx/camera/camera2/pipe/Metadata$Key;", "getCAMERA_STREAM_CONFIGURATION_MAP", "()Landroidx/camera/camera2/pipe/Metadata$Key;", "getCAMERA_STREAM_CONFIGURATION_MAP$annotations", "Landroidx/camera/camera2/pipe/CameraMultiResolutionStreamConfigurationMap;", "CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP", "getCAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP", "getCAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP$annotations", "Landroidx/camera/camera2/pipe/CameraColorSpaceProfiles;", "CAMERA_AVAILABLE_COLOR_SPACE_PROFILES", "getCAMERA_AVAILABLE_COLOR_SPACE_PROFILES", "getCAMERA_AVAILABLE_COLOR_SPACE_PROFILES$annotations", _UrlKt.FRAGMENT_ENCODE_SET, "EMPTY_INT_ARRAY", "[I", "getEMPTY_INT_ARRAY", "()[I", "setEMPTY_INT_ARRAY", "([I)V", "Landroidx/camera/camera2/pipe/CameraMetadata;", "getAvailableCapabilities", "(Landroidx/camera/camera2/pipe/CameraMetadata;)[I", "availableCapabilities", "getAvailableVideoStabilizationModes", "availableVideoStabilizationModes", _UrlKt.FRAGMENT_ENCODE_SET, "isHardwareLevelExternal", "(Landroidx/camera/camera2/pipe/CameraMetadata;)Z", "isHardwareLevelLegacy", "isHardwareLevelLimited", "getSupportsPrivateReprocessing", "supportsPrivateReprocessing", "getSupportsAutoFocusTrigger", "supportsAutoFocusTrigger", "getSupportsZoomOverride", "supportsZoomOverride", "getSupportsTorchStrength", "supportsTorchStrength", _UrlKt.FRAGMENT_ENCODE_SET, "getMaxTorchStrengthLevel", "(Landroidx/camera/camera2/pipe/CameraMetadata;)I", "maxTorchStrengthLevel", "getDefaultTorchStrengthLevel", "defaultTorchStrengthLevel", "getSupportsLowLightBoost", "supportsLowLightBoost", "getSupportsPreviewStabilization", "supportsPreviewStabilization", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCameraMetadata.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraMetadata.kt\nandroidx/camera/camera2/pipe/CameraMetadata$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Metadata.kt\nandroidx/camera/camera2/pipe/Metadata$Key$Companion\n*L\n1#1,361:1\n1#2:362\n47#3:363\n47#3:364\n47#3:365\n*S KotlinDebug\n*F\n+ 1 CameraMetadata.kt\nandroidx/camera/camera2/pipe/CameraMetadata$Companion\n*L\n83#1:363\n96#1:364\n108#1:365\n*E\n"})
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final Metadata.Key<CameraColorSpaceProfiles> CAMERA_AVAILABLE_COLOR_SPACE_PROFILES;
        private static final Metadata.Key<CameraMultiResolutionStreamConfigurationMap> CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP;
        private static final Metadata.Key<CameraStreamConfigurationMap> CAMERA_STREAM_CONFIGURATION_MAP;
        private static int[] EMPTY_INT_ARRAY;

        private Companion() {
        }

        static {
            Metadata.Key.Companion companion = Metadata.Key.INSTANCE;
            CAMERA_STREAM_CONFIGURATION_MAP = companion.create("androidx.camera.camera2.pipe.scalar.streamConfigurationMap", Reflection.getOrCreateKotlinClass(CameraStreamConfigurationMap.class));
            CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP = companion.create("androidx.camera.camera2.pipe.scalar.multiResolutionStreamConfigurationMap", Reflection.getOrCreateKotlinClass(CameraMultiResolutionStreamConfigurationMap.class));
            CAMERA_AVAILABLE_COLOR_SPACE_PROFILES = companion.create("androidx.camera.camera2.pipe.request.availableColorSpaceProfilesMap", Reflection.getOrCreateKotlinClass(CameraColorSpaceProfiles.class));
            EMPTY_INT_ARRAY = new int[0];
        }

        @JvmStatic
        public final int[] getAvailableCapabilities(CameraMetadata cameraMetadata) {
            int[] iArr = (int[]) cameraMetadata.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
            return iArr == null ? EMPTY_INT_ARRAY : iArr;
        }

        @JvmStatic
        public final int[] getAvailableVideoStabilizationModes(CameraMetadata cameraMetadata) {
            int[] iArr = (int[]) cameraMetadata.get(CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES);
            return iArr == null ? EMPTY_INT_ARRAY : iArr;
        }

        @JvmStatic
        public final boolean isHardwareLevelExternal(CameraMetadata cameraMetadata) {
            Integer num = (Integer) cameraMetadata.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
            return num != null && num.intValue() == 4;
        }

        @JvmStatic
        public final boolean isHardwareLevelLegacy(CameraMetadata cameraMetadata) {
            Integer num = (Integer) cameraMetadata.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
            return num != null && num.intValue() == 2;
        }

        @JvmStatic
        public final boolean isHardwareLevelLimited(CameraMetadata cameraMetadata) {
            Integer num = (Integer) cameraMetadata.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
            return num != null && num.intValue() == 0;
        }

        @JvmStatic
        public final boolean getSupportsPrivateReprocessing(CameraMetadata cameraMetadata) {
            return ArraysKt.contains(getAvailableCapabilities(cameraMetadata), 4);
        }

        @JvmStatic
        public final boolean getSupportsAutoFocusTrigger(CameraMetadata cameraMetadata) {
            Float f = (Float) cameraMetadata.get(CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE);
            if (f != null) {
                return f.floatValue() > 0.0f;
            }
            int[] iArr = (int[]) cameraMetadata.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES);
            if (iArr == null) {
                return false;
            }
            return ArraysKt.contains(iArr, 1) || ArraysKt.contains(iArr, 2) || ArraysKt.contains(iArr, 4) || ArraysKt.contains(iArr, 3);
        }

        @JvmStatic
        public final boolean getSupportsZoomOverride(CameraMetadata cameraMetadata) {
            return Build.VERSION.SDK_INT >= 34 && Api34Compat.isZoomOverrideSupported(cameraMetadata);
        }

        @JvmStatic
        public final boolean getSupportsTorchStrength(CameraMetadata cameraMetadata) {
            return Build.VERSION.SDK_INT >= 35 && Api35Compat.isTorchStrengthSupported(cameraMetadata);
        }

        @JvmStatic
        public final int getMaxTorchStrengthLevel(CameraMetadata cameraMetadata) {
            if (Build.VERSION.SDK_INT >= 35) {
                return Api35Compat.getMaxTorchStrengthLevel(cameraMetadata);
            }
            return 1;
        }

        @JvmStatic
        public final int getDefaultTorchStrengthLevel(CameraMetadata cameraMetadata) {
            if (Build.VERSION.SDK_INT >= 35) {
                return Api35Compat.getDefaultTorchStrengthLevel(cameraMetadata);
            }
            return 1;
        }

        @JvmStatic
        public final boolean getSupportsLowLightBoost(CameraMetadata cameraMetadata) {
            int[] iArr = (int[]) cameraMetadata.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES);
            if (iArr == null) {
                return false;
            }
            return ArraysKt.contains(iArr, 6);
        }

        @JvmStatic
        public final boolean getSupportsPreviewStabilization(CameraMetadata cameraMetadata) {
            if (Build.VERSION.SDK_INT >= 33) {
                return Api33Compat.INSTANCE.supportsPreviewStabilization(cameraMetadata);
            }
            return false;
        }
    }
}
