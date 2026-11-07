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
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0000\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003B9\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f¢\u0006\u0004\b\u000f\u0010\u0010J\"\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\r2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0015H\u0086\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\b\u0010 \u001a\u00020\u001bH\u0016J\b\u0010!\u001a\u00020\u001bH\u0016J\b\u0010\"\u001a\u00020\u001bH\u0016J\r\u0010#\u001a\u00020\u001bH\u0000¢\u0006\u0002\b$J\u0014\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00150\fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00150\u00148\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R \u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u00148\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00188\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Landroidx/camera/camera2/pipe/graph/SurfaceGraph;", "Landroidx/camera/camera2/pipe/SurfaceTracker;", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "streamGraphImpl", "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;", "cameraController", "Ljavax/inject/Provider;", "Landroidx/camera/camera2/pipe/CameraController;", "surfaceManager", "Landroidx/camera/camera2/pipe/CameraSurfaceManager;", "imageSources", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/StreamId;", "Landroidx/camera/camera2/pipe/media/ImageSource;", "<init>", "(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Ljava/util/Map;)V", "lock", _UrlKt.FRAGMENT_ENCODE_SET, "surfaceMap", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/view/Surface;", "surfaceUsageMap", "shouldRegisterSurfaces", _UrlKt.FRAGMENT_ENCODE_SET, "closed", "set", _UrlKt.FRAGMENT_ENCODE_SET, "streamId", "surface", "set-NYG5g8E", "(ILandroid/view/Surface;)V", "unregisterAllSurfaces", "registerAllSurfaces", "close", "maybeUpdateSurfaces", "maybeUpdateSurfaces$camera_camera2_pipe", "buildSurfaceMap", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSurfaceGraph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SurfaceGraph.kt\nandroidx/camera/camera2/pipe/graph/SurfaceGraph\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,185:1\n415#2:186\n1252#3,4:187\n71#4,2:191\n59#4,2:193\n1#5:195\n*S KotlinDebug\n*F\n+ 1 SurfaceGraph.kt\nandroidx/camera/camera2/pipe/graph/SurfaceGraph\n*L\n49#1:186\n49#1:187,4\n71#1:191,2\n76#1:193,2\n*E\n"})
public final class SurfaceGraph implements SurfaceTracker, AutoCloseable {
    private final Provider<CameraController> cameraController;
    private boolean closed;
    private final Map<StreamId, ImageSource> imageSources;
    private final Object lock = new Object();
    private boolean shouldRegisterSurfaces;
    private final StreamGraphImpl streamGraphImpl;
    private final CameraSurfaceManager surfaceManager;
    private final Map<StreamId, Surface> surfaceMap;
    private final Map<Surface, AutoCloseable> surfaceUsageMap;

    /* JADX WARN: Multi-variable type inference failed */
    public SurfaceGraph(StreamGraphImpl streamGraphImpl, Provider<CameraController> provider, CameraSurfaceManager cameraSurfaceManager, Map<StreamId, ? extends ImageSource> map) {
        this.streamGraphImpl = streamGraphImpl;
        this.cameraController = provider;
        this.surfaceManager = cameraSurfaceManager;
        this.imageSources = map;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), ((ImageSource) entry.getValue()).getSurface());
        }
        this.surfaceMap = linkedHashMap;
        this.surfaceUsageMap = new LinkedHashMap();
        this.shouldRegisterSurfaces = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00fe  */
    /* JADX INFO: renamed from: set-NYG5g8E, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m1673setNYG5g8E(int streamId, Surface surface) throws Exception {
        AutoCloseable autoCloseableRemove;
        String str;
        if (this.imageSources.keySet().contains(StreamId.m1525boximpl(streamId))) {
            StringBuilder sb = new StringBuilder("Cannot configure surface for ");
            sb.append((Object) StreamId.m1530toStringimpl(streamId));
            SurfaceGraph$$ExternalSyntheticBUOutline0.m71m(sb, ", it is permanently assigned to ", this.imageSources.get(StreamId.m1525boximpl(streamId)));
            return;
        }
        synchronized (this.lock) {
            if (this.closed) {
                if (surface != null && Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Refusing to configure " + ((Object) StreamId.m1530toStringimpl(streamId)) + " with " + surface + " after close!");
                }
                return;
            }
            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                if (surface != null) {
                    str = "Configured " + ((Object) StreamId.m1530toStringimpl(streamId)) + " with " + surface;
                } else {
                    str = "Removed surface for " + ((Object) StreamId.m1530toStringimpl(streamId));
                }
                android.util.Log.i("CXCP", str);
            }
            Map<StreamId, Surface> map = this.surfaceMap;
            if (surface == null) {
                Surface surfaceRemove = map.remove(StreamId.m1525boximpl(streamId));
                autoCloseableRemove = (!this.shouldRegisterSurfaces || surfaceRemove == null) ? null : this.surfaceUsageMap.remove(surfaceRemove);
            } else {
                Surface surface2 = map.get(StreamId.m1525boximpl(streamId));
                this.surfaceMap.put(StreamId.m1525boximpl(streamId), surface);
                if (this.shouldRegisterSurfaces && !Intrinsics.areEqual(surface2, surface)) {
                    if (this.surfaceUsageMap.containsKey(surface)) {
                        throw new IllegalStateException(("Surface (" + surface + ") is already in use!").toString());
                    }
                    autoCloseableRemove = (AutoCloseable) TypeIntrinsics.asMutableMap(this.surfaceUsageMap).remove(surface2);
                    this.surfaceUsageMap.put(surface, this.surfaceManager.registerSurface$camera_camera2_pipe(surface));
                }
            }
            maybeUpdateSurfaces$camera_camera2_pipe();
            if (autoCloseableRemove != null) {
                UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m24m(autoCloseableRemove);
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
            UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m24m((AutoCloseable) it.next());
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
                UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m24m((AutoCloseable) it.next());
            }
        }
    }

    public final void maybeUpdateSurfaces$camera_camera2_pipe() {
        Map<StreamId, Surface> mapBuildSurfaceMap = buildSurfaceMap();
        if (mapBuildSurfaceMap.isEmpty()) {
            return;
        }
        this.cameraController.get().updateSurfaceMap(mapBuildSurfaceMap);
    }

    private final Map<StreamId, Surface> buildSurfaceMap() {
        synchronized (this.lock) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (StreamGraphImpl.OutputConfig outputConfig : this.streamGraphImpl.getOutputConfigs$camera_camera2_pipe()) {
                for (CameraStream cameraStream : outputConfig.getStreamBuilder$camera_camera2_pipe()) {
                    Surface surface = this.surfaceMap.get(StreamId.m1525boximpl(cameraStream.getId()));
                    if (surface == null) {
                        if (!outputConfig.getDeferrable()) {
                            return MapsKt.emptyMap();
                        }
                    } else {
                        linkedHashMap.put(StreamId.m1525boximpl(cameraStream.getId()), surface);
                    }
                }
            }
            return linkedHashMap;
        }
    }
}
