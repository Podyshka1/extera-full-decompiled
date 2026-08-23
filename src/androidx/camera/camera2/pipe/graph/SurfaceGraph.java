package androidx.camera.camera2.pipe.graph;

import android.view.Surface;
import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;
import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.SurfaceTracker;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.media.ImageSource;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Provider;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class SurfaceGraph implements SurfaceTracker, AutoCloseable {
    private final Provider cameraController;
    private boolean closed;
    private final Map imageSources;
    private final Object lock;
    private boolean shouldRegisterSurfaces;
    private final StreamGraphImpl streamGraphImpl;
    private final CameraSurfaceManager surfaceManager;
    private final Map surfaceMap;
    private final Map surfaceUsageMap;

    public SurfaceGraph(StreamGraphImpl streamGraphImpl, Provider cameraController, CameraSurfaceManager surfaceManager, Map imageSources) {
        Intrinsics.checkNotNullParameter(streamGraphImpl, "streamGraphImpl");
        Intrinsics.checkNotNullParameter(cameraController, "cameraController");
        Intrinsics.checkNotNullParameter(surfaceManager, "surfaceManager");
        Intrinsics.checkNotNullParameter(imageSources, "imageSources");
        this.streamGraphImpl = streamGraphImpl;
        this.cameraController = cameraController;
        this.surfaceManager = surfaceManager;
        this.imageSources = imageSources;
        this.lock = new Object();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : imageSources.entrySet()) {
            linkedHashMap.put(entry.getKey(), ((ImageSource) entry.getValue()).getSurface());
        }
        this.surfaceMap = linkedHashMap;
        this.surfaceUsageMap = new LinkedHashMap();
        this.shouldRegisterSurfaces = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x010c  */
    /* JADX INFO: renamed from: set-NYG5g8E, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m1933setNYG5g8E(int i, Surface surface) throws Exception {
        AutoCloseable autoCloseable;
        String str;
        if (this.imageSources.keySet().contains(StreamId.m1786boximpl(i))) {
            throw new IllegalStateException(("Cannot configure surface for " + ((Object) StreamId.m1791toStringimpl(i)) + ", it is permanently assigned to " + this.imageSources.get(StreamId.m1786boximpl(i))).toString());
        }
        synchronized (this.lock) {
            if (this.closed) {
                if (surface != null && Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Refusing to configure " + ((Object) StreamId.m1791toStringimpl(i)) + " with " + surface + " after close!");
                }
                return;
            }
            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                if (surface != null) {
                    str = "Configured " + ((Object) StreamId.m1791toStringimpl(i)) + " with " + surface;
                } else {
                    str = "Removed surface for " + ((Object) StreamId.m1791toStringimpl(i));
                }
                android.util.Log.i("CXCP", str);
            }
            if (surface == null) {
                Surface surface2 = (Surface) this.surfaceMap.remove(StreamId.m1786boximpl(i));
                autoCloseable = (!this.shouldRegisterSurfaces || surface2 == null) ? null : (AutoCloseable) this.surfaceUsageMap.remove(surface2);
            } else {
                Surface surface3 = (Surface) this.surfaceMap.get(StreamId.m1786boximpl(i));
                this.surfaceMap.put(StreamId.m1786boximpl(i), surface);
                if (this.shouldRegisterSurfaces && !Intrinsics.areEqual(surface3, surface)) {
                    if (this.surfaceUsageMap.containsKey(surface)) {
                        throw new IllegalStateException(("Surface (" + surface + ") is already in use!").toString());
                    }
                    autoCloseable = (AutoCloseable) TypeIntrinsics.asMutableMap(this.surfaceUsageMap).remove(surface3);
                    this.surfaceUsageMap.put(surface, this.surfaceManager.registerSurface$camera_camera2_pipe(surface));
                }
            }
            maybeUpdateSurfaces$camera_camera2_pipe();
            if (autoCloseable != null) {
                UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m22m(autoCloseable);
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.SurfaceTracker
    public void unregisterAllSurfaces() throws Exception {
        List list;
        synchronized (this.lock) {
            this.shouldRegisterSurfaces = false;
            list = CollectionsKt.toList(this.surfaceUsageMap.values());
            this.surfaceUsageMap.clear();
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m22m((AutoCloseable) it.next());
        }
    }

    @Override // androidx.camera.camera2.pipe.SurfaceTracker
    public void registerAllSurfaces() {
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    throw new IllegalStateException("Check failed.");
                }
                for (Surface surface : this.surfaceMap.values()) {
                    this.surfaceUsageMap.put(surface, this.surfaceManager.registerSurface$camera_camera2_pipe(surface));
                }
                this.shouldRegisterSurfaces = true;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() throws Exception {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            this.closed = true;
            this.surfaceMap.clear();
            List list = CollectionsKt.toList(this.surfaceUsageMap.values());
            this.surfaceUsageMap.clear();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m22m((AutoCloseable) it.next());
            }
        }
    }

    public final void maybeUpdateSurfaces$camera_camera2_pipe() {
        Map mapBuildSurfaceMap = buildSurfaceMap();
        if (mapBuildSurfaceMap.isEmpty()) {
            return;
        }
        ((CameraController) this.cameraController.get()).updateSurfaceMap(mapBuildSurfaceMap);
    }

    private final Map buildSurfaceMap() {
        synchronized (this.lock) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (StreamGraphImpl.OutputConfig outputConfig : this.streamGraphImpl.getOutputConfigs$camera_camera2_pipe()) {
                for (CameraStream cameraStream : outputConfig.getStreamBuilder$camera_camera2_pipe()) {
                    Surface surface = (Surface) this.surfaceMap.get(StreamId.m1786boximpl(cameraStream.m1616getIdptHMqGs()));
                    if (surface == null) {
                        if (!outputConfig.getDeferrable()) {
                            return MapsKt.emptyMap();
                        }
                    } else {
                        linkedHashMap.put(StreamId.m1786boximpl(cameraStream.m1616getIdptHMqGs()), surface);
                    }
                }
            }
            return linkedHashMap;
        }
    }
}
