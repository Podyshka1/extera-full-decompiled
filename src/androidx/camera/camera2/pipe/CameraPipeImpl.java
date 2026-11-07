package androidx.camera.camera2.pipe;

import android.os.Trace;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.config.CameraGraphConfigModule;
import androidx.camera.camera2.pipe.config.CameraPipeComponent;
import androidx.camera.camera2.pipe.core.Debug;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001d\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\u00142\u0006\u0010\u0007\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0018\u0010 \u001a\u00020\u001d2\u0006\u0010\r\u001a\u00020\u0006H\u0096@¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b%\u0010&R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010'R\u0014\u0010)\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010,\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u0010\"\u001a\u00020.8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\"\u0010/¨\u00060"}, d2 = {"Landroidx/camera/camera2/pipe/CameraPipeImpl;", "Landroidx/camera/camera2/pipe/CameraPipe;", "Landroidx/camera/camera2/pipe/config/CameraPipeComponent;", "component", "<init>", "(Landroidx/camera/camera2/pipe/config/CameraPipeComponent;)V", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "config", "Landroidx/camera/camera2/pipe/CameraGraphId;", "cameraGraphId", "Landroidx/camera/camera2/pipe/CameraGraph;", "createCameraGraphLocked", "(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraGraphId;)Landroidx/camera/camera2/pipe/CameraGraph;", "graphConfig", "Landroidx/camera/camera2/pipe/CameraBackend;", "getBackend", "(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraBackend;", "createCameraGraph", "(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraGraph;", "Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;", _UrlKt.FRAGMENT_ENCODE_SET, "createCameraGraphs", "(Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;)Ljava/util/List;", "Landroidx/camera/camera2/pipe/CameraDevices;", "cameras", "()Landroidx/camera/camera2/pipe/CameraDevices;", "Landroidx/camera/camera2/pipe/CameraSurfaceManager;", "cameraSurfaceManager", "()Landroidx/camera/camera2/pipe/CameraSurfaceManager;", "Landroidx/camera/camera2/pipe/ConfigQueryResult;", "isConfigSupported-NpXggIU", "(Landroidx/camera/camera2/pipe/CameraGraph$Config;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isConfigSupported", _UrlKt.FRAGMENT_ENCODE_SET, "shutdown", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Landroidx/camera/camera2/pipe/config/CameraPipeComponent;", _UrlKt.FRAGMENT_ENCODE_SET, "debugId", "I", _UrlKt.FRAGMENT_ENCODE_SET, "lock", "Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "Z", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraPipe.kt\nandroidx/camera/camera2/pipe/CameraPipeImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n+ 4 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,439:1\n1563#2:440\n1634#2,3:441\n1563#2:444\n1634#2,3:445\n1563#2:461\n1634#2,3:462\n1563#2:465\n1634#2,3:466\n48#3,2:448\n71#3,4:450\n50#3,3:454\n78#3,4:457\n48#3,2:469\n71#3,4:471\n50#3,3:475\n78#3,4:478\n71#4,2:482\n71#4,2:484\n*S KotlinDebug\n*F\n+ 1 CameraPipe.kt\nandroidx/camera/camera2/pipe/CameraPipeImpl\n*L\n280#1:440\n280#1:441,3\n284#1:444\n284#1:445,3\n317#1:461\n317#1:462,3\n321#1:465\n321#1:466,3\n292#1:448,2\n292#1:450,4\n292#1:454,3\n292#1:457,4\n332#1:469,2\n332#1:471,4\n332#1:475,3\n332#1:478,4\n415#1:482,2\n424#1:484,2\n*E\n"})
public final class CameraPipeImpl implements CameraPipe {
    private final CameraPipeComponent component;
    private final int debugId = CameraPipeKt.getCameraPipeIds().incrementAndGet();
    private final Object lock = new Object();
    private boolean shutdown;

