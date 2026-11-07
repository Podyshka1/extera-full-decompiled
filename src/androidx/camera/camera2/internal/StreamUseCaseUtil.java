package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import android.util.Log;
import androidx.camera.camera2.adapter.SupportedSurfaceCombination;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.streamsharing.StreamSharingConfig;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Buffer$$ExternalSyntheticBUOutline2;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\"\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J-\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u000f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J+\u0010\u0017\u001a\u00020\n2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00060\u00142\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00060\u0014H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001a\u0010\u0003J=\u0010 \u001a\u00020\n2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\b2\u0010\u0010\u001e\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001d0\b2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0014H\u0002¢\u0006\u0004\b \u0010!J\u001f\u0010$\u001a\u00020\"2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\"H\u0003¢\u0006\u0004\b$\u0010%JA\u0010-\u001a\u00020\u00192\f\u0010(\u001a\b\u0012\u0004\u0012\u00020'0&2\u0010\u0010)\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001d0&2\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u00060*¢\u0006\u0004\b-\u0010.J\u0019\u00101\u001a\u0002002\n\u0010/\u001a\u0006\u0012\u0002\b\u00030\u001d¢\u0006\u0004\b1\u00102J\u0015\u00105\u001a\u00020\n2\u0006\u00104\u001a\u000203¢\u0006\u0004\b5\u00106J\u0015\u00109\u001a\u00020\n2\u0006\u00108\u001a\u000207¢\u0006\u0004\b9\u0010:JO\u0010>\u001a\u00020\n2\u0006\u00104\u001a\u0002032\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\b2\u0016\u0010<\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001d\u0012\u0004\u0012\u00020;0*2\u0012\u0010=\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020;0*¢\u0006\u0004\b>\u0010?J#\u0010B\u001a\u00020\n2\u0006\u00104\u001a\u0002032\f\u0010A\u001a\b\u0012\u0004\u0012\u00020@0\b¢\u0006\u0004\bB\u0010CJI\u0010H\u001a\u00020\n2\u0014\u0010E\u001a\u0010\u0012\u0004\u0012\u00020\"\u0012\u0006\u0012\u0004\u0018\u00010\u001b0D2\u0016\u0010F\u001a\u0012\u0012\u0004\u0012\u00020\"\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001d0D2\f\u0010G\u001a\b\u0012\u0004\u0012\u00020@0\b¢\u0006\u0004\bH\u0010IJs\u0010J\u001a\u00020\u00192\u0016\u0010<\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001d\u0012\u0004\u0012\u00020;0*2\u0012\u0010=\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020;0*2\u0012\u0010E\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u001b0D2\u0016\u0010F\u001a\u0012\u0012\u0004\u0012\u00020\"\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001d0D2\f\u0010G\u001a\b\u0012\u0004\u0012\u00020@0\b¢\u0006\u0004\bJ\u0010KJ-\u0010L\u001a\u00020\n2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\b2\u0010\u0010\u001e\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001d0\b¢\u0006\u0004\bL\u0010MR&\u0010O\u001a\b\u0012\u0004\u0012\u00020\u00060N8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\bO\u0010P\u0012\u0004\bS\u0010\u0003\u001a\u0004\bQ\u0010RR&\u0010T\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00140D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bT\u0010UR&\u0010V\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00140D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bV\u0010U¨\u0006W"}, d2 = {"Landroidx/camera/camera2/internal/StreamUseCaseUtil;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;", "captureType", _UrlKt.FRAGMENT_ENCODE_SET, "streamUseCase", _UrlKt.FRAGMENT_ENCODE_SET, "streamSharingTypes", _UrlKt.FRAGMENT_ENCODE_SET, "isEligibleCaptureType", "(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;JLjava/util/List;)Z", "Landroidx/camera/core/impl/Config;", "oldImplementationOptions", "getUpdatedImplementationOptionsWithUseCaseStreamSpecOption", "(Landroidx/camera/core/impl/Config;Ljava/lang/Long;)Landroidx/camera/core/impl/Config;", "config", "isZslUseCase", "(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "availableStreamUseCasesSet", "streamUseCases", "areStreamUseCasesAvailable", "(Ljava/util/Set;Ljava/util/Set;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "throwInvalidCamera2InteropOverrideException", "Landroidx/camera/core/impl/AttachedSurfaceInfo;", "attachedSurfaces", "Landroidx/camera/core/impl/UseCaseConfig;", "newUseCaseConfigs", "availableStreamUseCases", "isValidCamera2InteropOverride", "(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "captureMode", "getSessionConfigTemplateType", "(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;I)I", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/SessionConfig;", "sessionConfigs", "useCaseConfigs", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/DeferrableSurface;", "streamUseCaseMap", "populateSurfaceToStreamUseCaseMapping", "(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;)V", "useCaseConfig", "Landroidx/camera/camera2/impl/Camera2ImplConfig;", "getStreamSpecImplementationOptions", "(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/camera2/impl/Camera2ImplConfig;", "Landroidx/camera/camera2/pipe/CameraMetadata;", "cameraMetadata", "isStreamUseCaseSupported", "(Landroidx/camera/camera2/pipe/CameraMetadata;)Z", "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;", "featureSettings", "shouldUseStreamUseCase", "(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Z", "Landroidx/camera/core/impl/StreamSpec;", "suggestedStreamSpecMap", "attachedSurfaceStreamSpecMap", "populateStreamUseCaseStreamSpecOptionWithInteropOverride", "(Landroidx/camera/camera2/pipe/CameraMetadata;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Z", "Landroidx/camera/core/impl/SurfaceConfig;", "surfaceConfigs", "areStreamUseCasesAvailableForSurfaceConfigs", "(Landroidx/camera/camera2/pipe/CameraMetadata;Ljava/util/List;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "surfaceConfigIndexAttachedSurfaceInfoMap", "surfaceConfigIndexUseCaseConfigMap", "surfaceConfigsWithStreamUseCase", "areCaptureTypesEligible", "(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Z", "populateStreamUseCaseStreamSpecOptionWithSupportedSurfaceConfigs", "(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V", "containsZslUseCase", "(Ljava/util/List;Ljava/util/List;)Z", "Landroidx/camera/core/impl/Config$Option;", "STREAM_USE_CASE_STREAM_SPEC_OPTION", "Landroidx/camera/core/impl/Config$Option;", "getSTREAM_USE_CASE_STREAM_SPEC_OPTION", "()Landroidx/camera/core/impl/Config$Option;", "getSTREAM_USE_CASE_STREAM_SPEC_OPTION$annotations", "STREAM_USE_CASE_TO_ELIGIBLE_CAPTURE_TYPES_MAP", "Ljava/util/Map;", "STREAM_USE_CASE_TO_ELIGIBLE_STREAM_SHARING_CHILDREN_TYPES_MAP", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nStreamUseCaseUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamUseCaseUtil.kt\nandroidx/camera/camera2/internal/StreamUseCaseUtil\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,634:1\n136#2,4:635\n85#2,4:639\n*S KotlinDebug\n*F\n+ 1 StreamUseCaseUtil.kt\nandroidx/camera/camera2/internal/StreamUseCaseUtil\n*L\n122#1:635,4\n167#1:639,4\n*E\n"})
public final class StreamUseCaseUtil {
    public static final StreamUseCaseUtil INSTANCE = new StreamUseCaseUtil();
    private static final Config.Option<Long> STREAM_USE_CASE_STREAM_SPEC_OPTION = Config.Option.create("camera2.streamSpec.streamUseCase", Long.TYPE);
    private static final Map<Long, Set<UseCaseConfigFactory.CaptureType>> STREAM_USE_CASE_TO_ELIGIBLE_CAPTURE_TYPES_MAP;
    private static final Map<Long, Set<UseCaseConfigFactory.CaptureType>> STREAM_USE_CASE_TO_ELIGIBLE_STREAM_SHARING_CHILDREN_TYPES_MAP;

    @Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[UseCaseConfigFactory.CaptureType.values().length];
            try {
                iArr[UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[UseCaseConfigFactory.CaptureType.STREAM_SHARING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[UseCaseConfigFactory.CaptureType.PREVIEW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[UseCaseConfigFactory.CaptureType.IMAGE_ANALYSIS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private StreamUseCaseUtil() {
    }

    static {
        Map mapCreateMapBuilder = MapsKt.createMapBuilder();
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            UseCaseConfigFactory.CaptureType captureType = UseCaseConfigFactory.CaptureType.PREVIEW;
            UseCaseConfigFactory.CaptureType captureType2 = UseCaseConfigFactory.CaptureType.METERING_REPEATING;
            UseCaseConfigFactory.CaptureType captureType3 = UseCaseConfigFactory.CaptureType.IMAGE_ANALYSIS;
            mapCreateMapBuilder.put(4L, SetsKt.setOf((Object[]) new UseCaseConfigFactory.CaptureType[]{captureType, captureType2, captureType3}));
            mapCreateMapBuilder.put(1L, SetsKt.setOf((Object[]) new UseCaseConfigFactory.CaptureType[]{captureType, captureType2, captureType3}));
            mapCreateMapBuilder.put(2L, SetsKt.setOf(UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE));
            mapCreateMapBuilder.put(3L, SetsKt.setOf(UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE));
        }
        STREAM_USE_CASE_TO_ELIGIBLE_CAPTURE_TYPES_MAP = MapsKt.build(mapCreateMapBuilder);
        Map mapCreateMapBuilder2 = MapsKt.createMapBuilder();
        if (i >= 33) {
            UseCaseConfigFactory.CaptureType captureType4 = UseCaseConfigFactory.CaptureType.PREVIEW;
            UseCaseConfigFactory.CaptureType captureType5 = UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE;
            UseCaseConfigFactory.CaptureType captureType6 = UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE;
            mapCreateMapBuilder2.put(4L, SetsKt.setOf((Object[]) new UseCaseConfigFactory.CaptureType[]{captureType4, captureType5, captureType6}));
            mapCreateMapBuilder2.put(3L, SetsKt.setOf((Object[]) new UseCaseConfigFactory.CaptureType[]{captureType4, captureType6}));
        }
        STREAM_USE_CASE_TO_ELIGIBLE_STREAM_SHARING_CHILDREN_TYPES_MAP = MapsKt.build(mapCreateMapBuilder2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void populateSurfaceToStreamUseCaseMapping(Collection<SessionConfig> sessionConfigs, Collection<? extends UseCaseConfig<?>> useCaseConfigs, Map<DeferrableSurface, Long> streamUseCaseMap) {
        ArrayList arrayList = new ArrayList(useCaseConfigs);
        Iterator<SessionConfig> it = sessionConfigs.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            SessionConfig next = it.next();
            Config implementationOptions = next.getImplementationOptions();
            Config.Option<Long> option = STREAM_USE_CASE_STREAM_SPEC_OPTION;
            if (implementationOptions.containsOption(option) && next.getSurfaces().size() != 1) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isErrorEnabled("CXCP")) {
                    Log.e(Camera2Logger.TRUNCATED_TAG, "StreamUseCaseUtil: SessionConfig has stream use case but also contains " + next.getSurfaces().size() + " surfaces, abort populateSurfaceToStreamUseCaseMapping().");
                    return;
                }
                return;
            }
            if (next.getImplementationOptions().containsOption(option)) {
                int i = 0;
                for (SessionConfig sessionConfig : sessionConfigs) {
                    if (((UseCaseConfig) arrayList.get(i)).getCaptureType() == UseCaseConfigFactory.CaptureType.METERING_REPEATING) {
                        Preconditions.checkState(!sessionConfig.getSurfaces().isEmpty(), "MeteringRepeating should contain a surface");
                        streamUseCaseMap.put(sessionConfig.getSurfaces().get(0), 1L);
                    } else {
                        Config implementationOptions2 = sessionConfig.getImplementationOptions();
                        Config.Option<Long> option2 = STREAM_USE_CASE_STREAM_SPEC_OPTION;
                        if (implementationOptions2.containsOption(option2) && !sessionConfig.getSurfaces().isEmpty()) {
                            streamUseCaseMap.put(sessionConfig.getSurfaces().get(0), sessionConfig.getImplementationOptions().retrieveOption(option2));
                        }
                    }
                    i++;
                }
            }
        }
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "populateSurfaceToStreamUseCaseMapping() - streamUseCaseMap = " + streamUseCaseMap);
        }
    }

    public final Camera2ImplConfig getStreamSpecImplementationOptions(UseCaseConfig<?> useCaseConfig) {
        MutableOptionsBundle mutableOptionsBundleCreate = MutableOptionsBundle.create();
        Config.Option<?> option = Camera2ImplConfig.STREAM_USE_CASE_OPTION;
        if (useCaseConfig.containsOption(option)) {
            mutableOptionsBundleCreate.insertOption(option, useCaseConfig.retrieveOption(option));
        }
        Config.Option<?> option2 = UseCaseConfig.OPTION_ZSL_DISABLED;
        if (useCaseConfig.containsOption(option2)) {
            mutableOptionsBundleCreate.insertOption(option2, useCaseConfig.retrieveOption(option2));
        }
        Config.Option<?> option3 = ImageCaptureConfig.OPTION_IMAGE_CAPTURE_MODE;
        if (useCaseConfig.containsOption(option3)) {
            mutableOptionsBundleCreate.insertOption(option3, useCaseConfig.retrieveOption(option3));
        }
        Config.Option<?> option4 = ImageInputConfig.OPTION_INPUT_FORMAT;
        if (useCaseConfig.containsOption(option4)) {
            mutableOptionsBundleCreate.insertOption(option4, useCaseConfig.retrieveOption(option4));
        }
        return new Camera2ImplConfig(mutableOptionsBundleCreate);
    }

    public final boolean isStreamUseCaseSupported(CameraMetadata cameraMetadata) {
        long[] jArr;
        return (Build.VERSION.SDK_INT < 33 || (jArr = (long[]) cameraMetadata.get(CameraCharacteristics.SCALER_AVAILABLE_STREAM_USE_CASES)) == null || jArr.length == 0) ? false : true;
    }

    public final boolean shouldUseStreamUseCase(SupportedSurfaceCombination.FeatureSettings featureSettings) {
        return featureSettings.getCameraMode() == 0 && featureSettings.getRequiredMaxBitDepth() == 8 && !featureSettings.getIsHighSpeedOn();
    }

    public final boolean populateStreamUseCaseStreamSpecOptionWithInteropOverride(CameraMetadata cameraMetadata, List<? extends AttachedSurfaceInfo> attachedSurfaces, Map<UseCaseConfig<?>, StreamSpec> suggestedStreamSpecMap, Map<AttachedSurfaceInfo, StreamSpec> attachedSurfaceStreamSpecMap) {
        int i = 0;
        if (Build.VERSION.SDK_INT < 33) {
            return false;
        }
        ArrayList arrayList = new ArrayList(suggestedStreamSpecMap.keySet());
        Iterator<? extends AttachedSurfaceInfo> it = attachedSurfaces.iterator();
        while (it.hasNext()) {
            if (it.next().getImplementationOptions() == null) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Required value was null.");
                return false;
            }
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            StreamSpec streamSpec = suggestedStreamSpecMap.get((UseCaseConfig) obj);
            if (streamSpec == null) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Required value was null.");
                return false;
            }
            if (streamSpec.getImplementationOptions() == null) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Required value was null.");
                return false;
            }
        }
        long[] jArr = (long[]) cameraMetadata.get(CameraCharacteristics.SCALER_AVAILABLE_STREAM_USE_CASES);
        if (jArr != null && jArr.length != 0) {
            Set<Long> hashSet = new HashSet<>();
            for (long j : jArr) {
                hashSet.add(Long.valueOf(j));
            }
            if (isValidCamera2InteropOverride(attachedSurfaces, arrayList, hashSet)) {
                for (AttachedSurfaceInfo attachedSurfaceInfo : attachedSurfaces) {
                    Config implementationOptions = attachedSurfaceInfo.getImplementationOptions();
                    Config updatedImplementationOptionsWithUseCaseStreamSpecOption = getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(implementationOptions, (Long) implementationOptions.retrieveOption(Camera2ImplConfig.STREAM_USE_CASE_OPTION));
                    if (updatedImplementationOptionsWithUseCaseStreamSpecOption != null) {
                        attachedSurfaceStreamSpecMap.put(attachedSurfaceInfo, attachedSurfaceInfo.toStreamSpec(updatedImplementationOptionsWithUseCaseStreamSpecOption));
                    }
                }
                int size2 = arrayList.size();
                while (i < size2) {
                    Object obj2 = arrayList.get(i);
                    i++;
                    UseCaseConfig<?> useCaseConfig = (UseCaseConfig) obj2;
                    StreamSpec streamSpec2 = suggestedStreamSpecMap.get(useCaseConfig);
                    Config implementationOptions2 = streamSpec2.getImplementationOptions();
                    Config updatedImplementationOptionsWithUseCaseStreamSpecOption2 = getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(implementationOptions2, (Long) implementationOptions2.retrieveOption(Camera2ImplConfig.STREAM_USE_CASE_OPTION));
                    if (updatedImplementationOptionsWithUseCaseStreamSpecOption2 != null) {
                        suggestedStreamSpecMap.put(useCaseConfig, streamSpec2.toBuilder().setImplementationOptions(updatedImplementationOptionsWithUseCaseStreamSpecOption2).build());
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final boolean areStreamUseCasesAvailableForSurfaceConfigs(CameraMetadata cameraMetadata, List<SurfaceConfig> surfaceConfigs) {
        long[] jArr;
        if (Build.VERSION.SDK_INT < 33 || (jArr = (long[]) cameraMetadata.get(CameraCharacteristics.SCALER_AVAILABLE_STREAM_USE_CASES)) == null || jArr.length == 0) {
            return false;
        }
        HashSet hashSet = new HashSet();
        for (long j : jArr) {
            hashSet.add(Long.valueOf(j));
        }
        Iterator<SurfaceConfig> it = surfaceConfigs.iterator();
        while (it.hasNext()) {
            if (!hashSet.contains(Long.valueOf(it.next().getStreamUseCase().getValue()))) {
                return false;
            }
        }
        return true;
    }

    private final boolean isEligibleCaptureType(UseCaseConfigFactory.CaptureType captureType, long streamUseCase, List<? extends UseCaseConfigFactory.CaptureType> streamSharingTypes) {
        if (Build.VERSION.SDK_INT < 33) {
            return false;
        }
        if (captureType == UseCaseConfigFactory.CaptureType.STREAM_SHARING) {
            Map<Long, Set<UseCaseConfigFactory.CaptureType>> map = STREAM_USE_CASE_TO_ELIGIBLE_STREAM_SHARING_CHILDREN_TYPES_MAP;
            if (!map.containsKey(Long.valueOf(streamUseCase))) {
                return false;
            }
            Set<UseCaseConfigFactory.CaptureType> set = map.get(Long.valueOf(streamUseCase));
            if (streamSharingTypes.size() != set.size()) {
                return false;
            }
            Iterator<? extends UseCaseConfigFactory.CaptureType> it = streamSharingTypes.iterator();
            while (it.hasNext()) {
                if (!set.contains(it.next())) {
                    return false;
                }
            }
            return true;
        }
        Map<Long, Set<UseCaseConfigFactory.CaptureType>> map2 = STREAM_USE_CASE_TO_ELIGIBLE_CAPTURE_TYPES_MAP;
        return map2.containsKey(Long.valueOf(streamUseCase)) && map2.get(Long.valueOf(streamUseCase)).contains(captureType);
    }

    public final boolean areCaptureTypesEligible(Map<Integer, ? extends AttachedSurfaceInfo> surfaceConfigIndexAttachedSurfaceInfoMap, Map<Integer, ? extends UseCaseConfig<?>> surfaceConfigIndexUseCaseConfigMap, List<SurfaceConfig> surfaceConfigsWithStreamUseCase) {
        List<UseCaseConfigFactory.CaptureType> listEmptyList;
        UseCaseConfigFactory.CaptureType captureType;
        int size = surfaceConfigsWithStreamUseCase.size();
        for (int i = 0; i < size; i++) {
            long value = surfaceConfigsWithStreamUseCase.get(i).getStreamUseCase().getValue();
            if (surfaceConfigIndexAttachedSurfaceInfoMap.containsKey(Integer.valueOf(i))) {
                AttachedSurfaceInfo attachedSurfaceInfo = surfaceConfigIndexAttachedSurfaceInfoMap.get(Integer.valueOf(i));
                if (attachedSurfaceInfo.getCaptureTypes().size() == 1) {
                    captureType = attachedSurfaceInfo.getCaptureTypes().get(0);
                } else {
                    captureType = UseCaseConfigFactory.CaptureType.STREAM_SHARING;
                }
                if (!isEligibleCaptureType(captureType, value, attachedSurfaceInfo.getCaptureTypes())) {
                    return false;
                }
            } else if (surfaceConfigIndexUseCaseConfigMap.containsKey(Integer.valueOf(i))) {
                UseCaseConfig<?> useCaseConfig = surfaceConfigIndexUseCaseConfigMap.get(Integer.valueOf(i));
                UseCaseConfigFactory.CaptureType captureType2 = useCaseConfig.getCaptureType();
                if (useCaseConfig.getCaptureType() == UseCaseConfigFactory.CaptureType.STREAM_SHARING) {
                    listEmptyList = ((StreamSharingConfig) useCaseConfig).getCaptureTypes();
                } else {
                    listEmptyList = CollectionsKt.emptyList();
                }
                if (!isEligibleCaptureType(captureType2, value, listEmptyList)) {
                    return false;
                }
            } else {
                Buffer$$ExternalSyntheticBUOutline2.m917m("SurfaceConfig does not map to any use case");
                return false;
            }
        }
        return true;
    }

    public final void populateStreamUseCaseStreamSpecOptionWithSupportedSurfaceConfigs(Map<UseCaseConfig<?>, StreamSpec> suggestedStreamSpecMap, Map<AttachedSurfaceInfo, StreamSpec> attachedSurfaceStreamSpecMap, Map<Integer, ? extends AttachedSurfaceInfo> surfaceConfigIndexAttachedSurfaceInfoMap, Map<Integer, ? extends UseCaseConfig<?>> surfaceConfigIndexUseCaseConfigMap, List<SurfaceConfig> surfaceConfigsWithStreamUseCase) {
        int size = surfaceConfigsWithStreamUseCase.size();
        for (int i = 0; i < size; i++) {
            long value = surfaceConfigsWithStreamUseCase.get(i).getStreamUseCase().getValue();
            if (surfaceConfigIndexAttachedSurfaceInfoMap.containsKey(Integer.valueOf(i))) {
                AttachedSurfaceInfo attachedSurfaceInfo = surfaceConfigIndexAttachedSurfaceInfoMap.get(Integer.valueOf(i));
                Config updatedImplementationOptionsWithUseCaseStreamSpecOption = getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(attachedSurfaceInfo.getImplementationOptions(), Long.valueOf(value));
                if (updatedImplementationOptionsWithUseCaseStreamSpecOption != null) {
                    attachedSurfaceStreamSpecMap.put(attachedSurfaceInfo, attachedSurfaceInfo.toStreamSpec(updatedImplementationOptionsWithUseCaseStreamSpecOption));
                }
            } else if (surfaceConfigIndexUseCaseConfigMap.containsKey(Integer.valueOf(i))) {
                UseCaseConfig<?> useCaseConfig = surfaceConfigIndexUseCaseConfigMap.get(Integer.valueOf(i));
                StreamSpec streamSpec = suggestedStreamSpecMap.get(useCaseConfig);
                Config updatedImplementationOptionsWithUseCaseStreamSpecOption2 = getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(streamSpec.getImplementationOptions(), Long.valueOf(value));
                if (updatedImplementationOptionsWithUseCaseStreamSpecOption2 != null) {
                    suggestedStreamSpecMap.put(useCaseConfig, streamSpec.toBuilder().setImplementationOptions(updatedImplementationOptionsWithUseCaseStreamSpecOption2).build());
                }
            } else {
                Buffer$$ExternalSyntheticBUOutline2.m917m("SurfaceConfig does not map to any use case");
                return;
            }
        }
    }

    private final Config getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(Config oldImplementationOptions, Long streamUseCase) {
        Config.Option<Long> option = STREAM_USE_CASE_STREAM_SPEC_OPTION;
        if (oldImplementationOptions.containsOption(option) && Intrinsics.areEqual(oldImplementationOptions.retrieveOption(option), streamUseCase)) {
            return null;
        }
        MutableOptionsBundle mutableOptionsBundleFrom = MutableOptionsBundle.from(oldImplementationOptions);
        mutableOptionsBundleFrom.insertOption(option, streamUseCase);
        return new Camera2ImplConfig(mutableOptionsBundleFrom);
    }

    public final boolean containsZslUseCase(List<? extends AttachedSurfaceInfo> attachedSurfaces, List<? extends UseCaseConfig<?>> newUseCaseConfigs) {
        for (AttachedSurfaceInfo attachedSurfaceInfo : attachedSurfaces) {
            if (isZslUseCase(attachedSurfaceInfo.getImplementationOptions(), attachedSurfaceInfo.getCaptureTypes().get(0))) {
                return true;
            }
        }
        for (UseCaseConfig<?> useCaseConfig : newUseCaseConfigs) {
            if (isZslUseCase(useCaseConfig, useCaseConfig.getCaptureType())) {
                return true;
            }
        }
        return false;
    }

    private final boolean isZslUseCase(Config config, UseCaseConfigFactory.CaptureType captureType) {
        if (((Boolean) config.retrieveOption(UseCaseConfig.OPTION_ZSL_DISABLED, Boolean.FALSE)).booleanValue()) {
            return false;
        }
        Config.Option<Integer> option = ImageCaptureConfig.OPTION_IMAGE_CAPTURE_MODE;
        return config.containsOption(option) && getSessionConfigTemplateType(captureType, ((Number) config.retrieveOption(option)).intValue()) == 5;
    }

    private final boolean areStreamUseCasesAvailable(Set<Long> availableStreamUseCasesSet, Set<Long> streamUseCases) {
        Iterator<Long> it = streamUseCases.iterator();
        while (it.hasNext()) {
            if (!availableStreamUseCasesSet.contains(Long.valueOf(it.next().longValue()))) {
                return false;
            }
        }
        return true;
    }

    private final void throwInvalidCamera2InteropOverrideException() {
        throw new IllegalArgumentException("Either all use cases must have non-default stream use case assigned or none should have it");
    }

    private final boolean isValidCamera2InteropOverride(List<? extends AttachedSurfaceInfo> attachedSurfaces, List<? extends UseCaseConfig<?>> newUseCaseConfigs, Set<Long> availableStreamUseCases) {
        boolean z;
        boolean z2;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<? extends AttachedSurfaceInfo> it = attachedSurfaces.iterator();
        if (it.hasNext()) {
            AttachedSurfaceInfo next = it.next();
            Config implementationOptions = next.getImplementationOptions();
            Config.Option<Long> option = Camera2ImplConfig.STREAM_USE_CASE_OPTION;
            if (implementationOptions.containsOption(option) && ((Number) next.getImplementationOptions().retrieveOption(option)).longValue() != 0) {
                z = true;
                z2 = false;
            } else {
                z2 = true;
                z = false;
            }
        } else {
            z = false;
            z2 = false;
        }
        for (UseCaseConfig<?> useCaseConfig : newUseCaseConfigs) {
            Config.Option<?> option2 = Camera2ImplConfig.STREAM_USE_CASE_OPTION;
            if (useCaseConfig.containsOption(option2)) {
                long jLongValue = ((Number) useCaseConfig.retrieveOption(option2)).longValue();
                if (jLongValue != 0) {
                    if (z2) {
                        throwInvalidCamera2InteropOverrideException();
                    }
                    linkedHashSet.add(Long.valueOf(jLongValue));
                    z = true;
                } else if (z) {
                    throwInvalidCamera2InteropOverrideException();
                }
            } else if (z) {
                throwInvalidCamera2InteropOverrideException();
            }
            z2 = true;
        }
        return !z2 && areStreamUseCasesAvailable(availableStreamUseCases, linkedHashSet);
    }

    private final int getSessionConfigTemplateType(UseCaseConfigFactory.CaptureType captureType, int captureMode) {
        int i = WhenMappings.$EnumSwitchMapping$0[captureType.ordinal()];
        return i != 1 ? (i == 2 || i == 3) ? 3 : 1 : captureMode == 2 ? 5 : 1;
    }
}
