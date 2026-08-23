package androidx.camera.camera2.impl;

import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.DynamicRangeProfiles;
import android.media.MediaCodec;
import android.os.Build;
import android.util.Log;
import android.util.Range;
import android.util.Size;
import android.view.SurfaceHolder;
import androidx.camera.camera2.adapter.GraphStateToCameraStateAdapter;
import androidx.camera.camera2.adapter.ZslControl;
import androidx.camera.camera2.compat.DynamicRangeProfilesCompat;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.quirk.CaptureSessionStuckQuirk;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.DisableAbortCapturesOnStopQuirk;
import androidx.camera.camera2.compat.quirk.DisableAbortCapturesOnStopWithSessionProcessorQuirk;
import androidx.camera.camera2.compat.quirk.FinalizeSessionOnCloseQuirk;
import androidx.camera.camera2.compat.quirk.QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk;
import androidx.camera.camera2.compat.workaround.CloseCameraOnCameraGraphClose;
import androidx.camera.camera2.compat.workaround.TemplateParamsOverride;
import androidx.camera.camera2.config.CameraConfig;
import androidx.camera.camera2.internal.DynamicRangeConversions;
import androidx.camera.camera2.interop.Camera2CaptureRequestConfiguratorKt;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.InputStream;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.compat.CameraPipeKeys;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraGraphConfigProvider {
    private final CameraCallbackMap callbackMap;
    private final CameraConfig cameraConfig;
    private final CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository;
    private final CameraMetadata cameraMetadata;
    private final CameraQuirks cameraQuirks;
    private final CameraXConfig cameraXConfig;
    private final CloseCameraOnCameraGraphClose closeCameraOnCameraGraphClose;
    private final ComboRequestListener requestListener;
    private final DynamicRangeProfiles supportedDynamicRangeProfiles;
    private final TemplateParamsOverride templateParamsOverride;
    private final ZslControl zslControl;

    public CameraGraphConfigProvider(CameraCallbackMap callbackMap, ComboRequestListener requestListener, CameraConfig cameraConfig, CameraQuirks cameraQuirks, ZslControl zslControl, TemplateParamsOverride templateParamsOverride, CameraMetadata cameraMetadata, CameraXConfig cameraXConfig, CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository) {
        DynamicRangeProfilesCompat dynamicRangeProfilesCompatFromCameraMetaData;
        Intrinsics.checkNotNullParameter(callbackMap, "callbackMap");
        Intrinsics.checkNotNullParameter(requestListener, "requestListener");
        Intrinsics.checkNotNullParameter(cameraConfig, "cameraConfig");
        Intrinsics.checkNotNullParameter(cameraQuirks, "cameraQuirks");
        Intrinsics.checkNotNullParameter(zslControl, "zslControl");
        Intrinsics.checkNotNullParameter(templateParamsOverride, "templateParamsOverride");
        this.callbackMap = callbackMap;
        this.requestListener = requestListener;
        this.cameraConfig = cameraConfig;
        this.cameraQuirks = cameraQuirks;
        this.zslControl = zslControl;
        this.templateParamsOverride = templateParamsOverride;
        this.cameraMetadata = cameraMetadata;
        this.cameraXConfig = cameraXConfig;
        this.cameraInteropStateCallbackRepository = cameraInteropStateCallbackRepository;
        this.closeCameraOnCameraGraphClose = new CloseCameraOnCameraGraphClose();
        DynamicRangeProfiles dynamicRangeProfiles = null;
        if (Build.VERSION.SDK_INT >= 33 && cameraMetadata != null && (dynamicRangeProfilesCompatFromCameraMetaData = DynamicRangeProfilesCompat.Companion.fromCameraMetaData(cameraMetadata)) != null) {
            dynamicRangeProfiles = dynamicRangeProfilesCompatFromCameraMetaData.toDynamicRangeProfiles();
        }
        this.supportedDynamicRangeProfiles = dynamicRangeProfiles;
    }

    public /* synthetic */ CameraGraphConfigProvider(CameraCallbackMap cameraCallbackMap, ComboRequestListener comboRequestListener, CameraConfig cameraConfig, CameraQuirks cameraQuirks, ZslControl zslControl, TemplateParamsOverride templateParamsOverride, CameraMetadata cameraMetadata, CameraXConfig cameraXConfig, CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(cameraCallbackMap, comboRequestListener, cameraConfig, cameraQuirks, zslControl, templateParamsOverride, cameraMetadata, (i & 128) != 0 ? null : cameraXConfig, (i & 256) != 0 ? null : cameraInteropStateCallbackRepository);
    }

    public static final class CameraGraphCreationResult {
        private final CameraGraph.Config config;
        private final Map streamConfigMap;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CameraGraphCreationResult)) {
                return false;
            }
            CameraGraphCreationResult cameraGraphCreationResult = (CameraGraphCreationResult) obj;
            return Intrinsics.areEqual(this.config, cameraGraphCreationResult.config) && Intrinsics.areEqual(this.streamConfigMap, cameraGraphCreationResult.streamConfigMap);
        }

        public int hashCode() {
            return (this.config.hashCode() * 31) + this.streamConfigMap.hashCode();
        }

        public String toString() {
            return "CameraGraphCreationResult(config=" + this.config + ", streamConfigMap=" + this.streamConfigMap + ')';
        }

        public CameraGraphCreationResult(CameraGraph.Config config, Map streamConfigMap) {
            Intrinsics.checkNotNullParameter(config, "config");
            Intrinsics.checkNotNullParameter(streamConfigMap, "streamConfigMap");
            this.config = config;
            this.streamConfigMap = streamConfigMap;
        }

        public final CameraGraph.Config getConfig() {
            return this.config;
        }

        public final Map getStreamConfigMap() {
            return this.streamConfigMap;
        }
    }

    /* JADX INFO: renamed from: create-79VDu0o$default, reason: not valid java name */
    public static /* synthetic */ CameraGraphCreationResult m1428create79VDu0o$default(CameraGraphConfigProvider cameraGraphConfigProvider, int i, SessionConfig sessionConfig, boolean z, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, Integer num, Map map, Map map2, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            graphStateToCameraStateAdapter = null;
        }
        if ((i2 & 16) != 0) {
            num = null;
        }
        if ((i2 & 32) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i2 & 64) != 0) {
            map2 = MapsKt.emptyMap();
        }
        return cameraGraphConfigProvider.m1432create79VDu0o(i, sessionConfig, z, graphStateToCameraStateAdapter, num, map, map2);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0192  */
    /* JADX INFO: renamed from: create-79VDu0o, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final CameraGraphCreationResult m1432create79VDu0o(int i, SessionConfig sessionConfig, boolean z, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, Integer num, Map map, Map map2) {
        Integer videoStabilizationModeFromCaptureConfig;
        ArrayList arrayList;
        LinkedHashMap linkedHashMap;
        CameraStream.Config config;
        CameraStream.Config configCreatePostviewStream;
        String str;
        String physicalCameraId;
        OutputStream.MirrorMode mirrorModeM1708boximpl;
        OutputStream.MirrorMode mirrorMode;
        OutputStream.OutputType surface;
        Iterator it;
        OutputStream.Config config2;
        Map surfaceToStreamUseCaseMap = map;
        Map surfaceToStreamUseHintMap = map2;
        Intrinsics.checkNotNullParameter(surfaceToStreamUseCaseMap, "surfaceToStreamUseCaseMap");
        Intrinsics.checkNotNullParameter(surfaceToStreamUseHintMap, "surfaceToStreamUseHintMap");
        CameraGraph.OperatingMode.Companion companion = CameraGraph.OperatingMode.Companion;
        boolean zM1591equalsimpl0 = CameraGraph.OperatingMode.m1591equalsimpl0(i, companion.m1595getEXTENSION2uNL3no());
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        ArrayList arrayList2 = new ArrayList();
        int iM1754constructorimpl = RequestTemplate.m1754constructorimpl(1);
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        if (sessionConfig != null) {
            CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository = this.cameraInteropStateCallbackRepository;
            if (cameraInteropStateCallbackRepository != null) {
                cameraInteropStateCallbackRepository.updateCallbacks(sessionConfig);
            }
            int i2 = 2;
            if (sessionConfig.getTemplateType() != -1) {
                iM1754constructorimpl = RequestTemplate.m1754constructorimpl(sessionConfig.getTemplateType());
            }
            linkedHashMap3.putAll(this.templateParamsOverride.mo1415getOverrideParamsxlOpshk(RequestTemplate.m1753boximpl(iM1754constructorimpl)));
            Config implementationOptions = sessionConfig.getImplementationOptions();
            Intrinsics.checkNotNullExpressionValue(implementationOptions, "getImplementationOptions(...)");
            linkedHashMap3.putAll(Camera2ImplConfigKt.toParameters(implementationOptions));
            if (CameraGraph.OperatingMode.m1591equalsimpl0(i, companion.m1595getEXTENSION2uNL3no())) {
                Metadata.Key camera2ExtensionMode = CameraPipeKeys.INSTANCE.getCamera2ExtensionMode();
                Intrinsics.checkNotNull(num);
                linkedHashMap3.put(camera2ExtensionMode, num);
            }
            String physicalCameraId2 = toCamera2ImplConfig(sessionConfig).getPhysicalCameraId(null);
            CameraStream.Config config3 = null;
            for (SessionConfig.OutputConfig outputConfig : sessionConfig.getOutputConfigs()) {
                DeferrableSurface surface2 = outputConfig.getSurface();
                Intrinsics.checkNotNullExpressionValue(surface2, "getSurface(...)");
                if (physicalCameraId2 == null) {
                    physicalCameraId = outputConfig.getPhysicalCameraId();
                    str = physicalCameraId2;
                } else {
                    str = physicalCameraId2;
                    physicalCameraId = str;
                }
                DynamicRange dynamicRange = outputConfig.getDynamicRange();
                String str2 = physicalCameraId;
                Intrinsics.checkNotNullExpressionValue(dynamicRange, "getDynamicRange(...)");
                int mirrorMode2 = outputConfig.getMirrorMode();
                OutputStream.Config.Companion companion2 = OutputStream.Config.Companion;
                OutputStream.DynamicRangeProfile dynamicRangeProfileM1431toDynamicRangeProfilezsJmt4 = m1431toDynamicRangeProfilezsJmt4(dynamicRange);
                Size prescribedSize = surface2.getPrescribedSize();
                Intrinsics.checkNotNullExpressionValue(prescribedSize, "getPrescribedSize(...)");
                int iM1773constructorimpl = StreamFormat.m1773constructorimpl(surface2.getPrescribedStreamFormat());
                String strM1603constructorimpl = str2 == null ? null : CameraId.m1603constructorimpl(str2);
                if (mirrorMode2 == 0) {
                    mirrorModeM1708boximpl = OutputStream.MirrorMode.m1708boximpl(OutputStream.MirrorMode.m1709constructorimpl(1));
                } else if (mirrorMode2 != 1) {
                    mirrorMode = null;
                    if (!z) {
                        Class containerClass = outputConfig.getSurface().getContainerClass();
                        if (Intrinsics.areEqual(containerClass, MediaCodec.class)) {
                            surface = OutputStream.OutputType.Companion.getMEDIA_CODEC();
                        } else if (Intrinsics.areEqual(containerClass, SurfaceHolder.class)) {
                            surface = OutputStream.OutputType.Companion.getSURFACE_VIEW();
                        } else {
                            surface = Intrinsics.areEqual(containerClass, SurfaceTexture.class) ? OutputStream.OutputType.Companion.getSURFACE_TEXTURE() : OutputStream.OutputType.Companion.getSURFACE();
                        }
                    } else {
                        surface = OutputStream.OutputType.Companion.getSURFACE();
                    }
                    OutputStream.Config configM1698createvBYXiEU$default = OutputStream.Config.Companion.m1698createvBYXiEU$default(companion2, prescribedSize, iM1773constructorimpl, strM1603constructorimpl, surface, mirrorMode, null, dynamicRangeProfileM1431toDynamicRangeProfilezsJmt4, zM1591equalsimpl0 ? m1429getStreamUseCaseMhLBY4I(surface2, surfaceToStreamUseCaseMap, this.cameraMetadata) : null, zM1591equalsimpl0 ? m1430getStreamUseHintkVKJKLA(surface2, surfaceToStreamUseHintMap) : null, null, 544, null);
                    List sharedSurfaces = outputConfig.getSharedSurfaces();
                    Intrinsics.checkNotNullExpressionValue(sharedSurfaces, "getSharedSurfaces(...)");
                    it = CollectionsKt.plus(sharedSurfaces, surface2).iterator();
                    while (it.hasNext()) {
                        DeferrableSurface deferrableSurface = (DeferrableSurface) it.next();
                        Iterator it2 = it;
                        CameraStream.Config configCreate$default = CameraStream.Config.Companion.create$default(CameraStream.Config.Companion, configM1698createvBYXiEU$default, null, i2, null);
                        linkedHashMap4.put(configCreate$default, deferrableSurface);
                        if (outputConfig.getSurfaceGroupId() != -1) {
                            List list = (List) linkedHashMap2.get(Integer.valueOf(outputConfig.getSurfaceGroupId()));
                            if (list == null) {
                                config2 = configM1698createvBYXiEU$default;
                                linkedHashMap2.put(Integer.valueOf(outputConfig.getSurfaceGroupId()), CollectionsKt.mutableListOf(configCreate$default));
                            } else {
                                config2 = configM1698createvBYXiEU$default;
                                list.add(configCreate$default);
                            }
                        } else {
                            config2 = configM1698createvBYXiEU$default;
                        }
                        if (Intrinsics.areEqual(deferrableSurface, surface2)) {
                            ZslControl zslControl = this.zslControl;
                            Intrinsics.checkNotNull(deferrableSurface);
                            if (zslControl.isZslSurface(deferrableSurface, sessionConfig)) {
                                config3 = configCreate$default;
                                it = it2;
                                configM1698createvBYXiEU$default = config2;
                                i2 = 2;
                            }
                        }
                        it = it2;
                        configM1698createvBYXiEU$default = config2;
                        i2 = 2;
                    }
                    physicalCameraId2 = str;
                    surfaceToStreamUseCaseMap = map;
                    surfaceToStreamUseHintMap = map2;
                    i2 = 2;
                } else {
                    mirrorModeM1708boximpl = OutputStream.MirrorMode.m1708boximpl(OutputStream.MirrorMode.m1709constructorimpl(i2));
                }
                mirrorMode = mirrorModeM1708boximpl;
                if (!z) {
                }
                OutputStream.Config configM1698createvBYXiEU$default2 = OutputStream.Config.Companion.m1698createvBYXiEU$default(companion2, prescribedSize, iM1773constructorimpl, strM1603constructorimpl, surface, mirrorMode, null, dynamicRangeProfileM1431toDynamicRangeProfilezsJmt4, zM1591equalsimpl0 ? m1429getStreamUseCaseMhLBY4I(surface2, surfaceToStreamUseCaseMap, this.cameraMetadata) : null, zM1591equalsimpl0 ? m1430getStreamUseHintkVKJKLA(surface2, surfaceToStreamUseHintMap) : null, null, 544, null);
                List sharedSurfaces2 = outputConfig.getSharedSurfaces();
                Intrinsics.checkNotNullExpressionValue(sharedSurfaces2, "getSharedSurfaces(...)");
                it = CollectionsKt.plus(sharedSurfaces2, surface2).iterator();
                while (it.hasNext()) {
                }
                physicalCameraId2 = str;
                surfaceToStreamUseCaseMap = map;
                surfaceToStreamUseHintMap = map2;
                i2 = 2;
            }
            if (sessionConfig.getInputConfiguration() != null && config3 != null) {
                arrayList2.add(new InputStream.Config(config3, 1, ((OutputStream.Config) CollectionsKt.single(config3.getOutputs())).m1693getFormat8FPWQzE(), null));
            }
        }
        CameraGraph.Flags flagsCreateCameraGraphFlags = createCameraGraphFlags(this.cameraQuirks, zM1591equalsimpl0);
        if (sessionConfig != null) {
            CaptureConfig repeatingCaptureConfig = sessionConfig.getRepeatingCaptureConfig();
            Intrinsics.checkNotNullExpressionValue(repeatingCaptureConfig, "getRepeatingCaptureConfig(...)");
            videoStabilizationModeFromCaptureConfig = getVideoStabilizationModeFromCaptureConfig(repeatingCaptureConfig);
        } else {
            videoStabilizationModeFromCaptureConfig = null;
        }
        Range expectedFrameRateRange = sessionConfig != null ? sessionConfig.getExpectedFrameRateRange() : null;
        if (Intrinsics.areEqual(expectedFrameRateRange, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED)) {
            expectedFrameRateRange = null;
        }
        Map mapCreateMapBuilder = MapsKt.createMapBuilder();
        if (zM1591equalsimpl0) {
            mapCreateMapBuilder.put(CameraPipeKeys.INSTANCE.getIgnore3ARequiredParameters(), Boolean.TRUE);
        }
        if (videoStabilizationModeFromCaptureConfig != null) {
            mapCreateMapBuilder.put(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, Integer.valueOf(videoStabilizationModeFromCaptureConfig.intValue()));
        }
        mapCreateMapBuilder.put(CameraPipeKeys.INSTANCE.getCamera2CaptureRequestTag(), "android.hardware.camera2.CaptureRequest.setTag.CX");
        if (expectedFrameRateRange != null) {
            mapCreateMapBuilder.put(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, expectedFrameRateRange);
        }
        Map mapBuild = MapsKt.build(mapCreateMapBuilder);
        if (expectedFrameRateRange != null) {
            linkedHashMap3.put(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, expectedFrameRateRange);
        }
        if (videoStabilizationModeFromCaptureConfig != null) {
            linkedHashMap3.put(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, videoStabilizationModeFromCaptureConfig);
        }
        if (sessionConfig != null) {
            arrayList = null;
            String physicalCameraId3 = toCamera2ImplConfig(sessionConfig).getPhysicalCameraId(null);
            SessionConfig.OutputConfig postviewOutputConfig = sessionConfig.getPostviewOutputConfig();
            if (postviewOutputConfig == null || (configCreatePostviewStream = createPostviewStream(postviewOutputConfig, physicalCameraId3)) == null) {
                configCreatePostviewStream = null;
            } else {
                linkedHashMap4.put(configCreatePostviewStream, postviewOutputConfig.getSurface());
            }
            linkedHashMap = linkedHashMap2;
            config = configCreatePostviewStream;
        } else {
            arrayList = null;
            linkedHashMap = linkedHashMap2;
            config = null;
        }
        CameraXConfig cameraXConfig = this.cameraXConfig;
        if (cameraXConfig != null) {
            Camera2CaptureRequestConfiguratorKt.getCamera2CaptureRequestConfigurator(cameraXConfig);
        }
        return new CameraGraphCreationResult(new CameraGraph.Config(this.cameraConfig.m1417getCameraIdDz_R5H8(), CollectionsKt.toList(linkedHashMap4.keySet()), CollectionsKt.toList(linkedHashMap.values()), arrayList2.isEmpty() ? arrayList : arrayList2, config, iM1754constructorimpl, linkedHashMap3, i, 0, mapBuild, CollectionsKt.listOf((Object[]) new Request.Listener[]{this.callbackMap, this.requestListener}), CollectionsKt.listOfNotNull(graphStateToCameraStateAdapter), null, null, null, null, flagsCreateCameraGraphFlags, null, 192768, null), MapsKt.toMap(linkedHashMap4));
    }

    private final CameraStream.Config createPostviewStream(SessionConfig.OutputConfig outputConfig, String str) {
        OutputStream.MirrorMode mirrorModeM1708boximpl;
        OutputStream.MirrorMode mirrorMode;
        DeferrableSurface surface = outputConfig.getSurface();
        Intrinsics.checkNotNullExpressionValue(surface, "getSurface(...)");
        String physicalCameraId = str == null ? outputConfig.getPhysicalCameraId() : str;
        int mirrorMode2 = outputConfig.getMirrorMode();
        OutputStream.Config.Companion companion = OutputStream.Config.Companion;
        Size prescribedSize = surface.getPrescribedSize();
        Intrinsics.checkNotNullExpressionValue(prescribedSize, "getPrescribedSize(...)");
        int iM1773constructorimpl = StreamFormat.m1773constructorimpl(surface.getPrescribedStreamFormat());
        String strM1603constructorimpl = physicalCameraId == null ? null : CameraId.m1603constructorimpl(physicalCameraId);
        if (mirrorMode2 == 0) {
            mirrorModeM1708boximpl = OutputStream.MirrorMode.m1708boximpl(OutputStream.MirrorMode.m1709constructorimpl(1));
        } else if (mirrorMode2 == 1) {
            mirrorModeM1708boximpl = OutputStream.MirrorMode.m1708boximpl(OutputStream.MirrorMode.m1709constructorimpl(2));
        } else {
            mirrorMode = null;
            return CameraStream.Config.Companion.create$default(CameraStream.Config.Companion, OutputStream.Config.Companion.m1698createvBYXiEU$default(companion, prescribedSize, iM1773constructorimpl, strM1603constructorimpl, null, mirrorMode, null, null, null, null, null, MediaDataController.MAX_STYLE_RUNS_COUNT, null), null, 2, null);
        }
        mirrorMode = mirrorModeM1708boximpl;
        return CameraStream.Config.Companion.create$default(CameraStream.Config.Companion, OutputStream.Config.Companion.m1698createvBYXiEU$default(companion, prescribedSize, iM1773constructorimpl, strM1603constructorimpl, null, mirrorMode, null, null, null, null, null, MediaDataController.MAX_STYLE_RUNS_COUNT, null), null, 2, null);
    }

    /* JADX INFO: renamed from: getStreamUseCase-MhLBY4I, reason: not valid java name */
    private final OutputStream.StreamUseCase m1429getStreamUseCaseMhLBY4I(DeferrableSurface deferrableSurface, Map map, CameraMetadata cameraMetadata) {
        Long l = (Long) map.get(deferrableSurface);
        OutputStream.StreamUseCase streamUseCaseM1716boximpl = l != null ? OutputStream.StreamUseCase.m1716boximpl(OutputStream.StreamUseCase.m1717constructorimpl(l.longValue())) : null;
        if (Build.VERSION.SDK_INT >= 33 && streamUseCaseM1716boximpl != null && cameraMetadata != null) {
            CameraCharacteristics.Key SCALER_AVAILABLE_STREAM_USE_CASES = CameraCharacteristics.SCALER_AVAILABLE_STREAM_USE_CASES;
            Intrinsics.checkNotNullExpressionValue(SCALER_AVAILABLE_STREAM_USE_CASES, "SCALER_AVAILABLE_STREAM_USE_CASES");
            long[] jArr = (long[]) cameraMetadata.get(SCALER_AVAILABLE_STREAM_USE_CASES);
            if (jArr != null && ArraysKt.contains(jArr, streamUseCaseM1716boximpl.m1722unboximpl())) {
                return streamUseCaseM1716boximpl;
            }
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isWarnEnabled("CXCP")) {
            Log.w(Camera2Logger.TRUNCATED_TAG, "Expected stream use case for " + deferrableSurface + ", " + streamUseCaseM1716boximpl + " cannot be set!");
        }
        return null;
    }

    /* JADX INFO: renamed from: getStreamUseHint-kVKJKLA, reason: not valid java name */
    private final OutputStream.StreamUseHint m1430getStreamUseHintkVKJKLA(DeferrableSurface deferrableSurface, Map map) {
        Long l = (Long) map.get(deferrableSurface);
        if (l != null) {
            return OutputStream.StreamUseHint.m1726boximpl(OutputStream.StreamUseHint.m1727constructorimpl(l.longValue()));
        }
        return null;
    }

    private final CameraGraph.Flags createCameraGraphFlags(CameraQuirks cameraQuirks, boolean z) {
        if (cameraQuirks.getQuirks().contains(CaptureSessionStuckQuirk.class)) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "CameraPipe should be enabling CaptureSessionStuckQuirk by default");
            }
        }
        int iM1410getBehaviorBm6Tfm4 = FinalizeSessionOnCloseQuirk.Companion.m1410getBehaviorBm6Tfm4();
        boolean zShouldCloseCameraDevice = this.closeCameraOnCameraGraphClose.shouldCloseCameraDevice(z);
        boolean z2 = false;
        if ((!z || DeviceQuirks.INSTANCE.get(DisableAbortCapturesOnStopWithSessionProcessorQuirk.class) == null) && DeviceQuirks.INSTANCE.get(DisableAbortCapturesOnStopQuirk.class) == null && Build.VERSION.SDK_INT >= 30) {
            z2 = true;
        }
        return new CameraGraph.Flags(false, z2, new CameraGraph.RepeatingRequestRequirementsBeforeCapture(cameraQuirks.getQuirks().contains(QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk.class) ? 1 : 0, CameraGraph.RepeatingRequestRequirementsBeforeCapture.CompletionBehavior.AT_LEAST, null), null, iM1410getBehaviorBm6Tfm4, true, zShouldCloseCameraDevice, true, 9, null);
    }

    /* JADX INFO: renamed from: toDynamicRangeProfile--zsJmt4, reason: not valid java name */
    private final OutputStream.DynamicRangeProfile m1431toDynamicRangeProfilezsJmt4(DynamicRange dynamicRange) {
        if (Build.VERSION.SDK_INT < 33) {
            return null;
        }
        OutputStream.DynamicRangeProfile dynamicRangeProfileM1700boximpl = OutputStream.DynamicRangeProfile.m1700boximpl(OutputStream.DynamicRangeProfile.Companion.m1707getSTANDARDfFAQAUE());
        DynamicRangeProfiles dynamicRangeProfiles = this.supportedDynamicRangeProfiles;
        if (dynamicRangeProfiles != null) {
            Long lDynamicRangeToFirstSupportedProfile = DynamicRangeConversions.INSTANCE.dynamicRangeToFirstSupportedProfile(dynamicRange, dynamicRangeProfiles);
            if (lDynamicRangeToFirstSupportedProfile != null) {
                return OutputStream.DynamicRangeProfile.m1700boximpl(OutputStream.DynamicRangeProfile.m1701constructorimpl(lDynamicRangeToFirstSupportedProfile.longValue()));
            }
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isErrorEnabled("CXCP")) {
                Log.e(Camera2Logger.TRUNCATED_TAG, "Requested dynamic range is not supported. Defaulting to STANDARD dynamic range profile.\nRequested dynamic range:\n " + dynamicRange);
            }
        }
        return dynamicRangeProfileM1700boximpl;
    }

    private final Camera2ImplConfig toCamera2ImplConfig(SessionConfig sessionConfig) {
        Config implementationOptions = sessionConfig.getImplementationOptions();
        Intrinsics.checkNotNullExpressionValue(implementationOptions, "getImplementationOptions(...)");
        return new Camera2ImplConfig(implementationOptions);
    }

    private final Integer getVideoStabilizationModeFromCaptureConfig(CaptureConfig captureConfig) {
        int previewStabilizationMode = captureConfig.getPreviewStabilizationMode();
        int videoStabilizationMode = captureConfig.getVideoStabilizationMode();
        if (previewStabilizationMode == 1 || videoStabilizationMode == 1) {
            return 0;
        }
        if (previewStabilizationMode == 2) {
            return 2;
        }
        return videoStabilizationMode == 2 ? 1 : null;
    }

    public String toString() {
        return "CameraGraphConfigProvider<" + ((Object) CameraId.m1607toStringimpl(this.cameraConfig.m1417getCameraIdDz_R5H8())) + '>';
    }
}