    public CameraPipeImpl(CameraPipeComponent cameraPipeComponent) {
        this.component = cameraPipeComponent;
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    public CameraGraph createCameraGraph(CameraGraph.Config config) {
        CameraGraph cameraGraphCreateCameraGraphLocked;
        synchronized (this.lock) {
            if (this.shutdown) {
                throw new IllegalStateException("Check failed.");
            }
            cameraGraphCreateCameraGraphLocked = createCameraGraphLocked(config, CameraGraphId.INSTANCE.nextId());
        }
        return cameraGraphCreateCameraGraphLocked;
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    public List<CameraGraph> createCameraGraphs(CameraGraph.ConcurrentConfig config) {
        ArrayList arrayList;
        synchronized (this.lock) {
            try {
                if (this.shutdown) {
                    throw new IllegalStateException("Check failed.");
                }
                Map mapCreateMapBuilder = MapsKt.createMapBuilder();
                Iterator<CameraGraph.Config> it = config.getGraphConfigs().iterator();
                while (it.hasNext()) {
                    mapCreateMapBuilder.put(it.next(), CameraGraphId.INSTANCE.nextId());
                }
                Map mapBuild = MapsKt.build(mapCreateMapBuilder);
                List<CameraGraph.Config> graphConfigs = config.getGraphConfigs();
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(graphConfigs, 10));
                Iterator<T> it2 = graphConfigs.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(CameraId.m1298boximpl(((CameraGraph.Config) it2.next()).getCamera()));
                }
                ConcurrentCameraGraphs concurrentCameraGraphs = new ConcurrentCameraGraphs(CollectionsKt.toSet(mapBuild.values()), CollectionsKt.toSet(arrayList2));
                List<CameraGraph.Config> graphConfigs2 = config.getGraphConfigs();
                arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(graphConfigs2, 10));
                for (CameraGraph.Config config2 : graphConfigs2) {
                    config2.setConcurrentCameraGraphs$camera_camera2_pipe(concurrentCameraGraphs);
                    Object obj = mapBuild.get(config2);
                    if (obj == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    arrayList.add(createCameraGraphLocked(config2, (CameraGraphId) obj));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    private final CameraGraph createCameraGraphLocked(CameraGraph.Config config, CameraGraphId cameraGraphId) {
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection("CXCP#CameraGraph-" + ((Object) CameraId.m1303toStringimpl(config.getCamera())));
            return this.component.cameraGraphComponentBuilder().cameraGraphConfigModule(new CameraGraphConfigModule(config, cameraGraphId)).build().cameraGraph();
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    public CameraDevices cameras() {
        CameraDevices cameraDevicesCameras;
        synchronized (this.lock) {
            if (this.shutdown) {
                throw new IllegalStateException("Check failed.");
            }
            cameraDevicesCameras = this.component.cameras();
        }
        return cameraDevicesCameras;
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    public CameraSurfaceManager cameraSurfaceManager() {
        CameraSurfaceManager cameraSurfaceManager;
        synchronized (this.lock) {
            if (this.shutdown) {
                throw new IllegalStateException("Check failed.");
            }
            cameraSurfaceManager = this.component.cameraSurfaceManager();
        }
        return cameraSurfaceManager;
    }

    private final CameraBackend getBackend(CameraGraph.Config graphConfig) {
        CameraBackend cameraBackendMo1229getSG3A4s8;
        synchronized (this.lock) {
            try {
                if (this.shutdown) {
                    throw new IllegalStateException("Check failed.");
                }
                CameraBackendFactory customCameraBackend = graphConfig.getCustomCameraBackend();
                if (customCameraBackend != null) {
                    cameraBackendMo1229getSG3A4s8 = customCameraBackend.create(this.component.cameraContext());
                } else {
                    String cameraBackendId = graphConfig.getCameraBackendId();
                    CameraPipeComponent cameraPipeComponent = this.component;
                    if (cameraBackendId != null) {
                        cameraBackendMo1229getSG3A4s8 = cameraPipeComponent.cameraBackends().mo1229getSG3A4s8(cameraBackendId);
                        if (cameraBackendMo1229getSG3A4s8 == null) {
                            throw new IllegalStateException(("Failed to initialize " + ((Object) CameraBackendId.m1227toStringimpl(cameraBackendId)) + " from " + graphConfig).toString());
                        }
                    } else {
                        cameraBackendMo1229getSG3A4s8 = cameraPipeComponent.cameraBackends().getDefault();
                    }
                }
            } finally {
            }
        }
        return cameraBackendMo1229getSG3A4s8;
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    /* JADX INFO: renamed from: isConfigSupported-NpXggIU */
    public Object mo1309isConfigSupportedNpXggIU(CameraGraph.Config config, Continuation<? super ConfigQueryResult> continuation) {
        CameraBackend backend = getBackend(config);
        if (backend == null) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Required value was null.");
            return null;
        }
        return backend.mo1221isConfigSupportedNpXggIU(config, continuation);
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    public void shutdown() {
        synchronized (this.lock) {
            if (this.shutdown) {
                throw new IllegalStateException("Check failed.");
            }
            this.component.cameraPipeLifetime().shutdown();
            this.shutdown = true;
            Unit unit = Unit.INSTANCE;
        }
    }

    public String toString() {
        return "CameraPipe-" + this.debugId;
    }
}
