package androidx.camera.camera2.adapter;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import android.util.Log;
import android.util.Range;
import android.util.Size;
import androidx.camera.camera2.compat.DynamicRangeProfilesCompat;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.workaround.FlashAvailabilityCheckerKt;
import androidx.camera.camera2.config.CameraConfig;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.CameraCallbackMap;
import androidx.camera.camera2.impl.CameraPipeCameraProperties;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.DeviceInfoLogger;
import androidx.camera.camera2.impl.FocusMeteringControl;
import androidx.camera.camera2.internal.IntrinsicZoomCalculator;
import androidx.camera.camera2.interop.Camera2CameraInfo;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraUseCaseAdapterProvider;
import androidx.camera.core.Logger;
import androidx.camera.core.SessionConfig;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.Timebase;
import androidx.camera.core.impl.UseCaseAdditionSimulator;
import androidx.camera.core.impl.utils.CameraOrientationUtil;
import androidx.camera.core.internal.StreamSpecsCalculator;
import androidx.lifecycle.LiveData;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraInfoAdapter implements CameraInfoInternal, UnsafeWrapper {
    public static final Companion Companion = new Companion(null);
    private final Lazy _physicalCameraInfos$delegate;
    private final Lazy camera2CameraInfo$delegate;
    private final CameraCallbackMap cameraCallbackMap;
    private final CameraConfig cameraConfig;
    private final CameraControlStateAdapter cameraControlStateAdapter;
    private final CameraProperties cameraProperties;
    private final CameraQuirks cameraQuirks;
    private final CameraStateAdapter cameraStateAdapter;
    private final EncoderProfilesProvider encoderProfilesProvider;
    private final FocusMeteringControl focusMeteringControl;
    private final IntrinsicZoomCalculator intrinsicZoomCalculator;
    private final Lazy isLegacyDevice$delegate;
    private final StreamConfigurationMapCompat streamConfigurationMapCompat;
    private final StreamSpecsCalculator streamSpecsCalculator;

    @Override // androidx.camera.core.CameraInfo
    public /* synthetic */ CameraIdentifier getCameraIdentifier() {
        return CameraIdentifier.Factory.create(getCameraId());
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public /* synthetic */ CameraInfoInternal getImplementation() {
        return CameraInfoInternal.CC.$default$getImplementation(this);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public /* synthetic */ boolean isResolvedFeatureGroupSupported(ResolvedFeatureGroup resolvedFeatureGroup, SessionConfig sessionConfig) {
        return CameraInfoInternal.CC.$default$isResolvedFeatureGroupSupported(this, resolvedFeatureGroup, sessionConfig);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public /* synthetic */ void setCameraUseCaseAdapterProvider(CameraUseCaseAdapterProvider cameraUseCaseAdapterProvider) {
        UseCaseAdditionSimulator.setCameraUseCaseAdapterProvider(cameraUseCaseAdapterProvider);
    }

    public CameraInfoAdapter(CameraProperties cameraProperties, CameraConfig cameraConfig, CameraStateAdapter cameraStateAdapter, CameraControlStateAdapter cameraControlStateAdapter, CameraCallbackMap cameraCallbackMap, FocusMeteringControl focusMeteringControl, CameraQuirks cameraQuirks, EncoderProfilesProvider encoderProfilesProvider, StreamConfigurationMapCompat streamConfigurationMapCompat, IntrinsicZoomCalculator intrinsicZoomCalculator, StreamSpecsCalculator streamSpecsCalculator) {
        Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
        Intrinsics.checkNotNullParameter(cameraConfig, "cameraConfig");
        Intrinsics.checkNotNullParameter(cameraStateAdapter, "cameraStateAdapter");
        Intrinsics.checkNotNullParameter(cameraControlStateAdapter, "cameraControlStateAdapter");
        Intrinsics.checkNotNullParameter(cameraCallbackMap, "cameraCallbackMap");
        Intrinsics.checkNotNullParameter(focusMeteringControl, "focusMeteringControl");
        Intrinsics.checkNotNullParameter(cameraQuirks, "cameraQuirks");
        Intrinsics.checkNotNullParameter(encoderProfilesProvider, "encoderProfilesProvider");
        Intrinsics.checkNotNullParameter(streamConfigurationMapCompat, "streamConfigurationMapCompat");
        Intrinsics.checkNotNullParameter(intrinsicZoomCalculator, "intrinsicZoomCalculator");
        Intrinsics.checkNotNullParameter(streamSpecsCalculator, "streamSpecsCalculator");
        this.cameraProperties = cameraProperties;
        this.cameraConfig = cameraConfig;
        this.cameraStateAdapter = cameraStateAdapter;
        this.cameraControlStateAdapter = cameraControlStateAdapter;
        this.cameraCallbackMap = cameraCallbackMap;
        this.focusMeteringControl = focusMeteringControl;
        this.cameraQuirks = cameraQuirks;
        this.encoderProfilesProvider = encoderProfilesProvider;
        this.streamConfigurationMapCompat = streamConfigurationMapCompat;
        this.intrinsicZoomCalculator = intrinsicZoomCalculator;
        this.streamSpecsCalculator = streamSpecsCalculator;
        DeviceInfoLogger.INSTANCE.logDeviceInfo(cameraProperties);
        this._physicalCameraInfos$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.CameraInfoAdapter$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CameraInfoAdapter._physicalCameraInfos_delegate$lambda$0(this.f$0);
            }
        });
        this.isLegacyDevice$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.CameraInfoAdapter$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(CameraInfoAdapter.isLegacyDevice_delegate$lambda$0(this.f$0));
            }
        });
        this.camera2CameraInfo$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.CameraInfoAdapter$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CameraInfoAdapter.camera2CameraInfo_delegate$lambda$0(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set _physicalCameraInfos_delegate$lambda$0(CameraInfoAdapter cameraInfoAdapter) {
        Set physicalCameraIds = cameraInfoAdapter.cameraProperties.getMetadata().getPhysicalCameraIds();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = physicalCameraIds.iterator();
        while (it.hasNext()) {
            String strM1608unboximpl = ((CameraId) it.next()).m1608unboximpl();
            linkedHashSet.add(new PhysicalCameraInfoAdapter(new CameraPipeCameraProperties(new CameraConfig(strM1608unboximpl, null), cameraInfoAdapter.cameraProperties.getMetadata().mo1611awaitPhysicalMetadataEfqyGwQ(strM1608unboximpl))));
        }
        return linkedHashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isLegacyDevice_delegate$lambda$0(CameraInfoAdapter cameraInfoAdapter) {
        return CameraMetadata.Companion.isHardwareLevelLegacy(cameraInfoAdapter.cameraProperties.getMetadata());
    }

    public final Camera2CameraInfo getCamera2CameraInfo$camera_camera2() {
        return (Camera2CameraInfo) this.camera2CameraInfo$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Camera2CameraInfo camera2CameraInfo_delegate$lambda$0(CameraInfoAdapter cameraInfoAdapter) {
        return Camera2CameraInfo.Companion.create(cameraInfoAdapter.cameraProperties);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public String getCameraId() {
        return this.cameraConfig.m1417getCameraIdDz_R5H8();
    }

    @Override // androidx.camera.core.CameraInfo
    public int getLensFacing() {
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key LENS_FACING = CameraCharacteristics.LENS_FACING;
        Intrinsics.checkNotNullExpressionValue(LENS_FACING, "LENS_FACING");
        Object obj = metadata.get(LENS_FACING);
        Intrinsics.checkNotNull(obj);
        return getCameraSelectorLensFacing(((Number) obj).intValue());
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public boolean isExternalCamera() {
        if (getLensFacing() == 2) {
            return true;
        }
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key INFO_SUPPORTED_HARDWARE_LEVEL = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
        Intrinsics.checkNotNullExpressionValue(INFO_SUPPORTED_HARDWARE_LEVEL, "INFO_SUPPORTED_HARDWARE_LEVEL");
        Integer num = (Integer) metadata.get(INFO_SUPPORTED_HARDWARE_LEVEL);
        return num != null && num.intValue() == 4;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public CameraCharacteristics getCameraCharacteristics() {
        Object objUnwrapAs = this.cameraProperties.getMetadata().unwrapAs(Reflection.getOrCreateKotlinClass(CameraCharacteristics.class));
        Intrinsics.checkNotNull(objUnwrapAs);
        return (CameraCharacteristics) objUnwrapAs;
    }

    private final int getCameraSelectorLensFacing(int i) {
        if (i == 0) {
            return 0;
        }
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (!Logger.isWarnEnabled("CXCP")) {
                    return -1;
                }
                Log.w(Camera2Logger.TRUNCATED_TAG, "Unrecognized lens facing: " + i + '!');
                return -1;
            }
        }
        return i2;
    }

    @Override // androidx.camera.core.CameraInfo
    public int getSensorRotationDegrees() {
        return getSensorRotationDegrees(0);
    }

    @Override // androidx.camera.core.CameraInfo
    public boolean hasFlashUnit() {
        return FlashAvailabilityCheckerKt.isFlashAvailable$default(this.cameraProperties, false, 1, null);
    }

    @Override // androidx.camera.core.CameraInfo
    public int getSensorRotationDegrees(int i) {
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key SENSOR_ORIENTATION = CameraCharacteristics.SENSOR_ORIENTATION;
        Intrinsics.checkNotNullExpressionValue(SENSOR_ORIENTATION, "SENSOR_ORIENTATION");
        Object obj = metadata.get(SENSOR_ORIENTATION);
        Intrinsics.checkNotNull(obj);
        return CameraOrientationUtil.getRelativeImageRotation(CameraOrientationUtil.surfaceRotationToDegrees(i), ((Number) obj).intValue(), 1 == getLensFacing());
    }

    @Override // androidx.camera.core.CameraInfo
    public LiveData getZoomState() {
        return this.cameraControlStateAdapter.getZoomStateLiveData();
    }

    @Override // androidx.camera.core.CameraInfo
    public LiveData getCameraState() {
        return this.cameraStateAdapter.getCameraState$camera_camera2();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public EncoderProfilesProvider getEncoderProfilesProvider() {
        return this.encoderProfilesProvider;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Timebase getTimebase() {
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key SENSOR_INFO_TIMESTAMP_SOURCE = CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE;
        Intrinsics.checkNotNullExpressionValue(SENSOR_INFO_TIMESTAMP_SOURCE, "SENSOR_INFO_TIMESTAMP_SOURCE");
        Object obj = metadata.get(SENSOR_INFO_TIMESTAMP_SOURCE);
        Intrinsics.checkNotNull(obj);
        int iIntValue = ((Number) obj).intValue();
        if (iIntValue == 0) {
            return Timebase.UPTIME;
        }
        if (iIntValue == 1) {
            return Timebase.REALTIME;
        }
        return Timebase.UPTIME;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Set getSupportedOutputFormats() {
        Set set;
        Integer[] outputFormats = this.streamConfigurationMapCompat.getOutputFormats();
        return (outputFormats == null || (set = ArraysKt.toSet(outputFormats)) == null) ? SetsKt.emptySet() : set;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public List getSupportedResolutions(int i) {
        List list;
        Size[] outputSizes = this.streamConfigurationMapCompat.getOutputSizes(i);
        return (outputSizes == null || (list = ArraysKt.toList(outputSizes)) == null) ? CollectionsKt.emptyList() : list;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public List getSupportedHighResolutions(int i) {
        List list;
        Size[] highResolutionOutputSizes = this.streamConfigurationMapCompat.getHighResolutionOutputSizes(i);
        return (highResolutionOutputSizes == null || (list = ArraysKt.toList(highResolutionOutputSizes)) == null) ? CollectionsKt.emptyList() : list;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public Object unwrapAs(KClass type) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(Camera2CameraInfo.class))) {
            Camera2CameraInfo camera2CameraInfo$camera_camera2 = getCamera2CameraInfo$camera_camera2();
            Intrinsics.checkNotNull(camera2CameraInfo$camera_camera2, "null cannot be cast to non-null type T of androidx.camera.camera2.adapter.CameraInfoAdapter.unwrapAs");
            return camera2CameraInfo$camera_camera2;
        }
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CameraProperties.class))) {
            CameraProperties cameraProperties = this.cameraProperties;
            Intrinsics.checkNotNull(cameraProperties, "null cannot be cast to non-null type T of androidx.camera.camera2.adapter.CameraInfoAdapter.unwrapAs");
            return cameraProperties;
        }
        if (!Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CameraMetadata.class))) {
            return this.cameraProperties.getMetadata().unwrapAs(type);
        }
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        Intrinsics.checkNotNull(metadata, "null cannot be cast to non-null type T of androidx.camera.camera2.adapter.CameraInfoAdapter.unwrapAs");
        return metadata;
    }

    public String toString() {
        return "CameraInfoAdapter<" + this.cameraConfig + ".cameraId>";
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Quirks getCameraQuirks() {
        return this.cameraQuirks.getQuirks();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Set getSupportedDynamicRanges() {
        return DynamicRangeProfilesCompat.Companion.fromCameraMetaData(this.cameraProperties.getMetadata()).getSupportedDynamicRanges();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public boolean isHighSpeedSupported() {
        return CameraMetadata.Companion.getSupportsHighSpeedVideo(this.cameraProperties.getMetadata());
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public List getSupportedHighSpeedResolutions() {
        List list;
        Size[] highSpeedVideoSizes = this.streamConfigurationMapCompat.getHighSpeedVideoSizes();
        return (highSpeedVideoSizes == null || (list = ArraysKt.toList(highSpeedVideoSizes)) == null) ? CollectionsKt.emptyList() : list;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public List getSupportedHighSpeedResolutionsFor(Range fpsRange) {
        Object objM3604constructorimpl;
        Intrinsics.checkNotNullParameter(fpsRange, "fpsRange");
        try {
            Result.Companion companion = Result.Companion;
            Size[] highSpeedVideoSizesFor = this.streamConfigurationMapCompat.getHighSpeedVideoSizesFor(fpsRange);
            objM3604constructorimpl = Result.m3604constructorimpl(highSpeedVideoSizesFor != null ? ArraysKt.toList(highSpeedVideoSizesFor) : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM3604constructorimpl = Result.m3604constructorimpl(ResultKt.createFailure(th));
        }
        List list = (List) (Result.m3608isFailureimpl(objM3604constructorimpl) ? null : objM3604constructorimpl);
        return list == null ? CollectionsKt.emptyList() : list;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Rect getSensorRect() {
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key SENSOR_INFO_ACTIVE_ARRAY_SIZE = CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE;
        Intrinsics.checkNotNullExpressionValue(SENSOR_INFO_ACTIVE_ARRAY_SIZE, "SENSOR_INFO_ACTIVE_ARRAY_SIZE");
        Rect rect = (Rect) metadata.get(SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        if (Intrinsics.areEqual("robolectric", Build.FINGERPRINT) && rect == null) {
            return new Rect(0, 0, 4000, 3000);
        }
        Intrinsics.checkNotNull(rect);
        return rect;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public boolean isPreviewStabilizationSupported() {
        return CameraMetadata.Companion.getSupportsPreviewStabilization(this.cameraProperties.getMetadata());
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public boolean isVideoStabilizationSupported() {
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES = CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES;
        Intrinsics.checkNotNullExpressionValue(CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES, "CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES");
        int[] iArr = (int[]) metadata.get(CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES);
        return iArr != null && ArraysKt.contains(iArr, 1);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Set getAvailableCapabilities() {
        Set set;
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key REQUEST_AVAILABLE_CAPABILITIES = CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES;
        Intrinsics.checkNotNullExpressionValue(REQUEST_AVAILABLE_CAPABILITIES, "REQUEST_AVAILABLE_CAPABILITIES");
        int[] iArr = (int[]) metadata.get(REQUEST_AVAILABLE_CAPABILITIES);
        return (iArr == null || (set = ArraysKt.toSet(iArr)) == null) ? SetsKt.emptySet() : set;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Object unwrapAs(CameraInfo cameraInfo, KClass type) {
            Intrinsics.checkNotNullParameter(cameraInfo, "<this>");
            Intrinsics.checkNotNullParameter(type, "type");
            if (cameraInfo instanceof UnsafeWrapper) {
                return ((UnsafeWrapper) cameraInfo).unwrapAs(type);
            }
            if (cameraInfo instanceof CameraInfoInternal) {
                CameraInfoInternal cameraInfoInternal = (CameraInfoInternal) cameraInfo;
                if (cameraInfoInternal.getImplementation() != cameraInfo) {
                    CameraInfoInternal implementation = cameraInfoInternal.getImplementation();
                    Intrinsics.checkNotNullExpressionValue(implementation, "getImplementation(...)");
                    return unwrapAs(implementation, type);
                }
            }
            return null;
        }

        /* JADX INFO: renamed from: getCameraId-zjxgSG8, reason: not valid java name */
        public final String m1382getCameraIdzjxgSG8(CameraInfo cameraId) {
            Intrinsics.checkNotNullParameter(cameraId, "$this$cameraId");
            CameraMetadata cameraMetadata = (CameraMetadata) unwrapAs(cameraId, Reflection.getOrCreateKotlinClass(CameraMetadata.class));
            if (cameraMetadata != null) {
                return cameraMetadata.mo1612getCameraDz_R5H8();
            }
            return null;
        }
    }
}
