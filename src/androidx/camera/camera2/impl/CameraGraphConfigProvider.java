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
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.compat.CameraPipeKeys;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000È\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001IB[\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0014\u0010\u0015Jk\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%2\u0014\b\u0002\u0010&\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020)0'2\u0014\b\u0002\u0010*\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020)0'¢\u0006\u0004\b+\u0010,J\u001c\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J5\u00103\u001a\u0004\u0018\u0001042\u0006\u00105\u001a\u00020(2\u0012\u00106\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020)0'2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0002\b7J+\u00108\u001a\u0004\u0018\u0001092\u0006\u00105\u001a\u00020(2\u0012\u00106\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020)0'H\u0002¢\u0006\u0002\b:J\u0018\u0010;\u001a\u00020<2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010=\u001a\u00020!H\u0002J\u0013\u0010>\u001a\u0004\u0018\u00010?*\u00020@H\u0002¢\u0006\u0002\bAJ\f\u0010B\u001a\u00020C*\u00020\u001fH\u0002J\u0017\u0010D\u001a\u0004\u0018\u00010%2\u0006\u0010E\u001a\u00020FH\u0002¢\u0006\u0002\u0010GJ\b\u0010H\u001a\u000202H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006J"}, d2 = {"Landroidx/camera/camera2/impl/CameraGraphConfigProvider;", _UrlKt.FRAGMENT_ENCODE_SET, "callbackMap", "Landroidx/camera/camera2/impl/CameraCallbackMap;", "requestListener", "Landroidx/camera/camera2/impl/ComboRequestListener;", "cameraConfig", "Landroidx/camera/camera2/config/CameraConfig;", "cameraQuirks", "Landroidx/camera/camera2/compat/quirk/CameraQuirks;", "zslControl", "Landroidx/camera/camera2/adapter/ZslControl;", "templateParamsOverride", "Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;", "cameraMetadata", "Landroidx/camera/camera2/pipe/CameraMetadata;", "cameraXConfig", "Landroidx/camera/core/CameraXConfig;", "cameraInteropStateCallbackRepository", "Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;", "<init>", "(Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/impl/ComboRequestListener;Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/camera2/compat/quirk/CameraQuirks;Landroidx/camera/camera2/adapter/ZslControl;Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/core/CameraXConfig;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;)V", "closeCameraOnCameraGraphClose", "Landroidx/camera/camera2/compat/workaround/CloseCameraOnCameraGraphClose;", "supportedDynamicRangeProfiles", "Landroid/hardware/camera2/params/DynamicRangeProfiles;", "create", "Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;", "operatingMode", "Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;", "sessionConfig", "Landroidx/camera/core/impl/SessionConfig;", "setOutputType", _UrlKt.FRAGMENT_ENCODE_SET, "graphStateToCameraStateAdapter", "Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;", "camera2ExtensionMode", _UrlKt.FRAGMENT_ENCODE_SET, "surfaceToStreamUseCaseMap", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/DeferrableSurface;", _UrlKt.FRAGMENT_ENCODE_SET, "surfaceToStreamUseHintMap", "create-79VDu0o", "(ILandroidx/camera/core/impl/SessionConfig;ZLandroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;", "createPostviewStream", "Landroidx/camera/camera2/pipe/CameraStream$Config;", "postviewConfig", "Landroidx/camera/core/impl/SessionConfig$OutputConfig;", "physicalCameraIdForAllStreams", _UrlKt.FRAGMENT_ENCODE_SET, "getStreamUseCase", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;", "deferrableSurface", "mapping", "getStreamUseCase-MhLBY4I", "getStreamUseHint", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;", "getStreamUseHint-kVKJKLA", "createCameraGraphFlags", "Landroidx/camera/camera2/pipe/CameraGraph$Flags;", "isExtensions", "toDynamicRangeProfile", "Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;", "Landroidx/camera/core/DynamicRange;", "toDynamicRangeProfile--zsJmt4", "toCamera2ImplConfig", "Landroidx/camera/camera2/impl/Camera2ImplConfig;", "getVideoStabilizationModeFromCaptureConfig", "captureConfig", "Landroidx/camera/core/impl/CaptureConfig;", "(Landroidx/camera/core/impl/CaptureConfig;)Ljava/lang/Integer;", "toString", "CameraGraphCreationResult", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraGraphConfigProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraGraphConfigProvider.kt\nandroidx/camera/camera2/impl/CameraGraphConfigProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CameraDevices.kt\nandroidx/camera/camera2/pipe/CameraId$Companion\n+ 4 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,493:1\n1#2:494\n172#3:495\n172#3:496\n119#4,4:497\n85#4,4:501\n136#4,4:505\n*S KotlinDebug\n*F\n+ 1 CameraGraphConfigProvider.kt\nandroidx/camera/camera2/impl/CameraGraphConfigProvider\n*L\n152#1:495\n333#1:496\n365#1:497,4\n385#1:501,4\n457#1:505,4\n*E\n"})
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

    public CameraGraphConfigProvider(CameraCallbackMap cameraCallbackMap, ComboRequestListener comboRequestListener, CameraConfig cameraConfig, CameraQuirks cameraQuirks, ZslControl zslControl, TemplateParamsOverride templateParamsOverride, CameraMetadata cameraMetadata, CameraXConfig cameraXConfig, CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository) {
        DynamicRangeProfilesCompat dynamicRangeProfilesCompatFromCameraMetaData;
        this.callbackMap = cameraCallbackMap;
        this.requestListener = comboRequestListener;
        this.cameraConfig = cameraConfig;
        this.cameraQuirks = cameraQuirks;
        this.zslControl = zslControl;
        this.templateParamsOverride = templateParamsOverride;
        this.cameraMetadata = cameraMetadata;
        this.cameraXConfig = cameraXConfig;
        this.cameraInteropStateCallbackRepository = cameraInteropStateCallbackRepository;
        this.closeCameraOnCameraGraphClose = new CloseCameraOnCameraGraphClose();
        DynamicRangeProfiles dynamicRangeProfiles = null;
        if (Build.VERSION.SDK_INT >= 33 && cameraMetadata != null && (dynamicRangeProfilesCompatFromCameraMetaData = DynamicRangeProfilesCompat.INSTANCE.fromCameraMetaData(cameraMetadata)) != null) {
            dynamicRangeProfiles = dynamicRangeProfilesCompatFromCameraMetaData.toDynamicRangeProfiles();
        }
        this.supportedDynamicRangeProfiles = dynamicRangeProfiles;
    }

    public /* synthetic */ CameraGraphConfigProvider(CameraCallbackMap cameraCallbackMap, ComboRequestListener comboRequestListener, CameraConfig cameraConfig, CameraQuirks cameraQuirks, ZslControl zslControl, TemplateParamsOverride templateParamsOverride, CameraMetadata cameraMetadata, CameraXConfig cameraXConfig, CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(cameraCallbackMap, comboRequestListener, cameraConfig, cameraQuirks, zslControl, templateParamsOverride, cameraMetadata, (i & 128) != 0 ? null : cameraXConfig, (i & 256) != 0 ? null : cameraInteropStateCallbackRepository);
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R#\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "config", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CameraStream$Config;", "Landroidx/camera/core/impl/DeferrableSurface;", "streamConfigMap", "<init>", "(Landroidx/camera/camera2/pipe/CameraGraph$Config;Ljava/util/Map;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "getConfig", "()Landroidx/camera/camera2/pipe/CameraGraph$Config;", "Ljava/util/Map;", "getStreamConfigMap", "()Ljava/util/Map;", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class CameraGraphCreationResult {
        private final CameraGraph.Config config;
        private final Map<CameraStream.Config, DeferrableSurface> streamConfigMap;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CameraGraphCreationResult)) {
                return false;
            }
            CameraGraphCreationResult cameraGraphCreationResult = (CameraGraphCreationResult) other;
            return Intrinsics.areEqual(this.config, cameraGraphCreationResult.config) && Intrinsics.areEqual(this.streamConfigMap, cameraGraphCreationResult.streamConfigMap);
        }

        public int hashCode() {
            return (this.config.hashCode() * 31) + this.streamConfigMap.hashCode();
        }

        public String toString() {
            return "CameraGraphCreationResult(config=" + this.config + ", streamConfigMap=" + this.streamConfigMap + ')';
        }

        /* JADX WARN: Multi-variable type inference failed */
        public CameraGraphCreationResult(CameraGraph.Config config, Map<CameraStream.Config, ? extends DeferrableSurface> map) {
            this.config = config;
            this.streamConfigMap = map;
        }

        public final CameraGraph.Config getConfig() {
            return this.config;
        }

        public final Map<CameraStream.Config, DeferrableSurface> getStreamConfigMap() {
            return this.streamConfigMap;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: create-79VDu0o$default, reason: not valid java name */
    public static /* synthetic */ CameraGraphCreationResult m1034create79VDu0o$default(CameraGraphConfigProvider cameraGraphConfigProvider, int i, SessionConfig sessionConfig, boolean z, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, Integer num, Map map, Map map2, int i2, Object obj) {
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
        return cameraGraphConfigProvider.m1038create79VDu0o(i, sessionConfig, z, graphStateToCameraStateAdapter, num, map, map2);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0168  */
    /* JADX INFO: renamed from: create-79VDu0o, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final CameraGraphCreationResult m1038create79VDu0o(int operatingMode, SessionConfig sessionConfig, boolean setOutputType, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, Integer camera2ExtensionMode, Map<DeferrableSurface, Long> surfaceToStreamUseCaseMap, Map<DeferrableSurface, Long> surfaceToStreamUseHintMap) {
        int i;
        ArrayList arrayList;
        ArrayList arrayList2;
        CameraStream.Config config;
        CameraStream.Config configCreatePostviewStream;
        OutputStream.MirrorMode mirrorModeM1314boximpl;
        OutputStream.MirrorMode mirrorMode;
        OutputStream.OutputType surface;
        Iterator it;
        CameraGraph.OperatingMode.Companion companion = CameraGraph.OperatingMode.INSTANCE;
        boolean zM1197equalsimpl0 = CameraGraph.OperatingMode.m1197equalsimpl0(operatingMode, companion.m1201getEXTENSION2uNL3no());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList3 = new ArrayList();
        int i2 = 1;
        int iM1352constructorimpl = RequestTemplate.m1352constructorimpl(1);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        if (sessionConfig != null) {
            CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository = this.cameraInteropStateCallbackRepository;
            if (cameraInteropStateCallbackRepository != null) {
                cameraInteropStateCallbackRepository.updateCallbacks(sessionConfig);
            }
            if (sessionConfig.getTemplateType() != -1) {
                iM1352constructorimpl = RequestTemplate.m1352constructorimpl(sessionConfig.getTemplateType());
            }
            linkedHashMap2.putAll(this.templateParamsOverride.mo1016getOverrideParamsxlOpshk(RequestTemplate.m1351boximpl(iM1352constructorimpl)));
            linkedHashMap2.putAll(Camera2ImplConfigKt.toParameters(sessionConfig.getImplementationOptions()));
            if (CameraGraph.OperatingMode.m1197equalsimpl0(operatingMode, companion.m1201getEXTENSION2uNL3no())) {
                linkedHashMap2.put(CameraPipeKeys.INSTANCE.getCamera2ExtensionMode(), camera2ExtensionMode);
            }
            String physicalCameraId = toCamera2ImplConfig(sessionConfig).getPhysicalCameraId(null);
            CameraStream.Config config2 = null;
            for (SessionConfig.OutputConfig outputConfig : sessionConfig.getOutputConfigs()) {
                DeferrableSurface surface2 = outputConfig.getSurface();
                String physicalCameraId2 = physicalCameraId == null ? outputConfig.getPhysicalCameraId() : physicalCameraId;
                int i3 = 2;
                DynamicRange dynamicRange = outputConfig.getDynamicRange();
                int mirrorMode2 = outputConfig.getMirrorMode();
                OutputStream.Config.Companion companion2 = OutputStream.Config.INSTANCE;
                OutputStream.DynamicRangeProfile dynamicRangeProfileM1037toDynamicRangeProfilezsJmt4 = m1037toDynamicRangeProfilezsJmt4(dynamicRange);
                Size prescribedSize = surface2.getPrescribedSize();
                int iM1371constructorimpl = StreamFormat.m1371constructorimpl(surface2.getPrescribedStreamFormat());
                String strM1209constructorimpl = physicalCameraId2 == null ? null : CameraId.m1209constructorimpl(physicalCameraId2);
                if (mirrorMode2 == 0) {
                    mirrorModeM1314boximpl = OutputStream.MirrorMode.m1314boximpl(OutputStream.MirrorMode.m1315constructorimpl(i2));
                } else if (mirrorMode2 != i2) {
                    mirrorMode = null;
                    if (!setOutputType) {
                        Class<?> containerClass = outputConfig.getSurface().getContainerClass();
                        if (Intrinsics.areEqual(containerClass, MediaCodec.class)) {
                            surface = OutputStream.OutputType.INSTANCE.getMEDIA_CODEC();
                        } else if (Intrinsics.areEqual(containerClass, SurfaceHolder.class)) {
                            surface = OutputStream.OutputType.INSTANCE.getSURFACE_VIEW();
                        } else {
                            surface = Intrinsics.areEqual(containerClass, SurfaceTexture.class) ? OutputStream.OutputType.INSTANCE.getSURFACE_TEXTURE() : OutputStream.OutputType.INSTANCE.getSURFACE();
                        }
                    } else {
                        surface = OutputStream.OutputType.INSTANCE.getSURFACE();
                    }
                    OutputStream.Config configM1304createvBYXiEU$default = OutputStream.Config.Companion.m1304createvBYXiEU$default(companion2, prescribedSize, iM1371constructorimpl, strM1209constructorimpl, surface, mirrorMode, null, dynamicRangeProfileM1037toDynamicRangeProfilezsJmt4, zM1197equalsimpl0 ? m1035getStreamUseCaseMhLBY4I(surface2, surfaceToStreamUseCaseMap, this.cameraMetadata) : null, zM1197equalsimpl0 ? m1036getStreamUseHintkVKJKLA(surface2, surfaceToStreamUseHintMap) : null, null, 544, null);
                    String str = physicalCameraId;
                    it = CollectionsKt.plus((Collection<? extends DeferrableSurface>) outputConfig.getSharedSurfaces(), surface2).iterator();
                    while (it.hasNext()) {
                        Iterator it2 = it;
                        DeferrableSurface deferrableSurface = (DeferrableSurface) it.next();
                        int i4 = iM1352constructorimpl;
                        CameraStream.Config configCreate$default = CameraStream.Config.Companion.create$default(CameraStream.Config.INSTANCE, configM1304createvBYXiEU$default, null, i3, null);
                        linkedHashMap3.put(configCreate$default, deferrableSurface);
                        if (outputConfig.getSurfaceGroupId() != -1) {
                            List list = (List) linkedHashMap.get(Integer.valueOf(outputConfig.getSurfaceGroupId()));
                            if (list == null) {
                                linkedHashMap.put(Integer.valueOf(outputConfig.getSurfaceGroupId()), CollectionsKt.mutableListOf(configCreate$default));
                            } else {
                                list.add(configCreate$default);
                            }
                        }
                        if (Intrinsics.areEqual(deferrableSurface, surface2) && this.zslControl.isZslSurface(deferrableSurface, sessionConfig)) {
                            config2 = configCreate$default;
                            iM1352constructorimpl = i4;
                            it = it2;
                            i3 = 2;
                        } else {
                            iM1352constructorimpl = i4;
                            it = it2;
                            i3 = 2;
                        }
                    }
                    physicalCameraId = str;
                    i2 = 1;
                } else {
                    mirrorModeM1314boximpl = OutputStream.MirrorMode.m1314boximpl(OutputStream.MirrorMode.m1315constructorimpl(2));
                }
                mirrorMode = mirrorModeM1314boximpl;
                if (!setOutputType) {
                }
                OutputStream.Config configM1304createvBYXiEU$default2 = OutputStream.Config.Companion.m1304createvBYXiEU$default(companion2, prescribedSize, iM1371constructorimpl, strM1209constructorimpl, surface, mirrorMode, null, dynamicRangeProfileM1037toDynamicRangeProfilezsJmt4, zM1197equalsimpl0 ? m1035getStreamUseCaseMhLBY4I(surface2, surfaceToStreamUseCaseMap, this.cameraMetadata) : null, zM1197equalsimpl0 ? m1036getStreamUseHintkVKJKLA(surface2, surfaceToStreamUseHintMap) : null, null, 544, null);
                String str2 = physicalCameraId;
                it = CollectionsKt.plus((Collection<? extends DeferrableSurface>) outputConfig.getSharedSurfaces(), surface2).iterator();
                while (it.hasNext()) {
                }
                physicalCameraId = str2;
                i2 = 1;
            }
            int i5 = iM1352constructorimpl;
            if (sessionConfig.getInputConfiguration() != null && config2 != null) {
                arrayList3.add(new InputStream.Config(config2, 1, ((OutputStream.Config) CollectionsKt.single((List) config2.getOutputs())).getFormat(), null));
            }
            i = i5;
        } else {
            i = iM1352constructorimpl;
        }
        CameraGraph.Flags flagsCreateCameraGraphFlags = createCameraGraphFlags(this.cameraQuirks, zM1197equalsimpl0);
        Integer videoStabilizationModeFromCaptureConfig = sessionConfig != null ? getVideoStabilizationModeFromCaptureConfig(sessionConfig.getRepeatingCaptureConfig()) : null;
        Range<Integer> expectedFrameRateRange = sessionConfig != null ? sessionConfig.getExpectedFrameRateRange() : null;
        if (Intrinsics.areEqual(expectedFrameRateRange, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED)) {
            expectedFrameRateRange = null;
        }
        Map mapCreateMapBuilder = MapsKt.createMapBuilder();
        if (zM1197equalsimpl0) {
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
            linkedHashMap2.put(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, expectedFrameRateRange);
        }
        if (videoStabilizationModeFromCaptureConfig != null) {
            linkedHashMap2.put(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, videoStabilizationModeFromCaptureConfig);
        }
        if (sessionConfig != null) {
            arrayList = null;
            String physicalCameraId3 = toCamera2ImplConfig(sessionConfig).getPhysicalCameraId(null);
            SessionConfig.OutputConfig postviewOutputConfig = sessionConfig.getPostviewOutputConfig();
            if (postviewOutputConfig == null || (configCreatePostviewStream = createPostviewStream(postviewOutputConfig, physicalCameraId3)) == null) {
                configCreatePostviewStream = null;
            } else {
                linkedHashMap3.put(configCreatePostviewStream, postviewOutputConfig.getSurface());
            }
            arrayList2 = arrayList3;
            config = configCreatePostviewStream;
        } else {
            arrayList = null;
            arrayList2 = arrayList3;
            config = null;
        }
        CameraXConfig cameraXConfig = this.cameraXConfig;
        if (cameraXConfig != null) {
            Camera2CaptureRequestConfiguratorKt.getCamera2CaptureRequestConfigurator(cameraXConfig);
        }
        String cameraId = this.cameraConfig.getCameraId();
        List list2 = CollectionsKt.toList(linkedHashMap3.keySet());
        List list3 = CollectionsKt.toList(linkedHashMap.values());
        if (!arrayList2.isEmpty()) {
            arrayList = arrayList2;
        }
        return new CameraGraphCreationResult(new CameraGraph.Config(cameraId, list2, list3, arrayList, config, i, linkedHashMap2, operatingMode, 0, mapBuild, CollectionsKt.listOf((Object[]) new Request.Listener[]{this.callbackMap, this.requestListener}), CollectionsKt.listOfNotNull(graphStateToCameraStateAdapter), null, null, null, null, flagsCreateCameraGraphFlags, null, 192768, null), MapsKt.toMap(linkedHashMap3));
    }

    private final CameraStream.Config createPostviewStream(SessionConfig.OutputConfig postviewConfig, String physicalCameraIdForAllStreams) {
        OutputStream.MirrorMode mirrorModeM1314boximpl;
        OutputStream.MirrorMode mirrorMode;
        DeferrableSurface surface = postviewConfig.getSurface();
        if (physicalCameraIdForAllStreams == null) {
            physicalCameraIdForAllStreams = postviewConfig.getPhysicalCameraId();
        }
        int mirrorMode2 = postviewConfig.getMirrorMode();
        OutputStream.Config.Companion companion = OutputStream.Config.INSTANCE;
        Size prescribedSize = surface.getPrescribedSize();
        int iM1371constructorimpl = StreamFormat.m1371constructorimpl(surface.getPrescribedStreamFormat());
        String strM1209constructorimpl = physicalCameraIdForAllStreams == null ? null : CameraId.m1209constructorimpl(physicalCameraIdForAllStreams);
        if (mirrorMode2 == 0) {
            mirrorModeM1314boximpl = OutputStream.MirrorMode.m1314boximpl(OutputStream.MirrorMode.m1315constructorimpl(1));
        } else if (mirrorMode2 == 1) {
            mirrorModeM1314boximpl = OutputStream.MirrorMode.m1314boximpl(OutputStream.MirrorMode.m1315constructorimpl(2));
        } else {
            mirrorMode = null;
            return CameraStream.Config.Companion.create$default(CameraStream.Config.INSTANCE, OutputStream.Config.Companion.m1304createvBYXiEU$default(companion, prescribedSize, iM1371constructorimpl, strM1209constructorimpl, null, mirrorMode, null, null, null, null, null, 1000, null), null, 2, null);
        }
        mirrorMode = mirrorModeM1314boximpl;
        return CameraStream.Config.Companion.create$default(CameraStream.Config.INSTANCE, OutputStream.Config.Companion.m1304createvBYXiEU$default(companion, prescribedSize, iM1371constructorimpl, strM1209constructorimpl, null, mirrorMode, null, null, null, null, null, 1000, null), null, 2, null);
    }

    /* JADX INFO: renamed from: getStreamUseCase-MhLBY4I, reason: not valid java name */
    private final OutputStream.StreamUseCase m1035getStreamUseCaseMhLBY4I(DeferrableSurface deferrableSurface, Map<DeferrableSurface, Long> mapping, CameraMetadata cameraMetadata) {
        long[] jArr;
        Long l = mapping.get(deferrableSurface);
        OutputStream.StreamUseCase streamUseCaseM1322boximpl = l != null ? OutputStream.StreamUseCase.m1322boximpl(OutputStream.StreamUseCase.m1323constructorimpl(l.longValue())) : null;
        if (Build.VERSION.SDK_INT >= 33 && streamUseCaseM1322boximpl != null && cameraMetadata != null && (jArr = (long[]) cameraMetadata.get(CameraCharacteristics.SCALER_AVAILABLE_STREAM_USE_CASES)) != null && ArraysKt.contains(jArr, streamUseCaseM1322boximpl.getValue())) {
            return streamUseCaseM1322boximpl;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isWarnEnabled("CXCP")) {
            Log.w(Camera2Logger.TRUNCATED_TAG, "Expected stream use case for " + deferrableSurface + ", " + streamUseCaseM1322boximpl + " cannot be set!");
        }
        return null;
    }

    /* JADX INFO: renamed from: getStreamUseHint-kVKJKLA, reason: not valid java name */
    private final OutputStream.StreamUseHint m1036getStreamUseHintkVKJKLA(DeferrableSurface deferrableSurface, Map<DeferrableSurface, Long> mapping) {
        Long l = mapping.get(deferrableSurface);
        if (l != null) {
            return OutputStream.StreamUseHint.m1332boximpl(OutputStream.StreamUseHint.m1333constructorimpl(l.longValue()));
        }
        return null;
    }

    private final CameraGraph.Flags createCameraGraphFlags(CameraQuirks cameraQuirks, boolean isExtensions) {
        if (cameraQuirks.getQuirks().contains(CaptureSessionStuckQuirk.class)) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "CameraPipe should be enabling CaptureSessionStuckQuirk by default");
            }
        }
        int iM1011getBehaviorBm6Tfm4 = FinalizeSessionOnCloseQuirk.INSTANCE.m1011getBehaviorBm6Tfm4();
        boolean zShouldCloseCameraDevice = this.closeCameraOnCameraGraphClose.shouldCloseCameraDevice(isExtensions);
        boolean z = false;
        if ((!isExtensions || DeviceQuirks.INSTANCE.get(DisableAbortCapturesOnStopWithSessionProcessorQuirk.class) == null) && DeviceQuirks.INSTANCE.get(DisableAbortCapturesOnStopQuirk.class) == null && Build.VERSION.SDK_INT >= 30) {
            z = true;
        }
        return new CameraGraph.Flags(false, z, new CameraGraph.RepeatingRequestRequirementsBeforeCapture(cameraQuirks.getQuirks().contains(QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk.class) ? 1 : 0, CameraGraph.RepeatingRequestRequirementsBeforeCapture.CompletionBehavior.AT_LEAST, null), null, iM1011getBehaviorBm6Tfm4, true, zShouldCloseCameraDevice, true, 9, null);
    }

    /* JADX INFO: renamed from: toDynamicRangeProfile--zsJmt4, reason: not valid java name */
    private final OutputStream.DynamicRangeProfile m1037toDynamicRangeProfilezsJmt4(DynamicRange dynamicRange) {
        if (Build.VERSION.SDK_INT < 33) {
            return null;
        }
        OutputStream.DynamicRangeProfile dynamicRangeProfileM1306boximpl = OutputStream.DynamicRangeProfile.m1306boximpl(OutputStream.DynamicRangeProfile.INSTANCE.m1313getSTANDARDfFAQAUE());
        DynamicRangeProfiles dynamicRangeProfiles = this.supportedDynamicRangeProfiles;
        if (dynamicRangeProfiles != null) {
            Long lDynamicRangeToFirstSupportedProfile = DynamicRangeConversions.INSTANCE.dynamicRangeToFirstSupportedProfile(dynamicRange, dynamicRangeProfiles);
            if (lDynamicRangeToFirstSupportedProfile != null) {
                return OutputStream.DynamicRangeProfile.m1306boximpl(OutputStream.DynamicRangeProfile.m1307constructorimpl(lDynamicRangeToFirstSupportedProfile.longValue()));
            }
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isErrorEnabled("CXCP")) {
                Log.e(Camera2Logger.TRUNCATED_TAG, "Requested dynamic range is not supported. Defaulting to STANDARD dynamic range profile.\nRequested dynamic range:\n " + dynamicRange);
            }
        }
        return dynamicRangeProfileM1306boximpl;
    }

    private final Camera2ImplConfig toCamera2ImplConfig(SessionConfig sessionConfig) {
        return new Camera2ImplConfig(sessionConfig.getImplementationOptions());
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
        return "CameraGraphConfigProvider<" + ((Object) CameraId.m1213toStringimpl(this.cameraConfig.getCameraId())) + Typography.greater;
    }
}
