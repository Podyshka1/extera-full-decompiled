package androidx.camera.camera2.adapter;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.MediaRecorder;
import android.os.Build;
import android.util.Log;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.compat.workaround.ExtraSupportedSurfaceCombinationsContainer;
import androidx.camera.camera2.compat.workaround.OutputSizesCorrector;
import androidx.camera.camera2.compat.workaround.ResolutionCorrector;
import androidx.camera.camera2.compat.workaround.TargetAspectRatio;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.DisplayInfoManager;
import androidx.camera.camera2.internal.DynamicRangeResolver;
import androidx.camera.camera2.internal.HighSpeedResolver;
import androidx.camera.camera2.internal.StreamUseCaseUtil;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery;
import androidx.camera.core.featuregroup.impl.feature.FpsRangeFeature;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.CameraMode;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.SurfaceCombination;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.SurfaceSizeDefinition;
import androidx.camera.core.impl.SurfaceStreamSpecQueryResult;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import androidx.camera.core.impl.utils.AspectRatioUtil;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class SupportedSurfaceCombination {
    public static final Companion Companion = new Companion(null);
    private final String cameraId;
    private final CameraMetadata cameraMetadata;
    private final List concurrentSurfaceCombinations;
    private final DisplayInfoManager displayInfoManager;
    private final DynamicRangeResolver dynamicRangeResolver;
    private final EncoderProfilesProvider encoderProfilesProvider;
    private final ExtraSupportedSurfaceCombinationsContainer extraSupportedSurfaceCombinationsContainer;
    private final FeatureCombinationQuery featureCombinationQuery;
    private final Map featureSettingsToSupportedCombinationsMap;
    private final int hardwareLevel;
    private final HighSpeedResolver highSpeedResolver;
    private final List highSpeedSurfaceCombinations;
    private boolean isBurstCaptureSupported;
    private final boolean isConcurrentCameraModeSupported;
    private boolean isManualSensorSupported;
    private boolean isPreviewStabilizationSupported;
    private boolean isRawSupported;
    private final boolean isStreamUseCaseSupported;
    private boolean isUltraHighResolutionSensorSupported;
    private final List previewStabilizationSurfaceCombinations;
    private final ResolutionCorrector resolutionCorrector;
    private final StreamConfigurationMapCompat streamConfigurationMapCompat;
    private final List surfaceCombinations;
    private final List surfaceCombinations10Bit;
    private final List surfaceCombinationsStreamUseCase;
    private final List surfaceCombinationsUltraHdr;
    public SurfaceSizeDefinition surfaceSizeDefinition;
    private final List surfaceSizeDefinitionFormats;
    private final TargetAspectRatio targetAspectRatio;
    private final List ultraHighSurfaceCombinations;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CheckingMethod.values().length];
            try {
                iArr[CheckingMethod.WITHOUT_FEATURE_COMBO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CheckingMethod.WITH_FEATURE_COMBO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CheckingMethod.WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SupportedSurfaceCombination(Context context, CameraMetadata cameraMetadata, EncoderProfilesProvider encoderProfilesProvider, FeatureCombinationQuery featureCombinationQuery) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
        Intrinsics.checkNotNullParameter(encoderProfilesProvider, "encoderProfilesProvider");
        Intrinsics.checkNotNullParameter(featureCombinationQuery, "featureCombinationQuery");
        this.cameraMetadata = cameraMetadata;
        this.encoderProfilesProvider = encoderProfilesProvider;
        this.featureCombinationQuery = featureCombinationQuery;
        this.cameraId = cameraMetadata.mo1612getCameraDz_R5H8();
        CameraCharacteristics.Key INFO_SUPPORTED_HARDWARE_LEVEL = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
        Intrinsics.checkNotNullExpressionValue(INFO_SUPPORTED_HARDWARE_LEVEL, "INFO_SUPPORTED_HARDWARE_LEVEL");
        Integer num = (Integer) cameraMetadata.get(INFO_SUPPORTED_HARDWARE_LEVEL);
        this.hardwareLevel = num != null ? num.intValue() : 2;
        this.concurrentSurfaceCombinations = new ArrayList();
        this.surfaceCombinations = new ArrayList();
        this.surfaceCombinationsStreamUseCase = new ArrayList();
        this.ultraHighSurfaceCombinations = new ArrayList();
        this.previewStabilizationSurfaceCombinations = new ArrayList();
        this.highSpeedSurfaceCombinations = new ArrayList();
        this.featureSettingsToSupportedCombinationsMap = new LinkedHashMap();
        this.surfaceCombinations10Bit = new ArrayList();
        this.surfaceCombinationsUltraHdr = new ArrayList();
        this.isPreviewStabilizationSupported = CameraMetadata.Companion.getSupportsPreviewStabilization(cameraMetadata);
        this.surfaceSizeDefinitionFormats = new ArrayList();
        this.streamConfigurationMapCompat = getStreamConfigurationMapCompat();
        this.extraSupportedSurfaceCombinationsContainer = new ExtraSupportedSurfaceCombinationsContainer();
        this.displayInfoManager = DisplayInfoManager.Companion.getInstance(context);
        this.resolutionCorrector = new ResolutionCorrector();
        this.targetAspectRatio = new TargetAspectRatio();
        DynamicRangeResolver dynamicRangeResolver = new DynamicRangeResolver(cameraMetadata);
        this.dynamicRangeResolver = dynamicRangeResolver;
        this.highSpeedResolver = new HighSpeedResolver(cameraMetadata);
        checkCapabilities();
        generateSupportedCombinationList();
        if (this.isUltraHighResolutionSensorSupported) {
            generateUltraHighResolutionSupportedCombinationList();
        }
        boolean zHasSystemFeature = context.getPackageManager().hasSystemFeature("android.hardware.camera.concurrent");
        this.isConcurrentCameraModeSupported = zHasSystemFeature;
        if (zHasSystemFeature) {
            generateConcurrentSupportedCombinationList();
        }
        if (dynamicRangeResolver.is10BitDynamicRangeSupported()) {
            generate10BitSupportedCombinationList();
        }
        if (this.isPreviewStabilizationSupported) {
            generatePreviewStabilizationSupportedCombinationList();
        }
        boolean zIsStreamUseCaseSupported = StreamUseCaseUtil.INSTANCE.isStreamUseCaseSupported(cameraMetadata);
        this.isStreamUseCaseSupported = zIsStreamUseCaseSupported;
        if (zIsStreamUseCaseSupported) {
            generateStreamUseCaseSupportedCombinationList();
        }
        generateSurfaceSizeDefinition();
    }

    public final SurfaceSizeDefinition getSurfaceSizeDefinition$camera_camera2() {
        SurfaceSizeDefinition surfaceSizeDefinition = this.surfaceSizeDefinition;
        if (surfaceSizeDefinition != null) {
            return surfaceSizeDefinition;
        }
        Intrinsics.throwUninitializedPropertyAccessException("surfaceSizeDefinition");
        return null;
    }

    public final void setSurfaceSizeDefinition$camera_camera2(SurfaceSizeDefinition surfaceSizeDefinition) {
        Intrinsics.checkNotNullParameter(surfaceSizeDefinition, "<set-?>");
        this.surfaceSizeDefinition = surfaceSizeDefinition;
    }

    public static /* synthetic */ boolean checkSupported$default(SupportedSurfaceCombination supportedSurfaceCombination, FeatureSettings featureSettings, List list, Map map, List list2, List list3, int i, Object obj) {
        if ((i & 4) != 0) {
            map = MapsKt.emptyMap();
        }
        Map map2 = map;
        if ((i & 8) != 0) {
            list2 = CollectionsKt.emptyList();
        }
        List list4 = list2;
        if ((i & 16) != 0) {
            list3 = CollectionsKt.emptyList();
        }
        return supportedSurfaceCombination.checkSupported(featureSettings, list, map2, list4, list3);
    }

    public final boolean checkSupported(FeatureSettings featureSettings, List surfaceConfigList, Map dynamicRangesBySurfaceConfig, List newUseCaseConfigs, List useCasesPriorityOrder) {
        Intrinsics.checkNotNullParameter(featureSettings, "featureSettings");
        Intrinsics.checkNotNullParameter(surfaceConfigList, "surfaceConfigList");
        Intrinsics.checkNotNullParameter(dynamicRangesBySurfaceConfig, "dynamicRangesBySurfaceConfig");
        Intrinsics.checkNotNullParameter(newUseCaseConfigs, "newUseCaseConfigs");
        Intrinsics.checkNotNullParameter(useCasesPriorityOrder, "useCasesPriorityOrder");
        List surfaceCombinationsByFeatureSettings = getSurfaceCombinationsByFeatureSettings(featureSettings);
        boolean z = false;
        if (!(surfaceCombinationsByFeatureSettings instanceof Collection) || !surfaceCombinationsByFeatureSettings.isEmpty()) {
            Iterator it = surfaceCombinationsByFeatureSettings.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (((SurfaceCombination) it.next()).getOrderedSupportedSurfaceConfigList(surfaceConfigList) != null) {
                    z = true;
                    break;
                }
            }
        }
        if (!z || !featureSettings.getRequiresFeatureComboQuery()) {
            return z;
        }
        SessionConfig sessionConfigCreateFeatureComboSessionConfig = createFeatureComboSessionConfig(featureSettings, surfaceConfigList, dynamicRangesBySurfaceConfig, newUseCaseConfigs, useCasesPriorityOrder);
        boolean zIsSupported = this.featureCombinationQuery.isSupported(sessionConfigCreateFeatureComboSessionConfig);
        List surfaces = sessionConfigCreateFeatureComboSessionConfig.getSurfaces();
        Intrinsics.checkNotNullExpressionValue(surfaces, "getSurfaces(...)");
        Iterator it2 = surfaces.iterator();
        while (it2.hasNext()) {
            ((DeferrableSurface) it2.next()).close();
        }
        return zIsSupported;
    }

    private final SessionConfig createFeatureComboSessionConfig(FeatureSettings featureSettings, List list, Map map, List list2, List list3) {
        SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            SurfaceConfig surfaceConfig = (SurfaceConfig) obj;
            Size resolution = surfaceConfig.getResolution(getUpdatedSurfaceSizeDefinitionByFormat(surfaceConfig.getImageFormat()));
            UseCaseConfig useCaseConfig = (UseCaseConfig) list2.get(((Number) list3.get(i)).intValue());
            FeatureCombinationQuery.Companion companion = FeatureCombinationQuery.Companion;
            Object obj2 = map.get(surfaceConfig);
            if (obj2 == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            SessionConfig.Builder builderCreateSessionConfigBuilder = companion.createSessionConfigBuilder(useCaseConfig, resolution, (DynamicRange) obj2);
            Range targetFpsRange = featureSettings.getTargetFpsRange();
            if (Intrinsics.areEqual(targetFpsRange, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED)) {
                targetFpsRange = null;
            }
            if (targetFpsRange == null) {
                targetFpsRange = FpsRangeFeature.DEFAULT_FPS_RANGE;
            }
            builderCreateSessionConfigBuilder.setExpectedFrameRateRange(targetFpsRange);
            if (featureSettings.getVideoStabilization() == VideoStabilization.PREVIEW) {
                builderCreateSessionConfigBuilder.setPreviewStabilization(2);
            } else if (featureSettings.getVideoStabilization() == VideoStabilization.f25ON) {
                builderCreateSessionConfigBuilder.setVideoStabilization(2);
            }
            validatingBuilder.add(builderCreateSessionConfigBuilder.build());
            Preconditions.checkState(validatingBuilder.isValid(), "Cannot create a combined SessionConfig for feature combo after adding " + useCaseConfig + " with " + surfaceConfig + " due to [" + validatingBuilder.getInvalidReason() + "]; surfaceConfigList = " + list + ", featureSettings = " + featureSettings + ", newUseCaseConfigs = " + list2);
            i = i2;
        }
        SessionConfig sessionConfigBuild = validatingBuilder.build();
        Intrinsics.checkNotNullExpressionValue(sessionConfigBuild, "build(...)");
        return sessionConfigBuild;
    }

    private final List getOrderedSupportedStreamUseCaseSurfaceConfigList(FeatureSettings featureSettings, List list, Map map, Map map2) {
        if (!StreamUseCaseUtil.INSTANCE.shouldUseStreamUseCase(featureSettings)) {
            return null;
        }
        for (SurfaceCombination surfaceCombination : this.surfaceCombinationsStreamUseCase) {
            Intrinsics.checkNotNull(list);
            final List orderedSupportedSurfaceConfigList = surfaceCombination.getOrderedSupportedSurfaceConfigList(list);
            if (orderedSupportedSurfaceConfigList != null) {
                boolean zAreCaptureTypesEligible = StreamUseCaseUtil.INSTANCE.areCaptureTypesEligible(map, map2, orderedSupportedSurfaceConfigList);
                Lazy lazy = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.SupportedSurfaceCombination$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Boolean.valueOf(SupportedSurfaceCombination.getOrderedSupportedStreamUseCaseSurfaceConfigList$lambda$0(this.f$0, orderedSupportedSurfaceConfigList));
                    }
                });
                if (zAreCaptureTypesEligible && ((Boolean) lazy.getValue()).booleanValue()) {
                    return orderedSupportedSurfaceConfigList;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean getOrderedSupportedStreamUseCaseSurfaceConfigList$lambda$0(SupportedSurfaceCombination supportedSurfaceCombination, List list) {
        return StreamUseCaseUtil.INSTANCE.areStreamUseCasesAvailableForSurfaceConfigs(supportedSurfaceCombination.cameraMetadata, list);
    }

    private final List getSurfaceCombinationsByFeatureSettings(FeatureSettings featureSettings) {
        List list;
        if (this.featureSettingsToSupportedCombinationsMap.containsKey(featureSettings)) {
            Object obj = this.featureSettingsToSupportedCombinationsMap.get(featureSettings);
            Intrinsics.checkNotNull(obj);
            return (List) obj;
        }
        List arrayList = new ArrayList();
        if (featureSettings.getRequiresFeatureComboQuery()) {
            arrayList.addAll(GuaranteedConfigurationsUtil.INSTANCE.getQueryableFcqCombinations$camera_camera2(this.cameraMetadata, featureSettings.getVideoStabilization()));
        } else if (featureSettings.isUltraHdrOn()) {
            if (this.surfaceCombinationsUltraHdr.isEmpty()) {
                generateUltraHdrSupportedCombinationList();
            }
            if (featureSettings.getCameraMode() == 0) {
                arrayList.addAll(this.surfaceCombinationsUltraHdr);
            }
        } else if (featureSettings.isHighSpeedOn()) {
            if (this.highSpeedSurfaceCombinations.isEmpty()) {
                generateHighSpeedSupportedCombinationList();
            }
            arrayList.addAll(this.highSpeedSurfaceCombinations);
        } else if (featureSettings.getRequiredMaxBitDepth() == 8) {
            int cameraMode = featureSettings.getCameraMode();
            if (cameraMode == 1) {
                arrayList = this.concurrentSurfaceCombinations;
            } else if (cameraMode == 2) {
                arrayList.addAll(this.ultraHighSurfaceCombinations);
                arrayList.addAll(this.surfaceCombinations);
            } else {
                if (featureSettings.getVideoStabilization() == VideoStabilization.PREVIEW) {
                    list = this.previewStabilizationSurfaceCombinations;
                } else {
                    list = this.surfaceCombinations;
                }
                arrayList.addAll(list);
            }
        } else if (featureSettings.getRequiredMaxBitDepth() == 10 && featureSettings.getCameraMode() == 0) {
            arrayList.addAll(this.surfaceCombinations10Bit);
        }
        this.featureSettingsToSupportedCombinationsMap.put(featureSettings, arrayList);
        return arrayList;
    }

    public final SurfaceConfig transformSurfaceConfig(int i, int i2, Size size, StreamUseCase streamUseCase) {
        Intrinsics.checkNotNullParameter(size, "size");
        Intrinsics.checkNotNullParameter(streamUseCase, "streamUseCase");
        return SurfaceConfig.Companion.transformSurfaceConfig(i2, size, getUpdatedSurfaceSizeDefinitionByFormat(i2), i, SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES, streamUseCase);
    }

    public final SurfaceStreamSpecQueryResult getSuggestedStreamSpecifications(int i, List attachedSurfaces, Map map, VideoStabilization videoStabilization, boolean z, boolean z2, boolean z3) {
        Pair pairM1081to;
        Map newUseCaseConfigsSupportedSizeMap = map;
        Intrinsics.checkNotNullParameter(attachedSurfaces, "attachedSurfaces");
        Intrinsics.checkNotNullParameter(newUseCaseConfigsSupportedSizeMap, "newUseCaseConfigsSupportedSizeMap");
        Intrinsics.checkNotNullParameter(videoStabilization, "videoStabilization");
        refreshPreviewSize();
        boolean zIsHighSpeedOn = HighSpeedResolver.Companion.isHighSpeedOn(attachedSurfaces, newUseCaseConfigsSupportedSizeMap.keySet());
        if (zIsHighSpeedOn) {
            newUseCaseConfigsSupportedSizeMap = this.highSpeedResolver.filterCommonSupportedSizes(newUseCaseConfigsSupportedSizeMap);
        }
        Map map2 = newUseCaseConfigsSupportedSizeMap;
        List list = CollectionsKt.toList(map2.keySet());
        List useCasesPriorityOrder = getUseCasesPriorityOrder(list);
        Map mapResolveAndValidateDynamicRanges = this.dynamicRangeResolver.resolveAndValidateDynamicRanges(attachedSurfaces, list, useCasesPriorityOrder);
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "resolvedDynamicRanges = " + mapResolveAndValidateDynamicRanges);
        }
        boolean zIsUltraHdrOn = Companion.isUltraHdrOn(attachedSurfaces, map2);
        if (z3) {
            pairM1081to = TuplesKt.m1081to(Boolean.FALSE, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED);
        } else {
            boolean zIsStrictFpsRequired = isStrictFpsRequired(attachedSurfaces, list);
            pairM1081to = TuplesKt.m1081to(Boolean.valueOf(zIsStrictFpsRequired), getTargetFpsRange(attachedSurfaces, list, useCasesPriorityOrder, zIsStrictFpsRequired));
        }
        boolean zBooleanValue = ((Boolean) pairM1081to.component1()).booleanValue();
        Range range = (Range) pairM1081to.component2();
        boolean z4 = videoStabilization == VideoStabilization.PREVIEW;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "getSuggestedStreamSpecifications: isPreviewStabilizationSupported = " + this.isPreviewStabilizationSupported + ", isFeatureComboInvocation = " + z2);
        }
        if (z4 && !this.isPreviewStabilizationSupported && z2) {
            throw new IllegalArgumentException("Preview stabilization is not supported by the camera.");
        }
        Intrinsics.checkNotNull(range);
        return resolveSpecsByCheckingMethod(getCheckingMethod(mapResolveAndValidateDynamicRanges.values(), range, videoStabilization, zIsUltraHdrOn, z2), createFeatureSettings(i, z, mapResolveAndValidateDynamicRanges, videoStabilization, zIsUltraHdrOn, zIsHighSpeedOn, z2, false, range, zBooleanValue), attachedSurfaces, map2, list, useCasesPriorityOrder, mapResolveAndValidateDynamicRanges, z3);
    }

    private final SurfaceStreamSpecQueryResult resolveSpecsByCheckingMethod(CheckingMethod checkingMethod, FeatureSettings featureSettings, List list, Map map, List list2, List list3, Map map2, boolean z) {
        CheckingMethod checkingMethod2;
        Range targetFpsRange;
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            String str = Camera2Logger.TRUNCATED_TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("resolveSpecsByCheckingMethod: checkingMethod = ");
            checkingMethod2 = checkingMethod;
            sb.append(checkingMethod2);
            Log.d(str, sb.toString());
        } else {
            checkingMethod2 = checkingMethod;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[checkingMethod2.ordinal()];
        if (i == 1) {
            return resolveSpecsBySettings(validateSelf(FeatureSettings.copy$default(featureSettings, 0, 0, false, null, false, false, false, false, null, false, 895, null)), list, map, list2, list3, map2, z);
        }
        if (i == 2) {
            if (featureSettings.isFeatureComboInvocation() && featureSettings.getTargetFpsRange() == StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED && featureSettings.getRequiresFeatureComboQuery()) {
                targetFpsRange = FpsRangeFeature.DEFAULT_FPS_RANGE;
            } else {
                targetFpsRange = featureSettings.getTargetFpsRange();
            }
            return resolveSpecsBySettings(validateSelf(FeatureSettings.copy$default(featureSettings, 0, 0, false, null, false, false, false, true, targetFpsRange, false, 639, null)), list, map, list2, list3, map2, z);
        }
        if (i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        try {
            return resolveSpecsBySettings(validateSelf(FeatureSettings.copy$default(featureSettings, 0, 0, false, null, false, false, false, false, null, false, 895, null)), list, map, list2, list3, map2, z);
        } catch (IllegalArgumentException e) {
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Failed to find a supported combination without feature combo, trying again with feature combo", e);
            }
            return resolveSpecsBySettings(validateSelf(FeatureSettings.copy$default(featureSettings, 0, 0, false, null, false, false, false, true, null, false, 895, null)), list, map, list2, list3, map2, z);
        }
    }

    private final SurfaceStreamSpecQueryResult resolveSpecsBySettings(FeatureSettings featureSettings, List list, Map map, List list2, List list3, Map map2, boolean z) {
        LinkedHashMap linkedHashMap;
        LinkedHashMap linkedHashMap2;
        List orderedSurfaceConfigListForStreamUseCase;
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "resolveSpecsBySettings: featureSettings = " + featureSettings);
        }
        if (!featureSettings.isFeatureComboInvocation() && !isUseCasesCombinationSupported(featureSettings, list, map)) {
            throw new IllegalArgumentException(("No supported surface combination is found for camera device - Id : " + this.cameraId + ". May be attempting to bind too many use cases. Existing surfaces: " + list + ". New configs: " + list2 + ". GroupableFeature settings: " + featureSettings + '.').toString());
        }
        List supportedOutputSizesList = getSupportedOutputSizesList(filterSupportedSizes$camera_camera2(map, featureSettings, z), list2, list3);
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        List sizeArrangements = featureSettings.isHighSpeedOn() ? this.highSpeedResolver.getSizeArrangements(supportedOutputSizesList) : getAllPossibleSizeArrangements(supportedOutputSizesList);
        boolean zContainsZslUseCase = StreamUseCaseUtil.INSTANCE.containsZslUseCase(list, list2);
        if (!this.isStreamUseCaseSupported || zContainsZslUseCase) {
            linkedHashMap = linkedHashMap3;
            linkedHashMap2 = linkedHashMap4;
            orderedSurfaceConfigListForStreamUseCase = null;
        } else {
            orderedSurfaceConfigListForStreamUseCase = getOrderedSurfaceConfigListForStreamUseCase(sizeArrangements, list, list2, list3, featureSettings, linkedHashMap3, linkedHashMap4);
            linkedHashMap = linkedHashMap3;
            linkedHashMap2 = linkedHashMap4;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "orderedSurfaceConfigListForStreamUseCase = " + orderedSurfaceConfigListForStreamUseCase);
            }
        }
        List list4 = orderedSurfaceConfigListForStreamUseCase;
        BestSizesAndMaxFpsForConfigs bestSizesAndMaxFpsForConfigsFindBestSizesAndFps = findBestSizesAndFps(sizeArrangements, list, list2, getMaxSupportedFpsFromAttachedSurfaces(list, featureSettings.isHighSpeedOn()), list3, featureSettings, list4, map2, z);
        if (bestSizesAndMaxFpsForConfigsFindBestSizesAndFps != null) {
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "resolveSpecsBySettings: bestSizesAndFps = " + bestSizesAndMaxFpsForConfigsFindBestSizesAndFps);
            }
            Map mapGenerateSuggestedStreamSpecMap = generateSuggestedStreamSpecMap(bestSizesAndMaxFpsForConfigsFindBestSizesAndFps, list2, list3, map2, featureSettings);
            LinkedHashMap linkedHashMap5 = new LinkedHashMap();
            populateStreamUseCaseIfSameSavedSizes(bestSizesAndMaxFpsForConfigsFindBestSizesAndFps, list4, list, linkedHashMap5, mapGenerateSuggestedStreamSpecMap, linkedHashMap, linkedHashMap2);
            return new SurfaceStreamSpecQueryResult(mapGenerateSuggestedStreamSpecMap, linkedHashMap5, bestSizesAndMaxFpsForConfigsFindBestSizesAndFps.getMaxFpsForAllSizes());
        }
        throw new IllegalArgumentException(("No supported surface combination is found for camera device - Id : " + this.cameraId + " and Hardware level: " + this.hardwareLevel + ". May be the specified resolution is too large and not supported. Existing surfaces: " + list + ". New configs: " + list2 + '.').toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0028  */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final CheckingMethod getCheckingMethod(Collection collection, Range range, VideoStabilization videoStabilization, boolean z, boolean z2) {
        int i;
        if (!z2) {
            return CheckingMethod.WITHOUT_FEATURE_COMBO;
        }
        ?? Contains = collection.contains(DynamicRange.HLG_10_BIT);
        int i2 = Contains;
        if (range != null) {
            Integer num = (Integer) range.getUpper();
            i2 = Contains;
            if (num != null) {
                i2 = Contains;
                if (num.intValue() == 60) {
                    i2 = Contains + 1;
                }
            }
        }
        if (videoStabilization != VideoStabilization.f25ON) {
            i = i2;
            if (videoStabilization == VideoStabilization.PREVIEW) {
                i = i2 + 1;
            }
        }
        if (z) {
            i++;
        }
        if (i > 1) {
            return CheckingMethod.WITH_FEATURE_COMBO;
        }
        if (i == 1) {
            return CheckingMethod.WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT;
        }
        return CheckingMethod.WITHOUT_FEATURE_COMBO;
    }

    private final FeatureSettings createFeatureSettings(int i, boolean z, Map map, VideoStabilization videoStabilization, boolean z2, boolean z3, boolean z4, boolean z5, Range range, boolean z6) {
        return validateSelf(new FeatureSettings(i, getRequiredMaxBitDepth(map), z, videoStabilization, z2, z3, z4, z5, range, z6));
    }

    private final FeatureSettings validateSelf(FeatureSettings featureSettings) {
        if (featureSettings.getCameraMode() != 0 && featureSettings.isUltraHdrOn()) {
            throw new IllegalArgumentException(("Camera device Id is " + this.cameraId + ". Ultra HDR is not currently supported in " + CameraMode.toLabelString(featureSettings.getCameraMode()) + " camera mode.").toString());
        }
        if (featureSettings.getCameraMode() != 0 && featureSettings.getRequiredMaxBitDepth() == 10) {
            throw new IllegalArgumentException(("Camera device Id is " + this.cameraId + ". 10 bit dynamic range is not currently supported in " + CameraMode.toLabelString(featureSettings.getCameraMode()) + " camera mode.").toString());
        }
        if (featureSettings.getCameraMode() != 0 && featureSettings.isFeatureComboInvocation()) {
            throw new IllegalArgumentException(("Camera device Id is " + this.cameraId + ". feature combination is not currently supported in " + CameraMode.toLabelString(featureSettings.getCameraMode()) + " camera mode.").toString());
        }
        if (featureSettings.isHighSpeedOn() && featureSettings.isFeatureComboInvocation()) {
            throw new IllegalArgumentException("High-speed session is not supported with feature combination");
        }
        if (!featureSettings.isHighSpeedOn() || this.highSpeedResolver.isHighSpeedSupported()) {
            return featureSettings;
        }
        throw new IllegalArgumentException("High-speed session is not supported on this device.");
    }

    private final boolean isUseCasesCombinationSupported(FeatureSettings featureSettings, List list, Map map) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            SurfaceConfig surfaceConfig = ((AttachedSurfaceInfo) it.next()).getSurfaceConfig();
            Intrinsics.checkNotNullExpressionValue(surfaceConfig, "getSurfaceConfig(...)");
            arrayList.add(surfaceConfig);
        }
        CompareSizesByArea compareSizesByArea = new CompareSizesByArea();
        for (UseCaseConfig useCaseConfig : map.keySet()) {
            List list2 = (List) map.get(useCaseConfig);
            if (list2 == null || list2.isEmpty()) {
                throw new IllegalArgumentException(("No available output size is found for " + useCaseConfig + '.').toString());
            }
            Size size = (Size) Collections.min(list2, compareSizesByArea);
            int inputFormat = useCaseConfig.getInputFormat();
            StreamUseCase streamUseCase = useCaseConfig.getStreamUseCase();
            Intrinsics.checkNotNullExpressionValue(streamUseCase, "getStreamUseCase(...)");
            SurfaceConfig.Companion companion = SurfaceConfig.Companion;
            Intrinsics.checkNotNull(size);
            arrayList.add(companion.transformSurfaceConfig(inputFormat, size, getUpdatedSurfaceSizeDefinitionByFormat(inputFormat), featureSettings.getCameraMode(), SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES, streamUseCase));
        }
        return checkSupported$default(this, featureSettings, arrayList, null, null, null, 28, null);
    }

    private final List getOrderedSurfaceConfigListForStreamUseCase(List list, List list2, List list3, List list4, FeatureSettings featureSettings, Map map, Map map2) {
        Iterator it = list.iterator();
        List orderedSupportedStreamUseCaseSurfaceConfigList = null;
        while (it.hasNext()) {
            orderedSupportedStreamUseCaseSurfaceConfigList = getOrderedSupportedStreamUseCaseSurfaceConfigList(featureSettings, getSurfaceConfigList(featureSettings.getCameraMode(), list2, (List) it.next(), list3, list4, map, map2, false), map, map2);
            if (orderedSupportedStreamUseCaseSurfaceConfigList != null) {
                return orderedSupportedStreamUseCaseSurfaceConfigList;
            }
            map.clear();
            map2.clear();
        }
        return orderedSupportedStreamUseCaseSurfaceConfigList;
    }

    private final void populateStreamUseCaseIfSameSavedSizes(BestSizesAndMaxFpsForConfigs bestSizesAndMaxFpsForConfigs, List list, List list2, Map map, Map map2, Map map3, Map map4) {
        if (list == null || bestSizesAndMaxFpsForConfigs.getMaxFpsForBestSizes() != bestSizesAndMaxFpsForConfigs.getMaxFpsForStreamUseCase()) {
            return;
        }
        int size = bestSizesAndMaxFpsForConfigs.getBestSizes().size();
        List bestSizesForStreamUseCase = bestSizesAndMaxFpsForConfigs.getBestSizesForStreamUseCase();
        Intrinsics.checkNotNull(bestSizesForStreamUseCase);
        if (size == bestSizesForStreamUseCase.size()) {
            List<Pair> listZip = CollectionsKt.zip(bestSizesAndMaxFpsForConfigs.getBestSizes(), bestSizesAndMaxFpsForConfigs.getBestSizesForStreamUseCase());
            if (!(listZip instanceof Collection) || !listZip.isEmpty()) {
                for (Pair pair : listZip) {
                    if (!Intrinsics.areEqual(pair.getFirst(), pair.getSecond())) {
                        return;
                    }
                }
            }
            StreamUseCaseUtil streamUseCaseUtil = StreamUseCaseUtil.INSTANCE;
            if (streamUseCaseUtil.populateStreamUseCaseStreamSpecOptionWithInteropOverride(this.cameraMetadata, list2, map2, map)) {
                return;
            }
            streamUseCaseUtil.populateStreamUseCaseStreamSpecOptionWithSupportedSurfaceConfigs(map2, map, map3, map4, list);
        }
    }

    private final List getSupportedOutputSizesList(Map map, List list, List list2) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            Object obj = map.get(list.get(iIntValue));
            Intrinsics.checkNotNull(obj);
            arrayList.add(applyResolutionSelectionOrderRelatedWorkarounds((List) obj, ((UseCaseConfig) list.get(iIntValue)).getInputFormat()));
        }
        return arrayList;
    }

    private final Range getTargetFpsRange(List list, List list2, List list3, boolean z) {
        Range FRAME_RATE_RANGE_UNSPECIFIED = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        Intrinsics.checkNotNullExpressionValue(FRAME_RATE_RANGE_UNSPECIFIED, "FRAME_RATE_RANGE_UNSPECIFIED");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Range targetFrameRate = ((AttachedSurfaceInfo) it.next()).getTargetFrameRate();
            Intrinsics.checkNotNullExpressionValue(targetFrameRate, "getTargetFrameRate(...)");
            FRAME_RATE_RANGE_UNSPECIFIED = getUpdatedTargetFrameRate(targetFrameRate, FRAME_RATE_RANGE_UNSPECIFIED, z);
        }
        Iterator it2 = list3.iterator();
        while (it2.hasNext()) {
            Range targetFrameRate2 = ((UseCaseConfig) list2.get(((Number) it2.next()).intValue())).getTargetFrameRate(StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED);
            Intrinsics.checkNotNull(targetFrameRate2);
            FRAME_RATE_RANGE_UNSPECIFIED = getUpdatedTargetFrameRate(targetFrameRate2, FRAME_RATE_RANGE_UNSPECIFIED, z);
        }
        return FRAME_RATE_RANGE_UNSPECIFIED;
    }

    private final boolean isStrictFpsRequired(List list, List list2) {
        Iterator it = list.iterator();
        Boolean boolValueOf = null;
        while (it.hasNext()) {
            boolValueOf = Boolean.valueOf(getAndValidateIsStrictFpsRequired(((AttachedSurfaceInfo) it.next()).isStrictFrameRateRequired(), boolValueOf));
        }
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            boolValueOf = Boolean.valueOf(getAndValidateIsStrictFpsRequired(((UseCaseConfig) it2.next()).isStrictFrameRateRequired(), boolValueOf));
        }
        if (boolValueOf != null) {
            return boolValueOf.booleanValue();
        }
        return false;
    }

    private final int getMaxSupportedFpsFromAttachedSurfaces(List list, boolean z) {
        Iterator it = list.iterator();
        int combinedMaximumFps = Integer.MAX_VALUE;
        while (it.hasNext()) {
            AttachedSurfaceInfo attachedSurfaceInfo = (AttachedSurfaceInfo) it.next();
            int imageFormat = attachedSurfaceInfo.getImageFormat();
            Size size = attachedSurfaceInfo.getSize();
            Intrinsics.checkNotNullExpressionValue(size, "getSize(...)");
            combinedMaximumFps = getCombinedMaximumFps(combinedMaximumFps, imageFormat, size, z, attachedSurfaceInfo.getCustomMaxFrameRate());
        }
        return combinedMaximumFps;
    }

    public final Map filterSupportedSizes$camera_camera2(Map newUseCaseConfigsSupportedSizeMap, FeatureSettings featureSettings, boolean z) {
        Intrinsics.checkNotNullParameter(newUseCaseConfigsSupportedSizeMap, "newUseCaseConfigsSupportedSizeMap");
        Intrinsics.checkNotNullParameter(featureSettings, "featureSettings");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (UseCaseConfig useCaseConfig : newUseCaseConfigsSupportedSizeMap.keySet()) {
            ArrayList arrayList = new ArrayList();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            Object obj = newUseCaseConfigsSupportedSizeMap.get(useCaseConfig);
            Intrinsics.checkNotNull(obj);
            for (Size size : (List) obj) {
                int inputFormat = useCaseConfig.getInputFormat();
                int customMaxFrameRate = useCaseConfig.getCustomMaxFrameRate(size);
                StreamUseCase streamUseCase = useCaseConfig.getStreamUseCase();
                Intrinsics.checkNotNullExpressionValue(streamUseCase, "getStreamUseCase(...)");
                populateReducedSizeListAndUniqueMaxFpsMap(featureSettings, size, inputFormat, customMaxFrameRate, streamUseCase, z, linkedHashMap2, arrayList);
            }
            linkedHashMap.put(useCaseConfig, arrayList);
        }
        return linkedHashMap;
    }

    private final void populateReducedSizeListAndUniqueMaxFpsMap(FeatureSettings featureSettings, Size size, int i, int i2, StreamUseCase streamUseCase, boolean z, Map map, List list) {
        SurfaceConfig.ConfigSource configSource;
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
        SurfaceSizeDefinition updatedSurfaceSizeDefinitionByFormat = getUpdatedSurfaceSizeDefinitionByFormat(i);
        int cameraMode = featureSettings.getCameraMode();
        if (featureSettings.getRequiresFeatureComboQuery()) {
            configSource = SurfaceConfig.ConfigSource.FEATURE_COMBINATION_TABLE;
        } else {
            configSource = SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES;
        }
        SurfaceConfig.ConfigSize configSize = companion.transformSurfaceConfig(i, size, updatedSurfaceSizeDefinitionByFormat, cameraMode, configSource, streamUseCase).getConfigSize();
        Range targetFpsRange = featureSettings.getTargetFpsRange();
        Range range = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        int maxFrameRate = (!Intrinsics.areEqual(targetFpsRange, range) || z) ? getMaxFrameRate(i, size, featureSettings.isHighSpeedOn(), i2) : Integer.MAX_VALUE;
        if (featureSettings.isFeatureComboInvocation()) {
            if (configSize == SurfaceConfig.ConfigSize.NOT_SUPPORT) {
                return;
            }
            if (!Intrinsics.areEqual(featureSettings.getTargetFpsRange(), range) && maxFrameRate < ((Number) featureSettings.getTargetFpsRange().getUpper()).intValue()) {
                return;
            }
        }
        Set linkedHashSet = (Set) map.get(configSize);
        if (linkedHashSet == null) {
            linkedHashSet = new LinkedHashSet();
            map.put(configSize, linkedHashSet);
        }
        if (linkedHashSet.contains(Integer.valueOf(maxFrameRate))) {
            return;
        }
        list.add(size);
        linkedHashSet.add(Integer.valueOf(maxFrameRate));
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x010f A[PHI: r14 r15 r17
  0x010f: PHI (r14v3 int) = (r14v1 int), (r14v1 int), (r14v5 int), (r14v6 int) binds: [B:33:0x00ec, B:35:0x00f2, B:41:0x00ff, B:45:0x010b] A[DONT_GENERATE, DONT_INLINE]
  0x010f: PHI (r15v2 boolean) = (r15v1 boolean), (r15v1 boolean), (r15v1 boolean), (r15v3 boolean) binds: [B:33:0x00ec, B:35:0x00f2, B:41:0x00ff, B:45:0x010b] A[DONT_GENERATE, DONT_INLINE]
  0x010f: PHI (r17v3 java.util.List) = (r17v1 java.util.List), (r17v1 java.util.List), (r17v5 java.util.List), (r17v6 java.util.List) binds: [B:33:0x00ec, B:35:0x00f2, B:41:0x00ff, B:45:0x010b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x013b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final BestSizesAndMaxFpsForConfigs findBestSizesAndFps(List list, List list2, final List list3, int i, final List list4, final FeatureSettings featureSettings, List list5, Map map, boolean z) {
        FeatureSettings featureSettings2;
        int i2;
        BestSizesAndMaxFpsForConfigs bestSizesAndMaxFpsForConfigs;
        DynamicRange dynamicRange;
        DynamicRange dynamicRange2;
        Iterator it = list.iterator();
        int i3 = Integer.MAX_VALUE;
        int i4 = Integer.MAX_VALUE;
        int i5 = Integer.MAX_VALUE;
        boolean z2 = false;
        boolean z3 = false;
        List list6 = null;
        List list7 = null;
        while (true) {
            if (!it.hasNext()) {
                featureSettings2 = featureSettings;
                i2 = i3;
                bestSizesAndMaxFpsForConfigs = null;
                break;
            }
            List list8 = (List) it.next();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            i2 = i3;
            bestSizesAndMaxFpsForConfigs = null;
            final List surfaceConfigList = getSurfaceConfigList(featureSettings.getCameraMode(), list2, list8, list3, list4, linkedHashMap, linkedHashMap2, featureSettings.getRequiresFeatureComboQuery());
            int currentConfigFrameRateCeiling = getCurrentConfigFrameRateCeiling(list8, list3, list4, i, featureSettings.isHighSpeedOn());
            boolean zIsConfigFrameRateAcceptable = isConfigFrameRateAcceptable(i, featureSettings.getTargetFpsRange(), currentConfigFrameRateCeiling);
            final LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            int i6 = 0;
            for (Object obj : surfaceConfigList) {
                int i7 = i6 + 1;
                if (i6 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                SurfaceConfig surfaceConfig = (SurfaceConfig) obj;
                AttachedSurfaceInfo attachedSurfaceInfo = (AttachedSurfaceInfo) linkedHashMap.get(Integer.valueOf(i6));
                if (attachedSurfaceInfo == null || (dynamicRange2 = attachedSurfaceInfo.getDynamicRange()) == null) {
                    Object obj2 = map.get(linkedHashMap2.get(Integer.valueOf(i6)));
                    if (obj2 == null) {
                        throw new IllegalArgumentException("Required value was null.");
                    }
                    dynamicRange = (DynamicRange) obj2;
                } else {
                    dynamicRange = dynamicRange2;
                }
                linkedHashMap3.put(surfaceConfig, dynamicRange);
                i6 = i7;
            }
            Iterator it2 = it;
            Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, new Function0() { // from class: androidx.camera.camera2.adapter.SupportedSurfaceCombination$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Boolean.valueOf(this.f$0.checkSupported(featureSettings, surfaceConfigList, linkedHashMap3, list3, list4));
                }
            });
            if (z && findBestSizesAndFps$lambda$2(lazy) && (i4 == Integer.MAX_VALUE || i4 < currentConfigFrameRateCeiling)) {
                i4 = currentConfigFrameRateCeiling;
            }
            if (!z2 && findBestSizesAndFps$lambda$2(lazy)) {
                if (i5 == Integer.MAX_VALUE || i5 < currentConfigFrameRateCeiling) {
                    i5 = currentConfigFrameRateCeiling;
                    list6 = list8;
                }
                if (zIsConfigFrameRateAcceptable) {
                    if (z3 && !z) {
                        featureSettings2 = featureSettings;
                        i5 = currentConfigFrameRateCeiling;
                        list6 = list8;
                        break;
                    }
                    z2 = true;
                    i5 = currentConfigFrameRateCeiling;
                    list6 = list8;
                    if (list5 == null) {
                        i3 = i2;
                    }
                    it = it2;
                }
            } else {
                if (list5 == null && !z3) {
                    featureSettings2 = featureSettings;
                    if (getOrderedSupportedStreamUseCaseSurfaceConfigList(featureSettings2, surfaceConfigList, linkedHashMap, linkedHashMap2) != null) {
                        if (i2 == Integer.MAX_VALUE || i2 < currentConfigFrameRateCeiling) {
                            i2 = currentConfigFrameRateCeiling;
                            list7 = list8;
                        }
                        if (zIsConfigFrameRateAcceptable) {
                            if (z2 && !z) {
                                i2 = currentConfigFrameRateCeiling;
                                list7 = list8;
                                break;
                            }
                            z3 = true;
                            i3 = currentConfigFrameRateCeiling;
                            list7 = list8;
                        }
                    }
                    it = it2;
                }
                i3 = i2;
                it = it2;
            }
        }
        return list6 == null ? bestSizesAndMaxFpsForConfigs : (!featureSettings2.isFeatureComboInvocation() || Intrinsics.areEqual(featureSettings2.getTargetFpsRange(), StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED) || (i5 != Integer.MAX_VALUE && i5 >= ((Number) featureSettings2.getTargetFpsRange().getUpper()).intValue())) ? new BestSizesAndMaxFpsForConfigs(list6, list7, i5, i2, i4) : bestSizesAndMaxFpsForConfigs;
    }

    private static final boolean findBestSizesAndFps$lambda$2(Lazy lazy) {
        return ((Boolean) lazy.getValue()).booleanValue();
    }

    private final boolean isConfigFrameRateAcceptable(int i, Range range, int i2) {
        return Intrinsics.areEqual(range, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED) || i2 >= i || i2 >= ((Number) range.getUpper()).intValue();
    }

    private final Map generateSuggestedStreamSpecMap(BestSizesAndMaxFpsForConfigs bestSizesAndMaxFpsForConfigs, List list, List list2, Map map, FeatureSettings featureSettings) {
        Range[] frameRateRangesFor;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Range closestSupportedDeviceFrameRate = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        if (!Intrinsics.areEqual(featureSettings.getTargetFpsRange(), closestSupportedDeviceFrameRate)) {
            if (featureSettings.isHighSpeedOn()) {
                frameRateRangesFor = this.highSpeedResolver.getFrameRateRangesFor(bestSizesAndMaxFpsForConfigs.getBestSizes());
            } else {
                CameraMetadata cameraMetadata = this.cameraMetadata;
                CameraCharacteristics.Key CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES = CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES;
                Intrinsics.checkNotNullExpressionValue(CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES, "CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES");
                frameRateRangesFor = (Range[]) cameraMetadata.get(CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
            }
            Range closestSupportedDeviceFrameRate2 = getClosestSupportedDeviceFrameRate(featureSettings.getTargetFpsRange(), bestSizesAndMaxFpsForConfigs.getMaxFpsForBestSizes(), frameRateRangesFor);
            if ((featureSettings.isFeatureComboInvocation() || featureSettings.isStrictFpsRequired()) && !Intrinsics.areEqual(closestSupportedDeviceFrameRate2, featureSettings.getTargetFpsRange())) {
                StringBuilder sb = new StringBuilder();
                sb.append("Target FPS range ");
                sb.append(featureSettings.getTargetFpsRange());
                sb.append(" is not supported. Max FPS supported by the calculated best combination: ");
                sb.append(bestSizesAndMaxFpsForConfigs.getMaxFpsForBestSizes());
                sb.append(". Calculated best FPS range for device: ");
                sb.append(closestSupportedDeviceFrameRate2);
                sb.append(". Device supported FPS ranges: ");
                String string = Arrays.toString(frameRateRangesFor);
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                sb.append(string);
                sb.append('.');
                throw new IllegalArgumentException(sb.toString().toString());
            }
            closestSupportedDeviceFrameRate = closestSupportedDeviceFrameRate2;
        } else if (featureSettings.isHighSpeedOn()) {
            closestSupportedDeviceFrameRate = getClosestSupportedDeviceFrameRate(HighSpeedResolver.Companion.getDEFAULT_FPS(), bestSizesAndMaxFpsForConfigs.getMaxFpsForBestSizes(), this.highSpeedResolver.getFrameRateRangesFor(bestSizesAndMaxFpsForConfigs.getBestSizes()));
        }
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            int i2 = i + 1;
            UseCaseConfig useCaseConfig = (UseCaseConfig) it.next();
            StreamSpec.Builder sessionType = StreamSpec.builder((Size) bestSizesAndMaxFpsForConfigs.getBestSizes().get(list2.indexOf(Integer.valueOf(i)))).setSessionType(featureSettings.isHighSpeedOn() ? 1 : 0);
            Object obj = map.get(useCaseConfig);
            if (obj == null) {
                throw new IllegalStateException("Required value was null.");
            }
            StreamSpec.Builder zslDisabled = sessionType.setDynamicRange((DynamicRange) obj).setImplementationOptions(StreamUseCaseUtil.INSTANCE.getStreamSpecImplementationOptions(useCaseConfig)).setZslDisabled(featureSettings.getHasVideoCapture());
            Intrinsics.checkNotNullExpressionValue(zslDisabled, "setZslDisabled(...)");
            if (!Intrinsics.areEqual(closestSupportedDeviceFrameRate, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED)) {
                zslDisabled.setExpectedFrameRateRange(closestSupportedDeviceFrameRate);
            }
            linkedHashMap.put(useCaseConfig, zslDisabled.build());
            i = i2;
        }
        return linkedHashMap;
    }

    private final int getRequiredMaxBitDepth(Map map) {
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            if (((DynamicRange) it.next()).getBitDepth() == 10) {
                return 10;
            }
        }
        return 8;
    }

    private final List getSurfaceConfigList(int i, List list, List list2, List list3, List list4, Map map, Map map2, boolean z) {
        SurfaceConfig.ConfigSource configSource;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AttachedSurfaceInfo attachedSurfaceInfo = (AttachedSurfaceInfo) it.next();
            SurfaceConfig surfaceConfig = attachedSurfaceInfo.getSurfaceConfig();
            Intrinsics.checkNotNullExpressionValue(surfaceConfig, "getSurfaceConfig(...)");
            arrayList.add(surfaceConfig);
            if (map != null) {
                map.put(Integer.valueOf(arrayList.size() - 1), attachedSurfaceInfo);
            }
        }
        Iterator it2 = list2.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            int i3 = i2 + 1;
            Size size = (Size) it2.next();
            UseCaseConfig useCaseConfig = (UseCaseConfig) list3.get(((Number) list4.get(i2)).intValue());
            int inputFormat = useCaseConfig.getInputFormat();
            StreamUseCase streamUseCase = useCaseConfig.getStreamUseCase();
            Intrinsics.checkNotNullExpressionValue(streamUseCase, "getStreamUseCase(...)");
            SurfaceConfig.Companion companion = SurfaceConfig.Companion;
            SurfaceSizeDefinition updatedSurfaceSizeDefinitionByFormat = getUpdatedSurfaceSizeDefinitionByFormat(inputFormat);
            if (z) {
                configSource = SurfaceConfig.ConfigSource.FEATURE_COMBINATION_TABLE;
            } else {
                configSource = SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES;
            }
            arrayList.add(companion.transformSurfaceConfig(inputFormat, size, updatedSurfaceSizeDefinitionByFormat, i, configSource, streamUseCase));
            if (map2 != null) {
                map2.put(Integer.valueOf(arrayList.size() - 1), useCaseConfig);
            }
            i2 = i3;
        }
        return arrayList;
    }

    private final int getCurrentConfigFrameRateCeiling(List list, List list2, List list3, int i, boolean z) {
        Iterator it = list.iterator();
        int i2 = 0;
        int combinedMaximumFps = i;
        while (it.hasNext()) {
            int i3 = i2 + 1;
            Size size = (Size) it.next();
            UseCaseConfig useCaseConfig = (UseCaseConfig) list2.get(((Number) list3.get(i2)).intValue());
            combinedMaximumFps = getCombinedMaximumFps(combinedMaximumFps, useCaseConfig.getInputFormat(), size, z, useCaseConfig.getCustomMaxFrameRate(size));
            i2 = i3;
        }
        return combinedMaximumFps;
    }

    private final int getMaxFrameRate(int i, Size size, boolean z, int i2) {
        int maxFrameRate;
        if (!z) {
            maxFrameRate = getMaxFrameRate(i, size);
        } else {
            if (i != 34) {
                throw new IllegalStateException("Check failed.");
            }
            maxFrameRate = this.highSpeedResolver.getMaxFrameRate(size);
        }
        return Math.min(i2, maxFrameRate);
    }

    private final int getMaxFrameRate(int i, Size size) {
        long outputMinFrameDuration = getStreamConfigurationMapCompat().getOutputMinFrameDuration(i, size);
        if (outputMinFrameDuration > 0) {
            return (int) (1.0E9d / outputMinFrameDuration);
        }
        if (!this.isManualSensorSupported) {
            return Integer.MAX_VALUE;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (!Logger.isWarnEnabled("CXCP")) {
            return 0;
        }
        Log.w(Camera2Logger.TRUNCATED_TAG, "minFrameDuration: " + outputMinFrameDuration + " is invalid for imageFormat = " + i + ", size = " + size);
        return 0;
    }

    private final int getRangeLength(Range range) {
        int iIntValue = ((Number) range.getUpper()).intValue();
        Object lower = range.getLower();
        Intrinsics.checkNotNullExpressionValue(lower, "getLower(...)");
        return (iIntValue - ((Number) lower).intValue()) + 1;
    }

    private final int getRangeDistance(Range range, Range range2) {
        if (range.contains(range2.getUpper()) || range.contains(range2.getLower())) {
            throw new IllegalArgumentException("Ranges must not intersect");
        }
        if (((Number) range.getLower()).intValue() > ((Number) range2.getUpper()).intValue()) {
            int iIntValue = ((Number) range.getLower()).intValue();
            Object upper = range2.getUpper();
            Intrinsics.checkNotNullExpressionValue(upper, "getUpper(...)");
            return iIntValue - ((Number) upper).intValue();
        }
        int iIntValue2 = ((Number) range2.getLower()).intValue();
        Object upper2 = range.getUpper();
        Intrinsics.checkNotNullExpressionValue(upper2, "getUpper(...)");
        return iIntValue2 - ((Number) upper2).intValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0064 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0065 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final Range compareIntersectingRanges(Range range, Range range2, Range range3) {
        Range rangeIntersect = range2.intersect(range);
        Intrinsics.checkNotNullExpressionValue(rangeIntersect, "intersect(...)");
        double rangeLength = getRangeLength(rangeIntersect);
        Range rangeIntersect2 = range3.intersect(range);
        Intrinsics.checkNotNullExpressionValue(rangeIntersect2, "intersect(...)");
        double rangeLength2 = getRangeLength(rangeIntersect2);
        double rangeLength3 = rangeLength2 / ((double) getRangeLength(range3));
        double rangeLength4 = rangeLength / ((double) getRangeLength(range2));
        if (rangeLength2 > rangeLength) {
            return (rangeLength3 >= 0.5d || rangeLength3 >= rangeLength4) ? range3 : range2;
        }
        if (rangeLength2 == rangeLength) {
            if (rangeLength3 <= rangeLength4 && (rangeLength3 != rangeLength4 || ((Number) range3.getLower()).intValue() <= ((Number) range2.getLower()).intValue())) {
            }
        } else if (rangeLength4 >= 0.5d || rangeLength3 <= rangeLength4) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00d7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final Range getClosestSupportedDeviceFrameRate(Range range, int i, Range[] rangeArr) {
        Range FRAME_RATE_RANGE_UNSPECIFIED = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        if (Intrinsics.areEqual(range, FRAME_RATE_RANGE_UNSPECIFIED)) {
            Intrinsics.checkNotNullExpressionValue(FRAME_RATE_RANGE_UNSPECIFIED, "FRAME_RATE_RANGE_UNSPECIFIED");
            return FRAME_RATE_RANGE_UNSPECIFIED;
        }
        if (rangeArr == null) {
            Intrinsics.checkNotNullExpressionValue(FRAME_RATE_RANGE_UNSPECIFIED, "FRAME_RATE_RANGE_UNSPECIFIED");
            return FRAME_RATE_RANGE_UNSPECIFIED;
        }
        Object lower = range.getLower();
        Intrinsics.checkNotNullExpressionValue(lower, "getLower(...)");
        Integer numValueOf = Integer.valueOf(Math.min(((Number) lower).intValue(), i));
        Object upper = range.getUpper();
        Intrinsics.checkNotNullExpressionValue(upper, "getUpper(...)");
        Range range2 = new Range(numValueOf, Integer.valueOf(Math.min(((Number) upper).intValue(), i)));
        int length = rangeArr.length;
        int i2 = 0;
        int rangeLength = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            Range range3 = rangeArr[i2];
            if (i >= ((Number) range3.getLower()).intValue()) {
                if (Intrinsics.areEqual(FRAME_RATE_RANGE_UNSPECIFIED, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED)) {
                    FRAME_RATE_RANGE_UNSPECIFIED = range3;
                }
                if (Intrinsics.areEqual(range3, range2)) {
                    FRAME_RATE_RANGE_UNSPECIFIED = range3;
                    break;
                }
                try {
                    Range rangeIntersect = range3.intersect(range2);
                    Intrinsics.checkNotNull(rangeIntersect);
                    int rangeLength2 = getRangeLength(rangeIntersect);
                    if (rangeLength == 0) {
                        FRAME_RATE_RANGE_UNSPECIFIED = range3;
                        rangeLength = rangeLength2;
                    } else if (rangeLength2 >= rangeLength) {
                        Intrinsics.checkNotNull(FRAME_RATE_RANGE_UNSPECIFIED);
                        FRAME_RATE_RANGE_UNSPECIFIED = compareIntersectingRanges(range2, FRAME_RATE_RANGE_UNSPECIFIED, range3);
                        Range rangeIntersect2 = range2.intersect(FRAME_RATE_RANGE_UNSPECIFIED);
                        Intrinsics.checkNotNullExpressionValue(rangeIntersect2, "intersect(...)");
                        rangeLength = getRangeLength(rangeIntersect2);
                    }
                } catch (IllegalArgumentException unused) {
                    if (rangeLength == 0) {
                        int rangeDistance = getRangeDistance(range3, range2);
                        Intrinsics.checkNotNull(FRAME_RATE_RANGE_UNSPECIFIED);
                        if (rangeDistance < getRangeDistance(FRAME_RATE_RANGE_UNSPECIFIED, range2)) {
                            FRAME_RATE_RANGE_UNSPECIFIED = range3;
                        } else {
                            int rangeDistance2 = getRangeDistance(range3, range2);
                            Intrinsics.checkNotNull(FRAME_RATE_RANGE_UNSPECIFIED);
                            if (rangeDistance2 == getRangeDistance(FRAME_RATE_RANGE_UNSPECIFIED, range2)) {
                                if (((Number) range3.getLower()).intValue() <= ((Number) FRAME_RATE_RANGE_UNSPECIFIED.getUpper()).intValue()) {
                                    int rangeLength3 = getRangeLength(range3);
                                    Intrinsics.checkNotNull(FRAME_RATE_RANGE_UNSPECIFIED);
                                    if (rangeLength3 < getRangeLength(FRAME_RATE_RANGE_UNSPECIFIED)) {
                                    }
                                }
                            }
                        }
                    }
                }
            }
            i2++;
        }
        Intrinsics.checkNotNull(FRAME_RATE_RANGE_UNSPECIFIED);
        return FRAME_RATE_RANGE_UNSPECIFIED;
    }

    private final Range getUpdatedTargetFrameRate(Range range, Range range2, boolean z) {
        Range FRAME_RATE_RANGE_UNSPECIFIED = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        if (Intrinsics.areEqual(range2, FRAME_RATE_RANGE_UNSPECIFIED) && Intrinsics.areEqual(range, FRAME_RATE_RANGE_UNSPECIFIED)) {
            Intrinsics.checkNotNullExpressionValue(FRAME_RATE_RANGE_UNSPECIFIED, "FRAME_RATE_RANGE_UNSPECIFIED");
            return FRAME_RATE_RANGE_UNSPECIFIED;
        }
        if (Intrinsics.areEqual(range2, FRAME_RATE_RANGE_UNSPECIFIED)) {
            return range;
        }
        if (!Intrinsics.areEqual(range, FRAME_RATE_RANGE_UNSPECIFIED)) {
            if (z) {
                Preconditions.checkState(Intrinsics.areEqual(range, range2), "All targetFrameRate should be the same if strict fps is required");
                return range;
            }
            try {
                Range rangeIntersect = range2.intersect(range);
                Intrinsics.checkNotNull(rangeIntersect);
                return rangeIntersect;
            } catch (IllegalArgumentException unused) {
            }
        }
        return range2;
    }

    private final boolean getAndValidateIsStrictFpsRequired(boolean z, Boolean bool) {
        if (bool == null || Intrinsics.areEqual(bool, Boolean.valueOf(z))) {
            return z;
        }
        throw new IllegalStateException("All isStrictFpsRequired should be the same");
    }

    private final int getCombinedMaximumFps(int i, int i2, Size size, boolean z, int i3) {
        return Math.min(i, getMaxFrameRate(i2, size, z, i3));
    }

    public final List applyResolutionSelectionOrderRelatedWorkarounds(List sizeList, int i) {
        Rational rational;
        List mutableList;
        Intrinsics.checkNotNullParameter(sizeList, "sizeList");
        int i2 = this.targetAspectRatio.get(this.cameraMetadata, this.streamConfigurationMapCompat);
        if (i2 == 0) {
            rational = AspectRatioUtil.ASPECT_RATIO_4_3;
        } else if (i2 != 1) {
            rational = null;
            if (i2 == 2) {
                Size maximumSize = getUpdatedSurfaceSizeDefinitionByFormat(256).getMaximumSize(256);
                if (maximumSize != null) {
                    rational = new Rational(maximumSize.getWidth(), maximumSize.getHeight());
                }
            } else if (i2 != 3) {
                throw new AssertionError("Undefined targetAspectRatio: " + this.targetAspectRatio);
            }
        } else {
            rational = AspectRatioUtil.ASPECT_RATIO_16_9;
        }
        if (rational == null) {
            mutableList = CollectionsKt.toMutableList((Collection) sizeList);
        } else {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            Iterator it = sizeList.iterator();
            while (it.hasNext()) {
                Size size = (Size) it.next();
                if (AspectRatioUtil.hasMatchingAspectRatio(size, rational)) {
                    arrayList.add(size);
                } else {
                    arrayList2.add(size);
                }
            }
            arrayList2.addAll(0, arrayList);
            mutableList = arrayList2;
        }
        return this.resolutionCorrector.insertOrPrioritize(SurfaceConfig.Companion.getConfigType(i), mutableList);
    }

    private final void refreshPreviewSize() {
        this.displayInfoManager.refreshPreviewSize();
        if (this.surfaceSizeDefinition == null) {
            generateSurfaceSizeDefinition();
            return;
        }
        SurfaceSizeDefinition surfaceSizeDefinitionCreate = SurfaceSizeDefinition.create(getSurfaceSizeDefinition$camera_camera2().getAnalysisSize(), getSurfaceSizeDefinition$camera_camera2().getS720pSizeMap(), this.displayInfoManager.getPreviewSize(), getSurfaceSizeDefinition$camera_camera2().getS1440pSizeMap(), getSurfaceSizeDefinition$camera_camera2().getRecordSize(), getSurfaceSizeDefinition$camera_camera2().getMaximumSizeMap(), getSurfaceSizeDefinition$camera_camera2().getMaximum4x3SizeMap(), getSurfaceSizeDefinition$camera_camera2().getMaximum16x9SizeMap(), getSurfaceSizeDefinition$camera_camera2().getUltraMaximumSizeMap());
        Intrinsics.checkNotNullExpressionValue(surfaceSizeDefinitionCreate, "create(...)");
        setSurfaceSizeDefinition$camera_camera2(surfaceSizeDefinitionCreate);
    }

    private final void checkCapabilities() {
        CameraMetadata cameraMetadata = this.cameraMetadata;
        CameraCharacteristics.Key REQUEST_AVAILABLE_CAPABILITIES = CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES;
        Intrinsics.checkNotNullExpressionValue(REQUEST_AVAILABLE_CAPABILITIES, "REQUEST_AVAILABLE_CAPABILITIES");
        int[] iArr = (int[]) cameraMetadata.get(REQUEST_AVAILABLE_CAPABILITIES);
        if (iArr != null) {
            this.isRawSupported = ArraysKt.contains(iArr, 3);
            this.isBurstCaptureSupported = ArraysKt.contains(iArr, 6);
            this.isUltraHighResolutionSensorSupported = ArraysKt.contains(iArr, 16);
            this.isManualSensorSupported = ArraysKt.contains(iArr, 1);
        }
    }

    private final void generateSupportedCombinationList() {
        this.surfaceCombinations.addAll(GuaranteedConfigurationsUtil.generateSupportedCombinationList(this.hardwareLevel, this.isRawSupported, this.isBurstCaptureSupported));
        this.surfaceCombinations.addAll(this.extraSupportedSurfaceCombinationsContainer.get(this.cameraId));
    }

    private final void generateUltraHighResolutionSupportedCombinationList() {
        this.ultraHighSurfaceCombinations.addAll(GuaranteedConfigurationsUtil.getUltraHighResolutionSupportedCombinationList());
    }

    private final void generateConcurrentSupportedCombinationList() {
        this.concurrentSurfaceCombinations.addAll(GuaranteedConfigurationsUtil.getConcurrentSupportedCombinationList());
    }

    private final void generatePreviewStabilizationSupportedCombinationList() {
        this.previewStabilizationSurfaceCombinations.addAll(GuaranteedConfigurationsUtil.getPreviewStabilizationSupportedCombinationList());
    }

    private final void generateHighSpeedSupportedCombinationList() {
        if (this.highSpeedResolver.isHighSpeedSupported()) {
            this.highSpeedSurfaceCombinations.clear();
            Size maxSize = this.highSpeedResolver.getMaxSize();
            if (maxSize != null) {
                this.highSpeedSurfaceCombinations.addAll(GuaranteedConfigurationsUtil.generateHighSpeedSupportedCombinationList(maxSize, getUpdatedSurfaceSizeDefinitionByFormat(34)));
            }
        }
    }

    private final void generate10BitSupportedCombinationList() {
        this.surfaceCombinations10Bit.addAll(GuaranteedConfigurationsUtil.get10BitSupportedCombinationList());
    }

    private final void generateUltraHdrSupportedCombinationList() {
        this.surfaceCombinationsUltraHdr.addAll(GuaranteedConfigurationsUtil.getUltraHdrSupportedCombinationList());
    }

    private final void generateStreamUseCaseSupportedCombinationList() {
        if (Build.VERSION.SDK_INT >= 33) {
            this.surfaceCombinationsStreamUseCase.addAll(GuaranteedConfigurationsUtil.INSTANCE.getStreamUseCaseSupportedCombinationList());
        }
    }

    private final void generateSurfaceSizeDefinition() {
        SurfaceSizeDefinition surfaceSizeDefinitionCreate = SurfaceSizeDefinition.create(SizeUtil.RESOLUTION_VGA, new LinkedHashMap(), this.displayInfoManager.getPreviewSize(), new LinkedHashMap(), getRecordSize(), new LinkedHashMap(), new LinkedHashMap(), new LinkedHashMap(), new LinkedHashMap());
        Intrinsics.checkNotNullExpressionValue(surfaceSizeDefinitionCreate, "create(...)");
        setSurfaceSizeDefinition$camera_camera2(surfaceSizeDefinitionCreate);
    }

    public final SurfaceSizeDefinition getUpdatedSurfaceSizeDefinitionByFormat(int i) {
        if (!this.surfaceSizeDefinitionFormats.contains(Integer.valueOf(i))) {
            Map s720pSizeMap = getSurfaceSizeDefinition$camera_camera2().getS720pSizeMap();
            Intrinsics.checkNotNullExpressionValue(s720pSizeMap, "getS720pSizeMap(...)");
            Size RESOLUTION_720P = SizeUtil.RESOLUTION_720P;
            Intrinsics.checkNotNullExpressionValue(RESOLUTION_720P, "RESOLUTION_720P");
            updateS720pOrS1440pSizeByFormat(s720pSizeMap, RESOLUTION_720P, i);
            Map s1440pSizeMap = getSurfaceSizeDefinition$camera_camera2().getS1440pSizeMap();
            Intrinsics.checkNotNullExpressionValue(s1440pSizeMap, "getS1440pSizeMap(...)");
            Size RESOLUTION_1440P = SizeUtil.RESOLUTION_1440P;
            Intrinsics.checkNotNullExpressionValue(RESOLUTION_1440P, "RESOLUTION_1440P");
            updateS720pOrS1440pSizeByFormat(s1440pSizeMap, RESOLUTION_1440P, i);
            Map maximumSizeMap = getSurfaceSizeDefinition$camera_camera2().getMaximumSizeMap();
            Intrinsics.checkNotNullExpressionValue(maximumSizeMap, "getMaximumSizeMap(...)");
            updateMaximumSizeByFormat$default(this, maximumSizeMap, i, null, 4, null);
            Map maximum4x3SizeMap = getSurfaceSizeDefinition$camera_camera2().getMaximum4x3SizeMap();
            Intrinsics.checkNotNullExpressionValue(maximum4x3SizeMap, "getMaximum4x3SizeMap(...)");
            updateMaximumSizeByFormat(maximum4x3SizeMap, i, AspectRatioUtil.ASPECT_RATIO_4_3);
            Map maximum16x9SizeMap = getSurfaceSizeDefinition$camera_camera2().getMaximum16x9SizeMap();
            Intrinsics.checkNotNullExpressionValue(maximum16x9SizeMap, "getMaximum16x9SizeMap(...)");
            updateMaximumSizeByFormat(maximum16x9SizeMap, i, AspectRatioUtil.ASPECT_RATIO_16_9);
            Map ultraMaximumSizeMap = getSurfaceSizeDefinition$camera_camera2().getUltraMaximumSizeMap();
            Intrinsics.checkNotNullExpressionValue(ultraMaximumSizeMap, "getUltraMaximumSizeMap(...)");
            updateUltraMaximumSizeByFormat(ultraMaximumSizeMap, i);
            this.surfaceSizeDefinitionFormats.add(Integer.valueOf(i));
        }
        return getSurfaceSizeDefinition$camera_camera2();
    }

    private final void updateS720pOrS1440pSizeByFormat(Map map, Size size, int i) {
        if (this.isConcurrentCameraModeSupported) {
            Size maxOutputSizeByFormat$camera_camera2$default = getMaxOutputSizeByFormat$camera_camera2$default(this, this.streamConfigurationMapCompat.toStreamConfigurationMap(), i, false, null, 8, null);
            Integer numValueOf = Integer.valueOf(i);
            if (maxOutputSizeByFormat$camera_camera2$default != null) {
                size = (Size) Collections.min(CollectionsKt.listOf((Object[]) new Size[]{size, maxOutputSizeByFormat$camera_camera2$default}), new CompareSizesByArea());
            }
            map.put(numValueOf, size);
        }
    }

    static /* synthetic */ void updateMaximumSizeByFormat$default(SupportedSurfaceCombination supportedSurfaceCombination, Map map, int i, Rational rational, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            rational = null;
        }
        supportedSurfaceCombination.updateMaximumSizeByFormat(map, i, rational);
    }

    private final void updateMaximumSizeByFormat(Map map, int i, Rational rational) {
        Size maxOutputSizeByFormat$camera_camera2 = getMaxOutputSizeByFormat$camera_camera2(this.streamConfigurationMapCompat.toStreamConfigurationMap(), i, true, rational);
        if (maxOutputSizeByFormat$camera_camera2 != null) {
            map.put(Integer.valueOf(i), maxOutputSizeByFormat$camera_camera2);
        }
    }

    private final void updateUltraMaximumSizeByFormat(Map map, int i) {
        Size maxOutputSizeByFormat$camera_camera2$default;
        if (Build.VERSION.SDK_INT < 31 || !this.isUltraHighResolutionSensorSupported) {
            return;
        }
        CameraMetadata cameraMetadata = this.cameraMetadata;
        CameraCharacteristics.Key SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION;
        Intrinsics.checkNotNullExpressionValue(SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION, "SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION");
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraMetadata.get(SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION);
        if (streamConfigurationMap == null || (maxOutputSizeByFormat$camera_camera2$default = getMaxOutputSizeByFormat$camera_camera2$default(this, streamConfigurationMap, i, true, null, 8, null)) == null) {
            return;
        }
        map.put(Integer.valueOf(i), maxOutputSizeByFormat$camera_camera2$default);
    }

    private final Size getRecordSize() {
        try {
            Integer.parseInt(this.cameraId);
            Size recordSizeFromCamcorderProfile = getRecordSizeFromCamcorderProfile();
            if (recordSizeFromCamcorderProfile != null) {
                return recordSizeFromCamcorderProfile;
            }
        } catch (NumberFormatException unused) {
        }
        Size recordSizeFromStreamConfigurationMapCompat = getRecordSizeFromStreamConfigurationMapCompat();
        if (recordSizeFromStreamConfigurationMapCompat != null) {
            return recordSizeFromStreamConfigurationMapCompat;
        }
        Size RESOLUTION_480P = SizeUtil.RESOLUTION_480P;
        Intrinsics.checkNotNullExpressionValue(RESOLUTION_480P, "RESOLUTION_480P");
        return RESOLUTION_480P;
    }

    private final StreamConfigurationMapCompat getStreamConfigurationMapCompat() {
        CameraMetadata cameraMetadata = this.cameraMetadata;
        CameraCharacteristics.Key SCALER_STREAM_CONFIGURATION_MAP = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP;
        Intrinsics.checkNotNullExpressionValue(SCALER_STREAM_CONFIGURATION_MAP, "SCALER_STREAM_CONFIGURATION_MAP");
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraMetadata.get(SCALER_STREAM_CONFIGURATION_MAP);
        if (streamConfigurationMap == null) {
            throw new IllegalArgumentException("Cannot retrieve SCALER_STREAM_CONFIGURATION_MAP");
        }
        return new StreamConfigurationMapCompat(streamConfigurationMap, new OutputSizesCorrector(this.cameraMetadata, streamConfigurationMap));
    }

    private final Size getRecordSizeFromStreamConfigurationMapCompat() {
        Object objM3604constructorimpl;
        StreamConfigurationMap streamConfigurationMap = this.streamConfigurationMapCompat.toStreamConfigurationMap();
        try {
            Result.Companion companion = Result.Companion;
            objM3604constructorimpl = Result.m3604constructorimpl(streamConfigurationMap != null ? streamConfigurationMap.getOutputSizes(MediaRecorder.class) : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM3604constructorimpl = Result.m3604constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m3608isFailureimpl(objM3604constructorimpl)) {
            objM3604constructorimpl = null;
        }
        Size[] sizeArr = (Size[]) objM3604constructorimpl;
        if (sizeArr == null) {
            return null;
        }
        Arrays.sort(sizeArr, new CompareSizesByArea(true));
        for (Size size : sizeArr) {
            int width = size.getWidth();
            Size size2 = SizeUtil.RESOLUTION_1080P;
            if (width <= size2.getWidth() && size.getHeight() <= size2.getHeight()) {
                return size;
            }
        }
        return null;
    }

    private final Size getRecordSizeFromCamcorderProfile() {
        EncoderProfilesProxy all;
        Iterator it = CollectionsKt.listOf((Object[]) new Integer[]{1, 13, 10, 8, 12, 6, 5, 4}).iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            if (this.encoderProfilesProvider.hasProfile(iIntValue) && (all = this.encoderProfilesProvider.getAll(iIntValue)) != null) {
                List videoProfiles = all.getVideoProfiles();
                Intrinsics.checkNotNullExpressionValue(videoProfiles, "getVideoProfiles(...)");
                if (!videoProfiles.isEmpty()) {
                    Object obj = all.getVideoProfiles().get(0);
                    Intrinsics.checkNotNull(obj);
                    return ((EncoderProfilesProxy.VideoProfileProxy) obj).getResolution();
                }
            }
        }
        return null;
    }

    private final List getUseCasesPriorityOrder(List list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            int surfaceOccupancyPriority = ((UseCaseConfig) it.next()).getSurfaceOccupancyPriority(0);
            if (!arrayList2.contains(Integer.valueOf(surfaceOccupancyPriority))) {
                arrayList2.add(Integer.valueOf(surfaceOccupancyPriority));
            }
        }
        CollectionsKt.sort(arrayList2);
        CollectionsKt.reverse(arrayList2);
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            int iIntValue = ((Number) obj).intValue();
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                UseCaseConfig useCaseConfig = (UseCaseConfig) it2.next();
                if (iIntValue == useCaseConfig.getSurfaceOccupancyPriority(0)) {
                    arrayList.add(Integer.valueOf(list.indexOf(useCaseConfig)));
                }
            }
        }
        return arrayList;
    }

    public static /* synthetic */ Size getMaxOutputSizeByFormat$camera_camera2$default(SupportedSurfaceCombination supportedSurfaceCombination, StreamConfigurationMap streamConfigurationMap, int i, boolean z, Rational rational, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            rational = null;
        }
        return supportedSurfaceCombination.getMaxOutputSizeByFormat$camera_camera2(streamConfigurationMap, i, z, rational);
    }

    public final Size getMaxOutputSizeByFormat$camera_camera2(StreamConfigurationMap streamConfigurationMap, int i, boolean z, Rational rational) {
        Size[] outputSizes = getOutputSizes(streamConfigurationMap, i, rational);
        if (outputSizes == null || outputSizes.length == 0) {
            return null;
        }
        CompareSizesByArea compareSizesByArea = new CompareSizesByArea();
        Size size = (Size) Collections.max(ArraysKt.asList(outputSizes), compareSizesByArea);
        Size size2 = SizeUtil.RESOLUTION_ZERO;
        if (z) {
            Size[] highResolutionOutputSizes = streamConfigurationMap != null ? streamConfigurationMap.getHighResolutionOutputSizes(i) : null;
            if (highResolutionOutputSizes != null && highResolutionOutputSizes.length != 0) {
                size2 = (Size) Collections.max(ArraysKt.asList(highResolutionOutputSizes), compareSizesByArea);
            }
        }
        return (Size) Collections.max(CollectionsKt.listOf((Object[]) new Size[]{size, size2}), compareSizesByArea);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final Size[] getOutputSizes(StreamConfigurationMap streamConfigurationMap, int i, Rational rational) {
        Object objM3604constructorimpl;
        Size[] outputSizes;
        try {
            Result.Companion companion = Result.Companion;
            if (i != 34) {
                if (streamConfigurationMap != null) {
                    outputSizes = streamConfigurationMap.getOutputSizes(i);
                }
                objM3604constructorimpl = Result.m3604constructorimpl(outputSizes);
            } else {
                outputSizes = streamConfigurationMap != null ? streamConfigurationMap.getOutputSizes(SurfaceTexture.class) : null;
                objM3604constructorimpl = Result.m3604constructorimpl(outputSizes);
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM3604constructorimpl = Result.m3604constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m3608isFailureimpl(objM3604constructorimpl)) {
            objM3604constructorimpl = null;
        }
        Size[] sizeArr = (Size[]) objM3604constructorimpl;
        if (sizeArr == null) {
            return null;
        }
        if (rational != null) {
            ArrayList arrayList = new ArrayList();
            for (Size size : sizeArr) {
                if (AspectRatioUtil.hasMatchingAspectRatio(size, rational)) {
                    arrayList.add(size);
                }
            }
            sizeArr = (Size[]) arrayList.toArray(new Size[0]);
        }
        return sizeArr;
    }

    private final List getAllPossibleSizeArrangements(List list) {
        Iterator it = list.iterator();
        int size = 1;
        while (it.hasNext()) {
            size *= ((List) it.next()).size();
        }
        if (size == 0) {
            throw new IllegalArgumentException("Failed to find supported resolutions.");
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            arrayList.add(new ArrayList());
        }
        int size2 = size / ((List) list.get(0)).size();
        int size3 = list.size();
        int i2 = size;
        for (int i3 = 0; i3 < size3; i3++) {
            List list2 = (List) list.get(i3);
            for (int i4 = 0; i4 < size; i4++) {
                ((List) arrayList.get(i4)).add(list2.get((i4 % i2) / size2));
            }
            if (i3 < list.size() - 1) {
                i2 = size2;
                size2 /= ((List) list.get(i3 + 1)).size();
            }
        }
        return arrayList;
    }

    public static final class FeatureSettings {
        private final int cameraMode;
        private final boolean hasVideoCapture;
        private final boolean isFeatureComboInvocation;
        private final boolean isHighSpeedOn;
        private final boolean isStrictFpsRequired;
        private final boolean isUltraHdrOn;
        private final int requiredMaxBitDepth;
        private final boolean requiresFeatureComboQuery;
        private final Range targetFpsRange;
        private final VideoStabilization videoStabilization;

        public static /* synthetic */ FeatureSettings copy$default(FeatureSettings featureSettings, int i, int i2, boolean z, VideoStabilization videoStabilization, boolean z2, boolean z3, boolean z4, boolean z5, Range range, boolean z6, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = featureSettings.cameraMode;
            }
            if ((i3 & 2) != 0) {
                i2 = featureSettings.requiredMaxBitDepth;
            }
            if ((i3 & 4) != 0) {
                z = featureSettings.hasVideoCapture;
            }
            if ((i3 & 8) != 0) {
                videoStabilization = featureSettings.videoStabilization;
            }
            if ((i3 & 16) != 0) {
                z2 = featureSettings.isUltraHdrOn;
            }
            if ((i3 & 32) != 0) {
                z3 = featureSettings.isHighSpeedOn;
            }
            if ((i3 & 64) != 0) {
                z4 = featureSettings.isFeatureComboInvocation;
            }
            if ((i3 & 128) != 0) {
                z5 = featureSettings.requiresFeatureComboQuery;
            }
            if ((i3 & 256) != 0) {
                range = featureSettings.targetFpsRange;
            }
            if ((i3 & 512) != 0) {
                z6 = featureSettings.isStrictFpsRequired;
            }
            Range range2 = range;
            boolean z7 = z6;
            boolean z8 = z4;
            boolean z9 = z5;
            boolean z10 = z2;
            boolean z11 = z3;
            return featureSettings.copy(i, i2, z, videoStabilization, z10, z11, z8, z9, range2, z7);
        }

        public final FeatureSettings copy(int i, int i2, boolean z, VideoStabilization videoStabilization, boolean z2, boolean z3, boolean z4, boolean z5, Range targetFpsRange, boolean z6) {
            Intrinsics.checkNotNullParameter(videoStabilization, "videoStabilization");
            Intrinsics.checkNotNullParameter(targetFpsRange, "targetFpsRange");
            return new FeatureSettings(i, i2, z, videoStabilization, z2, z3, z4, z5, targetFpsRange, z6);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FeatureSettings)) {
                return false;
            }
            FeatureSettings featureSettings = (FeatureSettings) obj;
            return this.cameraMode == featureSettings.cameraMode && this.requiredMaxBitDepth == featureSettings.requiredMaxBitDepth && this.hasVideoCapture == featureSettings.hasVideoCapture && this.videoStabilization == featureSettings.videoStabilization && this.isUltraHdrOn == featureSettings.isUltraHdrOn && this.isHighSpeedOn == featureSettings.isHighSpeedOn && this.isFeatureComboInvocation == featureSettings.isFeatureComboInvocation && this.requiresFeatureComboQuery == featureSettings.requiresFeatureComboQuery && Intrinsics.areEqual(this.targetFpsRange, featureSettings.targetFpsRange) && this.isStrictFpsRequired == featureSettings.isStrictFpsRequired;
        }

        public int hashCode() {
            return (((((((((((((((((this.cameraMode * 31) + this.requiredMaxBitDepth) * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.hasVideoCapture)) * 31) + this.videoStabilization.hashCode()) * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.isUltraHdrOn)) * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.isHighSpeedOn)) * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.isFeatureComboInvocation)) * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.requiresFeatureComboQuery)) * 31) + this.targetFpsRange.hashCode()) * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.isStrictFpsRequired);
        }

        public String toString() {
            return "FeatureSettings(cameraMode=" + this.cameraMode + ", requiredMaxBitDepth=" + this.requiredMaxBitDepth + ", hasVideoCapture=" + this.hasVideoCapture + ", videoStabilization=" + this.videoStabilization + ", isUltraHdrOn=" + this.isUltraHdrOn + ", isHighSpeedOn=" + this.isHighSpeedOn + ", isFeatureComboInvocation=" + this.isFeatureComboInvocation + ", requiresFeatureComboQuery=" + this.requiresFeatureComboQuery + ", targetFpsRange=" + this.targetFpsRange + ", isStrictFpsRequired=" + this.isStrictFpsRequired + ')';
        }

        public FeatureSettings(int i, int i2, boolean z, VideoStabilization videoStabilization, boolean z2, boolean z3, boolean z4, boolean z5, Range targetFpsRange, boolean z6) {
            Intrinsics.checkNotNullParameter(videoStabilization, "videoStabilization");
            Intrinsics.checkNotNullParameter(targetFpsRange, "targetFpsRange");
            this.cameraMode = i;
            this.requiredMaxBitDepth = i2;
            this.hasVideoCapture = z;
            this.videoStabilization = videoStabilization;
            this.isUltraHdrOn = z2;
            this.isHighSpeedOn = z3;
            this.isFeatureComboInvocation = z4;
            this.requiresFeatureComboQuery = z5;
            this.targetFpsRange = targetFpsRange;
            this.isStrictFpsRequired = z6;
        }

        public final int getCameraMode() {
            return this.cameraMode;
        }

        public final int getRequiredMaxBitDepth() {
            return this.requiredMaxBitDepth;
        }

        public final boolean getHasVideoCapture() {
            return this.hasVideoCapture;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ FeatureSettings(int i, int i2, boolean z, VideoStabilization videoStabilization, boolean z2, boolean z3, boolean z4, boolean z5, Range FRAME_RATE_RANGE_UNSPECIFIED, boolean z6, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            z = (i3 & 4) != 0 ? false : z;
            videoStabilization = (i3 & 8) != 0 ? VideoStabilization.UNSPECIFIED : videoStabilization;
            z2 = (i3 & 16) != 0 ? false : z2;
            z3 = (i3 & 32) != 0 ? false : z3;
            z4 = (i3 & 64) != 0 ? false : z4;
            z5 = (i3 & 128) != 0 ? false : z5;
            if ((i3 & 256) != 0) {
                FRAME_RATE_RANGE_UNSPECIFIED = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
                Intrinsics.checkNotNullExpressionValue(FRAME_RATE_RANGE_UNSPECIFIED, "FRAME_RATE_RANGE_UNSPECIFIED");
            }
            this(i, i2, z, videoStabilization, z2, z3, z4, z5, FRAME_RATE_RANGE_UNSPECIFIED, (i3 & 512) != 0 ? false : z6);
        }

        public final VideoStabilization getVideoStabilization() {
            return this.videoStabilization;
        }

        public final boolean isUltraHdrOn() {
            return this.isUltraHdrOn;
        }

        public final boolean isHighSpeedOn() {
            return this.isHighSpeedOn;
        }

        public final boolean isFeatureComboInvocation() {
            return this.isFeatureComboInvocation;
        }

        public final boolean getRequiresFeatureComboQuery() {
            return this.requiresFeatureComboQuery;
        }

        public final Range getTargetFpsRange() {
            return this.targetFpsRange;
        }

        public final boolean isStrictFpsRequired() {
            return this.isStrictFpsRequired;
        }
    }

    public static final class BestSizesAndMaxFpsForConfigs {
        private final List bestSizes;
        private final List bestSizesForStreamUseCase;
        private final int maxFpsForAllSizes;
        private final int maxFpsForBestSizes;
        private final int maxFpsForStreamUseCase;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BestSizesAndMaxFpsForConfigs)) {
                return false;
            }
            BestSizesAndMaxFpsForConfigs bestSizesAndMaxFpsForConfigs = (BestSizesAndMaxFpsForConfigs) obj;
            return Intrinsics.areEqual(this.bestSizes, bestSizesAndMaxFpsForConfigs.bestSizes) && Intrinsics.areEqual(this.bestSizesForStreamUseCase, bestSizesAndMaxFpsForConfigs.bestSizesForStreamUseCase) && this.maxFpsForBestSizes == bestSizesAndMaxFpsForConfigs.maxFpsForBestSizes && this.maxFpsForStreamUseCase == bestSizesAndMaxFpsForConfigs.maxFpsForStreamUseCase && this.maxFpsForAllSizes == bestSizesAndMaxFpsForConfigs.maxFpsForAllSizes;
        }

        public int hashCode() {
            int iHashCode = this.bestSizes.hashCode() * 31;
            List list = this.bestSizesForStreamUseCase;
            return ((((((iHashCode + (list == null ? 0 : list.hashCode())) * 31) + this.maxFpsForBestSizes) * 31) + this.maxFpsForStreamUseCase) * 31) + this.maxFpsForAllSizes;
        }

        public String toString() {
            return "BestSizesAndMaxFpsForConfigs(bestSizes=" + this.bestSizes + ", bestSizesForStreamUseCase=" + this.bestSizesForStreamUseCase + ", maxFpsForBestSizes=" + this.maxFpsForBestSizes + ", maxFpsForStreamUseCase=" + this.maxFpsForStreamUseCase + ", maxFpsForAllSizes=" + this.maxFpsForAllSizes + ')';
        }

        public BestSizesAndMaxFpsForConfigs(List bestSizes, List list, int i, int i2, int i3) {
            Intrinsics.checkNotNullParameter(bestSizes, "bestSizes");
            this.bestSizes = bestSizes;
            this.bestSizesForStreamUseCase = list;
            this.maxFpsForBestSizes = i;
            this.maxFpsForStreamUseCase = i2;
            this.maxFpsForAllSizes = i3;
        }

        public final List getBestSizes() {
            return this.bestSizes;
        }

        public final List getBestSizesForStreamUseCase() {
            return this.bestSizesForStreamUseCase;
        }

        public final int getMaxFpsForBestSizes() {
            return this.maxFpsForBestSizes;
        }

        public final int getMaxFpsForStreamUseCase() {
            return this.maxFpsForStreamUseCase;
        }

        public final int getMaxFpsForAllSizes() {
            return this.maxFpsForAllSizes;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class CheckingMethod {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ CheckingMethod[] $VALUES;
        public static final CheckingMethod WITHOUT_FEATURE_COMBO = new CheckingMethod("WITHOUT_FEATURE_COMBO", 0);
        public static final CheckingMethod WITH_FEATURE_COMBO = new CheckingMethod("WITH_FEATURE_COMBO", 1);
        public static final CheckingMethod WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT = new CheckingMethod("WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT", 2);

        private static final /* synthetic */ CheckingMethod[] $values() {
            return new CheckingMethod[]{WITHOUT_FEATURE_COMBO, WITH_FEATURE_COMBO, WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT};
        }

        public static CheckingMethod valueOf(String str) {
            return (CheckingMethod) Enum.valueOf(CheckingMethod.class, str);
        }

        public static CheckingMethod[] values() {
            return (CheckingMethod[]) $VALUES.clone();
        }

        private CheckingMethod(String str, int i) {
        }

        static {
            CheckingMethod[] checkingMethodArr$values = $values();
            $VALUES = checkingMethodArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(checkingMethodArr$values);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isUltraHdrOn(List list, Map map) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((AttachedSurfaceInfo) it.next()).getImageFormat() == 4101) {
                    return true;
                }
            }
            Iterator it2 = map.keySet().iterator();
            while (it2.hasNext()) {
                if (((UseCaseConfig) it2.next()).getInputFormat() == 4101) {
                    return true;
                }
            }
            return false;
        }
    }
}
