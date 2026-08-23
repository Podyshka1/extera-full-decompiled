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
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraPipeImpl implements CameraPipe {
    private final CameraPipeComponent component;
    private final int debugId;
    private final Object lock;
    private boolean shutdown;

    public CameraPipeImpl(CameraPipeComponent component) {
        Intrinsics.checkNotNullParameter(component, "component");
        this.component = component;
        this.debugId = CameraPipeKt.getCameraPipeIds().incrementAndGet();
        this.lock = new Object();
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    public CameraGraph createCameraGraph(CameraGraph.Config config) {
        CameraGraph cameraGraphCreateCameraGraphLocked;
        Intrinsics.checkNotNullParameter(config, "config");
        synchronized (this.lock) {
            if (this.shutdown) {
                throw new IllegalStateException("Check failed.");
            }
            cameraGraphCreateCameraGraphLocked = createCameraGraphLocked(config, CameraGraphId.Companion.nextId());
        }
        return cameraGraphCreateCameraGraphLocked;
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    public List createCameraGraphs(CameraGraph.ConcurrentConfig config) {
        ArrayList arrayList;
        Intrinsics.checkNotNullParameter(config, "config");
        synchronized (this.lock) {
            try {
                if (this.shutdown) {
                    throw new IllegalStateException("Check failed.");
                }
                Map mapCreateMapBuilder = MapsKt.createMapBuilder();
                Iterator it = config.getGraphConfigs().iterator();
                while (it.hasNext()) {
                    mapCreateMapBuilder.put((CameraGraph.Config) it.next(), CameraGraphId.Companion.nextId());
                }
                Map mapBuild = MapsKt.build(mapCreateMapBuilder);
                List graphConfigs = config.getGraphConfigs();
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(graphConfigs, 10));
                Iterator it2 = graphConfigs.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(CameraId.m1602boximpl(((CameraGraph.Config) it2.next()).m1575getCameraDz_R5H8()));
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
            Trace.beginSection("CXCP#CameraGraph-" + ((Object) CameraId.m1607toStringimpl(config.m1575getCameraDz_R5H8())));
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

    private final CameraBackend getBackend(CameraGraph.Config config) {
        CameraBackend cameraBackendCreate;
        synchronized (this.lock) {
            try {
                if (this.shutdown) {
                    throw new IllegalStateException("Check failed.");
                }
                CameraBackendFactory customCameraBackend = config.getCustomCameraBackend();
                if (customCameraBackend != null) {
                    cameraBackendCreate = customCameraBackend.create(this.component.cameraContext());
                } else {
                    String strM1576getCameraBackendIdAKmI2lo = config.m1576getCameraBackendIdAKmI2lo();
                    if (strM1576getCameraBackendIdAKmI2lo != null) {
                        CameraBackend cameraBackendMo1533getSG3A4s8 = this.component.cameraBackends().mo1533getSG3A4s8(strM1576getCameraBackendIdAKmI2lo);
                        if (cameraBackendMo1533getSG3A4s8 == null) {
                            throw new IllegalStateException(("Failed to initialize " + ((Object) CameraBackendId.m1531toStringimpl(strM1576getCameraBackendIdAKmI2lo)) + " from " + config).toString());
                        }
                        cameraBackendCreate = cameraBackendMo1533getSG3A4s8;
                    } else {
                        cameraBackendCreate = this.component.cameraBackends().getDefault();
                    }
                }
            } finally {
            }
        }
        return cameraBackendCreate;
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    /* JADX INFO: renamed from: isConfigSupported-NpXggIU */
    public Object mo1613isConfigSupportedNpXggIU(CameraGraph.Config config, Continuation continuation) {
        CameraBackend backend = getBackend(config);
        if (backend == null) {
            throw new IllegalStateException("Required value was null.");
        }
        return backend.mo1525isConfigSupportedNpXggIU(config, continuation);
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
