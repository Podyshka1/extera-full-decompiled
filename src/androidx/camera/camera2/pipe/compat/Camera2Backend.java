package androidx.camera.camera2.pipe.compat;

import android.content.Context;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.os.Build;
import android.util.Size;
import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraBackendId;
import androidx.camera.camera2.pipe.CameraContext;
import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.ConfigQueryResult;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.SurfaceTracker;
import androidx.camera.camera2.pipe.compat.AndroidOutputConfiguration;
import androidx.camera.camera2.pipe.compat.Camera2CameraController;
import androidx.camera.camera2.pipe.config.Camera2ControllerComponent;
import androidx.camera.camera2.pipe.config.Camera2ControllerConfig;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.GraphListener;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.featurecombinationquery.CameraDeviceSetupCompat;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.flow.Flow;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¶\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B;\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\b\u0001\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001d\u0010\u001b\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u001a\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010!\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001f\u0010 J\u0018\u0010%\u001a\u00020\"2\u0006\u0010\u0012\u001a\u00020\u0011H\u0096@¢\u0006\u0004\b#\u0010$J\u0015\u0010(\u001a\b\u0012\u0004\u0012\u00020'0&H\u0016¢\u0006\u0004\b(\u0010)J?\u00105\u001a\u0002042\u0006\u0010+\u001a\u00020*2\u0006\u0010-\u001a\u00020,2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010/\u001a\u00020.2\u0006\u00101\u001a\u0002002\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b5\u00106J\u0017\u00108\u001a\u00020'2\u0006\u00107\u001a\u000204H\u0016¢\u0006\u0004\b8\u00109R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010:R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010;R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010<R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010=R\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010>R\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010?R\u0014\u0010A\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010BR\u001a\u0010D\u001a\b\u0012\u0004\u0012\u0002040C8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\bD\u0010ER\u0014\u0010I\u001a\u00020F8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bG\u0010HR \u0010M\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u00130J8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bK\u0010L¨\u0006N"}, d2 = {"Landroidx/camera/camera2/pipe/compat/Camera2Backend;", "Landroidx/camera/camera2/pipe/CameraBackend;", "Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;", "Landroidx/camera/camera2/pipe/core/Threads;", "threads", "Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;", "camera2DeviceCache", "Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;", "camera2MetadataCache", "Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;", "camera2DeviceManager", "Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;", "camera2CameraControllerComponent", "Landroid/content/Context;", "cameraPipeContext", "<init>", "(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;Landroid/content/Context;)V", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "graphConfig", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/params/OutputConfiguration;", "buildOutputConfiguration", "(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Ljava/util/List;", "Landroidx/camera/camera2/pipe/CameraId;", "awaitCameraIds", "()Ljava/util/List;", _UrlKt.FRAGMENT_ENCODE_SET, "awaitConcurrentCameraIds", "()Ljava/util/Set;", "cameraId", "Landroidx/camera/camera2/pipe/CameraMetadata;", "awaitCameraMetadata-EfqyGwQ", "(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;", "awaitCameraMetadata", "Landroidx/camera/camera2/pipe/ConfigQueryResult;", "isConfigSupported-NpXggIU", "(Landroidx/camera/camera2/pipe/CameraGraph$Config;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isConfigSupported", "Lkotlinx/coroutines/Deferred;", _UrlKt.FRAGMENT_ENCODE_SET, "shutdownAsync", "()Lkotlinx/coroutines/Deferred;", "Landroidx/camera/camera2/pipe/CameraContext;", "cameraContext", "Landroidx/camera/camera2/pipe/CameraGraphId;", "graphId", "Landroidx/camera/camera2/pipe/graph/GraphListener;", "graphListener", "Landroidx/camera/camera2/pipe/StreamGraph;", "streamGraph", "Landroidx/camera/camera2/pipe/SurfaceTracker;", "surfaceTracker", "Landroidx/camera/camera2/pipe/CameraController;", "createCameraController", "(Landroidx/camera/camera2/pipe/CameraContext;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/SurfaceTracker;)Landroidx/camera/camera2/pipe/CameraController;", "cameraController", "onControllerClosed", "(Landroidx/camera/camera2/pipe/CameraController;)V", "Landroidx/camera/camera2/pipe/core/Threads;", "Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;", "Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;", "Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;", "Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;", "Landroid/content/Context;", _UrlKt.FRAGMENT_ENCODE_SET, "lock", "Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "activeCameraControllers", "Ljava/util/Set;", "Landroidx/camera/camera2/pipe/CameraBackendId;", "getId-QwmhuAM", "()Ljava/lang/String;", "id", "Lkotlinx/coroutines/flow/Flow;", "getCameraIds", "()Lkotlinx/coroutines/flow/Flow;", "cameraIds", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCamera2Backend.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Camera2Backend.kt\nandroidx/camera/camera2/pipe/compat/Camera2Backend\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,239:1\n59#2,2:240\n50#2,2:243\n50#2,2:245\n1#3:242\n*S KotlinDebug\n*F\n+ 1 Camera2Backend.kt\nandroidx/camera/camera2/pipe/compat/Camera2Backend\n*L\n117#1:240,2\n184#1:243,2\n235#1:245,2\n*E\n"})
public final class Camera2Backend implements CameraBackend, Camera2CameraController.ShutdownListener {
    private final Camera2ControllerComponent.Builder camera2CameraControllerComponent;
    private final Camera2DeviceCache camera2DeviceCache;
    private final Camera2DeviceManager camera2DeviceManager;
    private final Camera2MetadataCache camera2MetadataCache;
    private final Context cameraPipeContext;
    private final Threads threads;
    private final Object lock = new Object();
    private final Set<CameraController> activeCameraControllers = new LinkedHashSet();

    public Camera2Backend(Threads threads, Camera2DeviceCache camera2DeviceCache, Camera2MetadataCache camera2MetadataCache, Camera2DeviceManager camera2DeviceManager, Camera2ControllerComponent.Builder builder, Context context) {
        this.threads = threads;
        this.camera2DeviceCache = camera2DeviceCache;
        this.camera2MetadataCache = camera2MetadataCache;
        this.camera2DeviceManager = camera2DeviceManager;
        this.camera2CameraControllerComponent = builder;
        this.cameraPipeContext = context;
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    /* JADX INFO: renamed from: getId-QwmhuAM */
    public String mo1273getIdQwmhuAM() {
        return CameraBackendId.m1276constructorimpl("CXCP-Camera2");
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    public Flow<List<CameraId>> getCameraIds() {
        return this.camera2DeviceCache.getCameraIds();
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    public List<CameraId> awaitCameraIds() {
        return this.camera2DeviceCache.awaitCameraIds();
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    public Set<Set<CameraId>> awaitConcurrentCameraIds() {
        return this.camera2DeviceCache.awaitConcurrentCameraIds();
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    /* JADX INFO: renamed from: awaitCameraMetadata-EfqyGwQ */
    public CameraMetadata mo1272awaitCameraMetadataEfqyGwQ(String cameraId) {
        return this.camera2MetadataCache.mo1580awaitCameraMetadataEfqyGwQ(cameraId);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // androidx.camera.camera2.pipe.CameraBackend
    /* JADX INFO: renamed from: isConfigSupported-NpXggIU */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object mo1274isConfigSupportedNpXggIU(CameraGraph.Config config, Continuation<? super ConfigQueryResult> continuation) {
        Camera2Backend$isConfigSupported$1 camera2Backend$isConfigSupported$1;
        CameraGraph.Config config2;
        CameraDeviceSetupCompat cameraDeviceSetupCompat;
        SessionConfiguration sessionConfigurationM63m;
        CaptureRequest.Builder builderCreateCaptureRequest;
        CameraDeviceSetupCompat.SupportQueryResult supportQueryResultIsSessionConfigurationSupported;
        if (continuation instanceof Camera2Backend$isConfigSupported$1) {
            camera2Backend$isConfigSupported$1 = (Camera2Backend$isConfigSupported$1) continuation;
            int i = camera2Backend$isConfigSupported$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                camera2Backend$isConfigSupported$1.label = i - Integer.MIN_VALUE;
            } else {
                camera2Backend$isConfigSupported$1 = new Camera2Backend$isConfigSupported$1(this, continuation);
            }
        }
        Object objM1567getOrInitializeDeviceSetupCompat0r8Bogc = camera2Backend$isConfigSupported$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = camera2Backend$isConfigSupported$1.label;
        Integer numBoxInt = null;
        int sessionMode = 1;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objM1567getOrInitializeDeviceSetupCompat0r8Bogc);
            if (Build.VERSION.SDK_INT < 35) {
                return ConfigQueryResult.m1370boximpl(ConfigQueryResult.INSTANCE.m1378getUNKNOWNXp6DSB4());
            }
            Camera2DeviceCache camera2DeviceCache = this.camera2DeviceCache;
            String camera = config.getCamera();
            camera2Backend$isConfigSupported$1.L$0 = config;
            camera2Backend$isConfigSupported$1.label = 1;
            objM1567getOrInitializeDeviceSetupCompat0r8Bogc = camera2DeviceCache.m1567getOrInitializeDeviceSetupCompat0r8Bogc(camera, camera2Backend$isConfigSupported$1);
            if (objM1567getOrInitializeDeviceSetupCompat0r8Bogc != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            sessionConfigurationM63m = Camera2Backend$$ExternalSyntheticApiModelOutline0.m63m(camera2Backend$isConfigSupported$1.L$2);
            cameraDeviceSetupCompat = (CameraDeviceSetupCompat) camera2Backend$isConfigSupported$1.L$1;
            config2 = (CameraGraph.Config) camera2Backend$isConfigSupported$1.L$0;
            ResultKt.throwOnFailure(objM1567getOrInitializeDeviceSetupCompat0r8Bogc);
            Camera2DeviceSetupWrapper camera2DeviceSetupWrapper = (Camera2DeviceSetupWrapper) objM1567getOrInitializeDeviceSetupCompat0r8Bogc;
            builderCreateCaptureRequest = camera2DeviceSetupWrapper == null ? camera2DeviceSetupWrapper.createCaptureRequest(config2.getSessionTemplate()) : null;
            if (builderCreateCaptureRequest != null) {
                for (Map.Entry<?, Object> entry : config2.getSessionParameters().entrySet()) {
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    CaptureRequest.Key key2 = key instanceof CaptureRequest.Key ? (CaptureRequest.Key) key : null;
                    if (key2 != null) {
                        builderCreateCaptureRequest.set(key2, value);
                    }
                }
                Api28Compat.setSessionParameters(sessionConfigurationM63m, builderCreateCaptureRequest.build());
            }
            if (cameraDeviceSetupCompat != null && (supportQueryResultIsSessionConfigurationSupported = cameraDeviceSetupCompat.isSessionConfigurationSupported(sessionConfigurationM63m)) != null) {
                numBoxInt = Boxing.boxInt(supportQueryResultIsSessionConfigurationSupported.getSupported());
            }
            if (numBoxInt == null) {
                return ConfigQueryResult.m1370boximpl(ConfigQueryResult.m1371constructorimpl(numBoxInt.intValue()));
            }
            return ConfigQueryResult.m1370boximpl(ConfigQueryResult.INSTANCE.m1378getUNKNOWNXp6DSB4());
        }
        config = (CameraGraph.Config) camera2Backend$isConfigSupported$1.L$0;
        ResultKt.throwOnFailure(objM1567getOrInitializeDeviceSetupCompat0r8Bogc);
        CameraDeviceSetupCompat cameraDeviceSetupCompat2 = (CameraDeviceSetupCompat) objM1567getOrInitializeDeviceSetupCompat0r8Bogc;
        int sessionMode2 = config.getSessionMode();
        CameraGraph.OperatingMode.Companion companion = CameraGraph.OperatingMode.INSTANCE;
        if (CameraGraph.OperatingMode.m1340equalsimpl0(sessionMode2, companion.m1346getNORMAL2uNL3no())) {
            sessionMode = 0;
        } else if (!CameraGraph.OperatingMode.m1340equalsimpl0(sessionMode2, companion.m1345getHIGH_SPEED2uNL3no())) {
            if (CameraGraph.OperatingMode.m1340equalsimpl0(sessionMode2, companion.m1344getEXTENSION2uNL3no())) {
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    android.util.Log.i("CXCP", "Unsupported session mode: " + ((Object) CameraGraph.OperatingMode.m1342toStringimpl(config.getSessionMode())));
                }
                return ConfigQueryResult.m1370boximpl(ConfigQueryResult.INSTANCE.m1378getUNKNOWNXp6DSB4());
            }
            sessionMode = config.getSessionMode();
        }
        SessionConfiguration sessionConfigurationNewSessionConfiguration = Api35Compat.newSessionConfiguration(sessionMode, buildOutputConfiguration(config));
        Camera2DeviceCache camera2DeviceCache2 = this.camera2DeviceCache;
        String camera2 = config.getCamera();
        camera2Backend$isConfigSupported$1.L$0 = config;
        camera2Backend$isConfigSupported$1.L$1 = cameraDeviceSetupCompat2;
        camera2Backend$isConfigSupported$1.L$2 = sessionConfigurationNewSessionConfiguration;
        camera2Backend$isConfigSupported$1.label = 2;
        Object objM1568getOrInitializeDeviceSetupWrapper0r8Bogc = camera2DeviceCache2.m1568getOrInitializeDeviceSetupWrapper0r8Bogc(camera2, camera2Backend$isConfigSupported$1);
        if (objM1568getOrInitializeDeviceSetupWrapper0r8Bogc != coroutine_suspended) {
            config2 = config;
            cameraDeviceSetupCompat = cameraDeviceSetupCompat2;
            objM1567getOrInitializeDeviceSetupCompat0r8Bogc = objM1568getOrInitializeDeviceSetupWrapper0r8Bogc;
            sessionConfigurationM63m = sessionConfigurationNewSessionConfiguration;
            Camera2DeviceSetupWrapper camera2DeviceSetupWrapper2 = (Camera2DeviceSetupWrapper) objM1567getOrInitializeDeviceSetupCompat0r8Bogc;
            if (camera2DeviceSetupWrapper2 == null) {
            }
            if (builderCreateCaptureRequest != null) {
            }
            if (cameraDeviceSetupCompat != null) {
                numBoxInt = Boxing.boxInt(supportQueryResultIsSessionConfigurationSupported.getSupported());
            }
            if (numBoxInt == null) {
            }
        }
        return coroutine_suspended;
    }

    private final List<OutputConfiguration> buildOutputConfiguration(CameraGraph.Config graphConfig) {
        OutputConfiguration outputConfiguration;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<CameraStream.Config> it = graphConfig.getStreams().iterator();
        while (it.hasNext()) {
            for (OutputStream.Config config : it.next().getOutputs()) {
                AndroidOutputConfiguration.Companion companion = AndroidOutputConfiguration.INSTANCE;
                Integer numValueOf = Integer.valueOf(config.getFormat());
                OutputStream.OutputType sURFACE_DEFERRED_FOR_QUERY_ONLY$camera_camera2_pipe = OutputStream.OutputType.INSTANCE.getSURFACE_DEFERRED_FOR_QUERY_ONLY$camera_camera2_pipe();
                OutputStream.MirrorMode mirrorMode = config.getMirrorMode();
                config.m1446getTimestampBasepcPfPbY();
                OutputStream.DynamicRangeProfile dynamicRangeProfile = config.getDynamicRangeProfile();
                OutputStream.StreamUseCase streamUseCase = config.getStreamUseCase();
                List<Object> sensorPixelModes = config.getSensorPixelModes();
                Size size = config.getSize();
                String camera = config.getCamera();
                OutputConfigurationWrapper outputConfigurationWrapperM1545creategWWoySg$default = AndroidOutputConfiguration.Companion.m1545creategWWoySg$default(companion, null, numValueOf, sURFACE_DEFERRED_FOR_QUERY_ONLY$camera_camera2_pipe, mirrorMode, null, dynamicRangeProfile, streamUseCase, sensorPixelModes, size, false, 0, !(camera == null ? false : CameraId.m1354equalsimpl0(camera, graphConfig.getCamera())) ? config.getCamera() : null, 1536, null);
                if (outputConfigurationWrapperM1545creategWWoySg$default != null && (outputConfiguration = (OutputConfiguration) outputConfigurationWrapperM1545creategWWoySg$default.unwrapAs(Reflection.getOrCreateKotlinClass(OutputConfiguration.class))) != null) {
                    linkedHashSet.add(outputConfiguration);
                }
            }
        }
        return CollectionsKt.toList(linkedHashSet);
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    public Deferred<Unit> shutdownAsync() {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "Camera2Backend#shutdownAsync");
        }
        this.camera2DeviceCache.shutdown();
        return BuildersKt__Builders_commonKt.async$default(this.threads.getCameraPipeScope(), null, null, new C01882(null), 3, null);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2Backend$shutdownAsync$2 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.pipe.compat.Camera2Backend$shutdownAsync$2", m921f = "Camera2Backend.kt", m922i = {0}, m923l = {190, 196}, m924m = "invokeSuspend", m925n = {"controller"}, m926s = {"L$1"}, m927v = 1)
    @SourceDebugExtension({"SMAP\nCamera2Backend.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Camera2Backend.kt\nandroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,239:1\n1#2:240\n50#3,2:241\n71#3,2:243\n50#3,2:245\n*S KotlinDebug\n*F\n+ 1 Camera2Backend.kt\nandroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2\n*L\n189#1:241,2\n191#1:243,2\n195#1:245,2\n*E\n"})
    public static final class C01882 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        Object L$1;
        int label;

        public C01882(Continuation<? super C01882> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Camera2Backend.this.new C01882(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C01882) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x006e, code lost:
        
            if (r9 == r0) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00bd, code lost:
        
            if (r9.await(r8) == r0) goto L33;
         */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x009a  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006e -> B:23:0x0071). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Set set;
            Iterator it;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Object obj2 = Camera2Backend.this.lock;
                Camera2Backend camera2Backend = Camera2Backend.this;
                synchronized (obj2) {
                    set = camera2Backend.activeCameraControllers;
                }
                it = set.iterator();
                if (it.hasNext()) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i == 2) {
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            CameraController cameraController = (CameraController) this.L$1;
            it = (Iterator) this.L$0;
            ResultKt.throwOnFailure(obj);
            if (!((Boolean) obj).booleanValue() && Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to await closure from " + cameraController + '!');
            }
            if (it.hasNext()) {
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Camera2Backend#shutdownAsync: Closing all cameras (if any)");
                }
                Deferred<Unit> deferredCloseAll = Camera2Backend.this.camera2DeviceManager.closeAll(true);
                this.L$0 = null;
                this.L$1 = null;
                this.label = 2;
            } else {
                cameraController = (CameraController) it.next();
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Camera2Backend#shutdownAsync: Awaiting closure from " + cameraController);
                }
                this.L$0 = it;
                this.L$1 = cameraController;
                this.label = 1;
                obj = cameraController.awaitClosed(this);
            }
            return coroutine_suspended;
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    public CameraController createCameraController(CameraContext cameraContext, CameraGraphId graphId, CameraGraph.Config graphConfig, GraphListener graphListener, StreamGraph streamGraph, SurfaceTracker surfaceTracker) {
        CameraController cameraController = this.camera2CameraControllerComponent.camera2ControllerConfig(new Camera2ControllerConfig(this, graphId, graphConfig, graphListener, (StreamGraphImpl) streamGraph, surfaceTracker, this)).build().cameraController();
        synchronized (this.lock) {
            this.activeCameraControllers.add(cameraController);
        }
        return cameraController;
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CameraController.ShutdownListener
    public void onControllerClosed(CameraController cameraController) {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", cameraController + " finalized");
        }
        synchronized (this.lock) {
            this.activeCameraControllers.remove(cameraController);
        }
    }
}
