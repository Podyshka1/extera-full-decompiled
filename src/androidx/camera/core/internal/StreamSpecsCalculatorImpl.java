package androidx.camera.core.internal;

import android.graphics.Rect;
import android.util.Pair;
import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraDeviceSurfaceManager;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.SurfaceStreamSpecQueryResult;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.UseCaseUtil;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.camera.core.streamsharing.StreamSharing;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 %2\u00020\u0001:\u0001%B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016Jb\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\r2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\r0\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016JJ\u0010\u001c\u001a&\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u001f0\u001e\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00120\u001e0\u001d2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J^\u0010!\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00120\u001e2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020$0\u001e2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;", "Landroidx/camera/core/internal/StreamSpecsCalculator;", "useCaseConfigFactory", "Landroidx/camera/core/impl/UseCaseConfigFactory;", "cameraDeviceSurfaceManager", "Landroidx/camera/core/impl/CameraDeviceSurfaceManager;", "<init>", "(Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/impl/CameraDeviceSurfaceManager;)V", "setCameraDeviceSurfaceManager", _UrlKt.FRAGMENT_ENCODE_SET, "calculateSuggestedStreamSpecs", "Landroidx/camera/core/internal/StreamSpecQueryResult;", "cameraMode", _UrlKt.FRAGMENT_ENCODE_SET, "cameraInfoInternal", "Landroidx/camera/core/impl/CameraInfoInternal;", "newUseCases", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/UseCase;", "attachedUseCases", "cameraConfig", "Landroidx/camera/core/impl/CameraConfig;", "sessionType", "targetFrameRate", "Landroid/util/Range;", "isFeatureComboInvocation", _UrlKt.FRAGMENT_ENCODE_SET, "findMaxSupportedFrameRate", "calculateSuggestedStreamSpecsForAttachedUseCases", "Landroid/util/Pair;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/StreamSpec;", "Landroidx/camera/core/impl/AttachedSurfaceInfo;", "calculateSuggestedStreamSpecsForNewUseCases", "attachedSurfaceInfoToUseCaseMap", "configPairMap", "Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;", "Companion", "camera-core"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class StreamSpecsCalculatorImpl implements StreamSpecsCalculator {
    private static final Companion Companion = new Companion(null);
    private CameraDeviceSurfaceManager cameraDeviceSurfaceManager;
    private final UseCaseConfigFactory useCaseConfigFactory;

    public StreamSpecsCalculatorImpl(UseCaseConfigFactory useCaseConfigFactory, CameraDeviceSurfaceManager cameraDeviceSurfaceManager) {
        this.useCaseConfigFactory = useCaseConfigFactory;
        this.cameraDeviceSurfaceManager = cameraDeviceSurfaceManager;
    }

    @Override // androidx.camera.core.internal.StreamSpecsCalculator
    public void setCameraDeviceSurfaceManager(CameraDeviceSurfaceManager cameraDeviceSurfaceManager) {
        this.cameraDeviceSurfaceManager = cameraDeviceSurfaceManager;
    }

    @Override // androidx.camera.core.internal.StreamSpecsCalculator
    public StreamSpecQueryResult calculateSuggestedStreamSpecs(int cameraMode, CameraInfoInternal cameraInfoInternal, List<? extends UseCase> newUseCases, List<? extends UseCase> attachedUseCases, CameraConfig cameraConfig, int sessionType, Range<Integer> targetFrameRate, boolean isFeatureComboInvocation, boolean findMaxSupportedFrameRate) {
        Pair<Map<UseCase, StreamSpec>, Map<AttachedSurfaceInfo, UseCase>> pairCalculateSuggestedStreamSpecsForAttachedUseCases = calculateSuggestedStreamSpecsForAttachedUseCases(cameraMode, cameraInfoInternal, attachedUseCases);
        StreamSpecQueryResult streamSpecQueryResultCalculateSuggestedStreamSpecsForNewUseCases = calculateSuggestedStreamSpecsForNewUseCases(cameraMode, cameraInfoInternal, newUseCases, (Map) pairCalculateSuggestedStreamSpecsForAttachedUseCases.second, CameraUseCaseAdapter.getConfigs(newUseCases, cameraConfig.getUseCaseConfigFactory(), this.useCaseConfigFactory, sessionType, targetFrameRate), isFeatureComboInvocation, findMaxSupportedFrameRate);
        return new StreamSpecQueryResult(MapsKt.plus((Map) pairCalculateSuggestedStreamSpecsForAttachedUseCases.first, streamSpecQueryResultCalculateSuggestedStreamSpecsForNewUseCases.getStreamSpecs()), streamSpecQueryResultCalculateSuggestedStreamSpecsForNewUseCases.getMaxSupportedFrameRate());
    }

    private final Pair<Map<UseCase, StreamSpec>, Map<AttachedSurfaceInfo, UseCase>> calculateSuggestedStreamSpecsForAttachedUseCases(int cameraMode, CameraInfoInternal cameraInfoInternal, List<? extends UseCase> attachedUseCases) {
        ArrayList arrayList = new ArrayList();
        String cameraId = cameraInfoInternal.getCameraId();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (UseCase useCase : attachedUseCases) {
            StreamSpec attachedStreamSpec = useCase.getAttachedStreamSpec();
            if (attachedStreamSpec == null) {
                f$$ExternalSyntheticBUOutline1.m212m("Attached stream spec cannot be null for already attached use cases.");
                return null;
            }
            CameraDeviceSurfaceManager cameraDeviceSurfaceManager = this.cameraDeviceSurfaceManager;
            if (cameraDeviceSurfaceManager == null) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Required value was null.");
                return null;
            }
            int imageFormat = useCase.getImageFormat();
            Size attachedSurfaceResolution = useCase.getAttachedSurfaceResolution();
            if (attachedSurfaceResolution != null) {
                SurfaceConfig surfaceConfigTransformSurfaceConfig = cameraDeviceSurfaceManager.transformSurfaceConfig(cameraMode, cameraId, imageFormat, attachedSurfaceResolution, useCase.getCurrentConfig().getStreamUseCase());
                int imageFormat2 = useCase.getImageFormat();
                Size attachedSurfaceResolution2 = useCase.getAttachedSurfaceResolution();
                DynamicRange dynamicRange = attachedStreamSpec.getDynamicRange();
                List<UseCaseConfigFactory.CaptureType> captureTypes = StreamSharing.getCaptureTypes(useCase);
                Config implementationOptions = attachedStreamSpec.getImplementationOptions();
                int sessionType = useCase.getCurrentConfig().getSessionType(0);
                Range<Integer> targetFrameRate = useCase.getCurrentConfig().getTargetFrameRate(StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED);
                if (targetFrameRate != null) {
                    AttachedSurfaceInfo attachedSurfaceInfoCreate = AttachedSurfaceInfo.create(surfaceConfigTransformSurfaceConfig, imageFormat2, attachedSurfaceResolution2, dynamicRange, captureTypes, implementationOptions, sessionType, targetFrameRate, useCase.getCurrentConfig().isStrictFrameRateRequired(), useCase.getCurrentConfig().getCustomMaxFrameRate(useCase.getAttachedSurfaceResolution()));
                    arrayList.add(attachedSurfaceInfoCreate);
                    linkedHashMap2.put(attachedSurfaceInfoCreate, useCase);
                    linkedHashMap.put(useCase, attachedStreamSpec);
                } else {
                    f$$ExternalSyntheticBUOutline1.m212m("Required value was null.");
                    return null;
                }
            } else {
                f$$ExternalSyntheticBUOutline1.m212m("Attached surface resolution cannot be null for already attached use cases.");
                return null;
            }
        }
        return new Pair<>(linkedHashMap, linkedHashMap2);
    }

    private final StreamSpecQueryResult calculateSuggestedStreamSpecsForNewUseCases(int cameraMode, final CameraInfoInternal cameraInfoInternal, List<? extends UseCase> newUseCases, Map<AttachedSurfaceInfo, ? extends UseCase> attachedSurfaceInfoToUseCaseMap, final Map<UseCase, ? extends CameraUseCaseAdapter.ConfigPair> configPairMap, boolean isFeatureComboInvocation, boolean findMaxSupportedFrameRate) {
        int maxSupportedFrameRate;
        Rect sensorRect;
        String cameraId = cameraInfoInternal.getCameraId();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (newUseCases.isEmpty()) {
            maxSupportedFrameRate = Integer.MAX_VALUE;
        } else {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            try {
                sensorRect = cameraInfoInternal.getSensorRect();
            } catch (NullPointerException unused) {
                sensorRect = null;
            }
            SupportedOutputSizesSorter supportedOutputSizesSorter = new SupportedOutputSizesSorter(cameraInfoInternal, sensorRect != null ? TransformUtils.rectToSize(sensorRect) : null);
            for (UseCase useCase : newUseCases) {
                CameraUseCaseAdapter.ConfigPair configPair = configPairMap.get(useCase);
                if (configPair == null) {
                    f$$ExternalSyntheticBUOutline1.m212m("Required value was null.");
                    return null;
                }
                CameraUseCaseAdapter.ConfigPair configPair2 = configPair;
                UseCaseConfig<?> useCaseConfigMergeConfigs = useCase.mergeConfigs(cameraInfoInternal, configPair2.mExtendedConfig, configPair2.mCameraConfig);
                linkedHashMap2.put(useCaseConfigMergeConfigs, useCase);
                linkedHashMap3.put(useCaseConfigMergeConfigs, supportedOutputSizesSorter.getSortedSupportedOutputSizes(useCaseConfigMergeConfigs));
            }
            List<? extends UseCase> list = newUseCases;
            VideoStabilization videoStabilization = UseCaseUtil.getVideoStabilization(list, new Function1() { // from class: androidx.camera.core.internal.StreamSpecsCalculatorImpl$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return StreamSpecsCalculatorImpl.m1673$r8$lambda$EiSDIaVoOjJPVqGwZrvYw4fiRY(configPairMap, cameraInfoInternal, (UseCase) obj);
                }
            });
            CameraDeviceSurfaceManager cameraDeviceSurfaceManager = this.cameraDeviceSurfaceManager;
            if (cameraDeviceSurfaceManager == null) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Required value was null.");
                return null;
            }
            SurfaceStreamSpecQueryResult suggestedStreamSpecs = cameraDeviceSurfaceManager.getSuggestedStreamSpecs(cameraMode, cameraId, new ArrayList(attachedSurfaceInfoToUseCaseMap.keySet()), linkedHashMap3, videoStabilization, UseCaseUtil.containsVideoCapture(list), isFeatureComboInvocation, findMaxSupportedFrameRate);
            Map<UseCaseConfig<?>, StreamSpec> mapComponent1 = suggestedStreamSpecs.component1();
            Map<AttachedSurfaceInfo, StreamSpec> mapComponent2 = suggestedStreamSpecs.component2();
            maxSupportedFrameRate = suggestedStreamSpecs.getMaxSupportedFrameRate();
            for (Map.Entry entry : linkedHashMap2.entrySet()) {
                Object value = entry.getValue();
                StreamSpec streamSpec = mapComponent1.get(entry.getKey());
                if (streamSpec != null) {
                    linkedHashMap.put(value, streamSpec);
                } else {
                    f$$ExternalSyntheticBUOutline1.m212m("Required value was null.");
                    return null;
                }
            }
            for (Map.Entry<AttachedSurfaceInfo, StreamSpec> entry2 : mapComponent2.entrySet()) {
                if (attachedSurfaceInfoToUseCaseMap.containsKey(entry2.getKey())) {
                    UseCase useCase2 = attachedSurfaceInfoToUseCaseMap.get(entry2.getKey());
                    if (useCase2 != null) {
                        linkedHashMap.put(useCase2, entry2.getValue());
                    } else {
                        f$$ExternalSyntheticBUOutline1.m212m("Required value was null.");
                        return null;
                    }
                }
            }
        }
        return new StreamSpecQueryResult(linkedHashMap, maxSupportedFrameRate);
    }

    /* JADX INFO: renamed from: $r8$lambda$EiSDIaV-oOjJPVqGwZrvYw4fiRY, reason: not valid java name */
    public static UseCaseConfig m1673$r8$lambda$EiSDIaVoOjJPVqGwZrvYw4fiRY(Map map, CameraInfoInternal cameraInfoInternal, UseCase useCase) {
        Object obj = map.get(useCase);
        if (obj == null) {
            f$$ExternalSyntheticBUOutline1.m212m("Required value was null.");
            return null;
        }
        CameraUseCaseAdapter.ConfigPair configPair = (CameraUseCaseAdapter.ConfigPair) obj;
        return useCase.mergeConfigs(cameraInfoInternal, configPair.mExtendedConfig, configPair.mCameraConfig);
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Landroidx/camera/core/internal/StreamSpecsCalculatorImpl$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "TAG", _UrlKt.FRAGMENT_ENCODE_SET, "camera-core"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
