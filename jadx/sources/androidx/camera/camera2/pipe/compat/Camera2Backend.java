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
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2Backend implements CameraBackend, Camera2CameraController.ShutdownListener {
    private final Set activeCameraControllers;
    private final Camera2ControllerComponent.Builder camera2CameraControllerComponent;
    private final Camera2DeviceCache camera2DeviceCache;
    private final Camera2DeviceManager camera2DeviceManager;
    private final Camera2MetadataCache camera2MetadataCache;
    private final Context cameraPipeContext;
    private final Object lock;
    private final Threads threads;

    public Camera2Backend(Threads threads, Camera2DeviceCache camera2DeviceCache, Camera2MetadataCache camera2MetadataCache, Camera2DeviceManager camera2DeviceManager, Camera2ControllerComponent.Builder camera2CameraControllerComponent, Context cameraPipeContext) {
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(camera2DeviceCache, "camera2DeviceCache");
        Intrinsics.checkNotNullParameter(camera2MetadataCache, "camera2MetadataCache");
        Intrinsics.checkNotNullParameter(camera2DeviceManager, "camera2DeviceManager");
        Intrinsics.checkNotNullParameter(camera2CameraControllerComponent, "camera2CameraControllerComponent");
        Intrinsics.checkNotNullParameter(cameraPipeContext, "cameraPipeContext");
        this.threads = threads;
        this.camera2DeviceCache = camera2DeviceCache;
        this.camera2MetadataCache = camera2MetadataCache;
        this.camera2DeviceManager = camera2DeviceManager;
        this.camera2CameraControllerComponent = camera2CameraControllerComponent;
        this.cameraPipeContext = cameraPipeContext;
        this.lock = new Object();
        this.activeCameraControllers = new LinkedHashSet();
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    /* JADX INFO: renamed from: getId-QwmhuAM */
    public String mo1524getIdQwmhuAM() {
        return CameraBackendId.m1527constructorimpl("CXCP-Camera2");
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    public Flow getCameraIds() {
        return this.camera2DeviceCache.getCameraIds();
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    public List awaitCameraIds() {
        return this.camera2DeviceCache.awaitCameraIds();
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    public Set awaitConcurrentCameraIds() {
        return this.camera2DeviceCache.awaitConcurrentCameraIds();
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    /* JADX INFO: renamed from: awaitCameraMetadata-EfqyGwQ */
    public CameraMetadata mo1523awaitCameraMetadataEfqyGwQ(String cameraId) {
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        return this.camera2MetadataCache.mo1841awaitCameraMetadataEfqyGwQ(cameraId);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // androidx.camera.camera2.pipe.CameraBackend
    /* JADX INFO: renamed from: isConfigSupported-NpXggIU */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object mo1525isConfigSupportedNpXggIU(CameraGraph.Config config, Continuation continuation) {
        Camera2Backend$isConfigSupported$1 camera2Backend$isConfigSupported$1;
        CameraDeviceSetupCompat cameraDeviceSetupCompat;
        CameraGraph.Config config2;
        SessionConfiguration sessionConfigurationM66m;
        Integer numBoxInt;
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
        Object objM1828getOrInitializeDeviceSetupCompat0r8Bogc = camera2Backend$isConfigSupported$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = camera2Backend$isConfigSupported$1.label;
        int iM1579getSessionMode2uNL3no = 1;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objM1828getOrInitializeDeviceSetupCompat0r8Bogc);
            if (Build.VERSION.SDK_INT < 35) {
                return ConfigQueryResult.m1621boximpl(ConfigQueryResult.Companion.m1629getUNKNOWNXp6DSB4());
            }
            Camera2DeviceCache camera2DeviceCache = this.camera2DeviceCache;
            String strM1575getCameraDz_R5H8 = config.m1575getCameraDz_R5H8();
            camera2Backend$isConfigSupported$1.L$0 = config;
            camera2Backend$isConfigSupported$1.label = 1;
            objM1828getOrInitializeDeviceSetupCompat0r8Bogc = camera2DeviceCache.m1828getOrInitializeDeviceSetupCompat0r8Bogc(strM1575getCameraDz_R5H8, camera2Backend$isConfigSupported$1);
            if (objM1828getOrInitializeDeviceSetupCompat0r8Bogc != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            sessionConfigurationM66m = Camera2Backend$$ExternalSyntheticApiModelOutline0.m66m(camera2Backend$isConfigSupported$1.L$2);
            cameraDeviceSetupCompat = (CameraDeviceSetupCompat) camera2Backend$isConfigSupported$1.L$1;
            config2 = (CameraGraph.Config) camera2Backend$isConfigSupported$1.L$0;
            ResultKt.throwOnFailure(objM1828getOrInitializeDeviceSetupCompat0r8Bogc);
            Camera2DeviceSetupWrapper camera2DeviceSetupWrapper = (Camera2DeviceSetupWrapper) objM1828getOrInitializeDeviceSetupCompat0r8Bogc;
            numBoxInt = null;
            builderCreateCaptureRequest = camera2DeviceSetupWrapper == null ? camera2DeviceSetupWrapper.createCaptureRequest(config2.m1580getSessionTemplatefGx8uWA()) : null;
            if (builderCreateCaptureRequest != null) {
                for (Map.Entry entry : config2.getSessionParameters().entrySet()) {
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    CaptureRequest.Key key2 = key instanceof CaptureRequest.Key ? (CaptureRequest.Key) key : null;
                    if (key2 != null) {
                        builderCreateCaptureRequest.set(key2, value);
                    }
                }
                CaptureRequest captureRequestBuild = builderCreateCaptureRequest.build();
                Intrinsics.checkNotNullExpressionValue(captureRequestBuild, "build(...)");
                Api28Compat.setSessionParameters(sessionConfigurationM66m, captureRequestBuild);
            }
            if (cameraDeviceSetupCompat != null && (supportQueryResultIsSessionConfigurationSupported = cameraDeviceSetupCompat.isSessionConfigurationSupported(sessionConfigurationM66m)) != null) {
                numBoxInt = Boxing.boxInt(supportQueryResultIsSessionConfigurationSupported.getSupported());
            }
            if (numBoxInt == null) {
                return ConfigQueryResult.m1621boximpl(ConfigQueryResult.m1622constructorimpl(numBoxInt.intValue()));
            }
            return ConfigQueryResult.m1621boximpl(ConfigQueryResult.Companion.m1629getUNKNOWNXp6DSB4());
        }
        config = (CameraGraph.Config) camera2Backend$isConfigSupported$1.L$0;
        ResultKt.throwOnFailure(objM1828getOrInitializeDeviceSetupCompat0r8Bogc);
        CameraDeviceSetupCompat cameraDeviceSetupCompat2 = (CameraDeviceSetupCompat) objM1828getOrInitializeDeviceSetupCompat0r8Bogc;
        int iM1579getSessionMode2uNL3no2 = config.m1579getSessionMode2uNL3no();
        CameraGraph.OperatingMode.Companion companion = CameraGraph.OperatingMode.Companion;
        if (CameraGraph.OperatingMode.m1591equalsimpl0(iM1579getSessionMode2uNL3no2, companion.m1597getNORMAL2uNL3no())) {
            iM1579getSessionMode2uNL3no = 0;
        } else if (!CameraGraph.OperatingMode.m1591equalsimpl0(iM1579getSessionMode2uNL3no2, companion.m1596getHIGH_SPEED2uNL3no())) {
            if (CameraGraph.OperatingMode.m1591equalsimpl0(iM1579getSessionMode2uNL3no2, companion.m1595getEXTENSION2uNL3no())) {
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    android.util.Log.i("CXCP", "Unsupported session mode: " + ((Object) CameraGraph.OperatingMode.m1593toStringimpl(config.m1579getSessionMode2uNL3no())));
                }
                return ConfigQueryResult.m1621boximpl(ConfigQueryResult.Companion.m1629getUNKNOWNXp6DSB4());
            }
            iM1579getSessionMode2uNL3no = config.m1579getSessionMode2uNL3no();
        }
        SessionConfiguration sessionConfigurationNewSessionConfiguration = Api35Compat.newSessionConfiguration(iM1579getSessionMode2uNL3no, buildOutputConfiguration(config));
        Camera2DeviceCache camera2DeviceCache2 = this.camera2DeviceCache;
        String strM1575getCameraDz_R5H82 = config.m1575getCameraDz_R5H8();
        camera2Backend$isConfigSupported$1.L$0 = config;
        camera2Backend$isConfigSupported$1.L$1 = cameraDeviceSetupCompat2;
        camera2Backend$isConfigSupported$1.L$2 = sessionConfigurationNewSessionConfiguration;
        camera2Backend$isConfigSupported$1.label = 2;
        Object objM1829getOrInitializeDeviceSetupWrapper0r8Bogc = camera2DeviceCache2.m1829getOrInitializeDeviceSetupWrapper0r8Bogc(strM1575getCameraDz_R5H82, camera2Backend$isConfigSupported$1);
        if (objM1829getOrInitializeDeviceSetupWrapper0r8Bogc != coroutine_suspended) {
            cameraDeviceSetupCompat = cameraDeviceSetupCompat2;
            objM1828getOrInitializeDeviceSetupCompat0r8Bogc = objM1829getOrInitializeDeviceSetupWrapper0r8Bogc;
            config2 = config;
            sessionConfigurationM66m = sessionConfigurationNewSessionConfiguration;
            Camera2DeviceSetupWrapper camera2DeviceSetupWrapper2 = (Camera2DeviceSetupWrapper) objM1828getOrInitializeDeviceSetupCompat0r8Bogc;
            numBoxInt = null;
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

    private final List buildOutputConfiguration(CameraGraph.Config config) {
        OutputConfiguration outputConfigurationM49m;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = config.getStreams().iterator();
        while (it.hasNext()) {
            for (OutputStream.Config config2 : ((CameraStream.Config) it.next()).getOutputs()) {
                AndroidOutputConfiguration.Companion companion = AndroidOutputConfiguration.Companion;
                Integer numValueOf = Integer.valueOf(config2.m1693getFormat8FPWQzE());
                OutputStream.OutputType sURFACE_DEFERRED_FOR_QUERY_ONLY$camera_camera2_pipe = OutputStream.OutputType.Companion.getSURFACE_DEFERRED_FOR_QUERY_ONLY$camera_camera2_pipe();
                OutputStream.MirrorMode mirrorModeM1694getMirrorModedO1_9xk = config2.m1694getMirrorModedO1_9xk();
                config2.m1697getTimestampBasepcPfPbY();
                OutputStream.DynamicRangeProfile dynamicRangeProfileM1692getDynamicRangeProfileOoVcG5w = config2.m1692getDynamicRangeProfileOoVcG5w();
                OutputStream.StreamUseCase streamUseCaseM1695getStreamUseCase8x2ez34 = config2.m1695getStreamUseCase8x2ez34();
                List sensorPixelModes = config2.getSensorPixelModes();
                Size size = config2.getSize();
                String strM1691getCamera1LO98Z0 = config2.m1691getCamera1LO98Z0();
                OutputConfigurationWrapper outputConfigurationWrapperM1806creategWWoySg$default = AndroidOutputConfiguration.Companion.m1806creategWWoySg$default(companion, null, numValueOf, sURFACE_DEFERRED_FOR_QUERY_ONLY$camera_camera2_pipe, mirrorModeM1694getMirrorModedO1_9xk, null, dynamicRangeProfileM1692getDynamicRangeProfileOoVcG5w, streamUseCaseM1695getStreamUseCase8x2ez34, sensorPixelModes, size, false, 0, !(strM1691getCamera1LO98Z0 == null ? false : CameraId.m1605equalsimpl0(strM1691getCamera1LO98Z0, config.m1575getCameraDz_R5H8())) ? config2.m1691getCamera1LO98Z0() : null, 1536, null);
                if (outputConfigurationWrapperM1806creategWWoySg$default != null && (outputConfigurationM49m = AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline1.m49m(outputConfigurationWrapperM1806creategWWoySg$default.unwrapAs(Reflection.getOrCreateKotlinClass(AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline0.m48m())))) != null) {
                    linkedHashSet.add(outputConfigurationM49m);
                }
            }
        }
        return CollectionsKt.toList(linkedHashSet);
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    public Deferred shutdownAsync() {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "Camera2Backend#shutdownAsync");
        }
        this.camera2DeviceCache.shutdown();
        return BuildersKt__Builders_commonKt.async$default(this.threads.getCameraPipeScope(), null, null, new C01872(null), 3, null);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2Backend$shutdownAsync$2 */
    static final class C01872 extends SuspendLambda implements Function2 {
        Object L$0;
        Object L$1;
        int label;

        C01872(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return Camera2Backend.this.new C01872(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01872) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x0072, code lost:
        
            if (r8 == r0) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00c5, code lost:
        
            if (r8.await(r7) == r0) goto L33;
         */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0043  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00a1  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0072 -> B:23:0x0075). Please report as a decompilation issue!!! */
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
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
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
                Deferred deferredCloseAll = Camera2Backend.this.camera2DeviceManager.closeAll(true);
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
        Intrinsics.checkNotNullParameter(cameraContext, "cameraContext");
        Intrinsics.checkNotNullParameter(graphId, "graphId");
        Intrinsics.checkNotNullParameter(graphConfig, "graphConfig");
        Intrinsics.checkNotNullParameter(graphListener, "graphListener");
        Intrinsics.checkNotNullParameter(streamGraph, "streamGraph");
        Intrinsics.checkNotNullParameter(surfaceTracker, "surfaceTracker");
        CameraController cameraController = this.camera2CameraControllerComponent.camera2ControllerConfig(new Camera2ControllerConfig(this, graphId, graphConfig, graphListener, (StreamGraphImpl) streamGraph, surfaceTracker, this)).build().cameraController();
        synchronized (this.lock) {
            this.activeCameraControllers.add(cameraController);
        }
        return cameraController;
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CameraController.ShutdownListener
    public void onControllerClosed(CameraController cameraController) {
        Intrinsics.checkNotNullParameter(cameraController, "cameraController");
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", cameraController + " finalized");
        }
        synchronized (this.lock) {
            this.activeCameraControllers.remove(cameraController);
        }
    }
}
