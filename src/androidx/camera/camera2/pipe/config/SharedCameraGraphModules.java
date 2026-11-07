package androidx.camera.camera2.pipe.config;

import android.hardware.camera2.CameraCharacteristics;
import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.core.SystemClockOffsets;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.Listener3A;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.graph.SurfaceGraph;
import androidx.camera.camera2.pipe.internal.FrameCaptureQueue;
import androidx.camera.camera2.pipe.internal.FrameDistributor;
import java.util.List;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b!\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules;", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class SharedCameraGraphModules {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0001\u0010\b\u001a\u00020\tH\u0007J+\u0010\n\u001a\r\u0012\t\u0012\u00070\f¢\u0006\u0002\b\r0\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J&\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J(\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0007J\b\u0010$\u001a\u00020#H\u0007¨\u0006%"}, d2 = {"Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "provideCameraGraphCoroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "threads", "Landroidx/camera/camera2/pipe/core/Threads;", "cameraPipeJob", "Lkotlinx/coroutines/Job;", "provideRequestListeners", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/Request$Listener;", "Lkotlin/jvm/JvmSuppressWildcards;", "graphConfig", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "listener3A", "Landroidx/camera/camera2/pipe/graph/Listener3A;", "frameDistributor", "Landroidx/camera/camera2/pipe/internal/FrameDistributor;", "provideSurfaceGraph", "Landroidx/camera/camera2/pipe/graph/SurfaceGraph;", "streamGraphImpl", "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;", "cameraController", "Ljavax/inject/Provider;", "Landroidx/camera/camera2/pipe/CameraController;", "cameraSurfaceManager", "Landroidx/camera/camera2/pipe/CameraSurfaceManager;", "provideFrameDistributor", "frameCaptureQueue", "Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;", "cameraMetadata", "Landroidx/camera/camera2/pipe/CameraMetadata;", "systemClockOffsets", "Landroidx/camera/camera2/pipe/core/SystemClockOffsets;", "provideSystemClockOffsets", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CoroutineScope provideCameraGraphCoroutineScope(Threads threads, Job cameraPipeJob) {
            return CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob(cameraPipeJob).plus(threads.getLightweightDispatcher().plus(new CoroutineName("CXCP-Graph"))));
        }

        public final List<Request.Listener> provideRequestListeners(CameraGraph.Config graphConfig, Listener3A listener3A, FrameDistributor frameDistributor) {
            List<Request.Listener> listMutableListOf = CollectionsKt.mutableListOf(listener3A);
            listMutableListOf.add(listener3A);
            listMutableListOf.add(frameDistributor);
            listMutableListOf.addAll(graphConfig.getDefaultListeners());
            return listMutableListOf;
        }

        public final SurfaceGraph provideSurfaceGraph(StreamGraphImpl streamGraphImpl, Provider<CameraController> cameraController, CameraSurfaceManager cameraSurfaceManager) {
            return new SurfaceGraph(streamGraphImpl, cameraController, cameraSurfaceManager, streamGraphImpl.getImageSourceMap$camera_camera2_pipe());
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final FrameDistributor provideFrameDistributor(StreamGraphImpl streamGraphImpl, FrameCaptureQueue frameCaptureQueue, CameraMetadata cameraMetadata, SystemClockOffsets systemClockOffsets) {
            boolean z;
            Integer num = (Integer) cameraMetadata.get(CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE);
            if (num == null) {
                z = false;
            } else {
                z = true;
                if (num.intValue() != 1) {
                }
            }
            return new FrameDistributor(streamGraphImpl, frameCaptureQueue, z, systemClockOffsets.getRealtimeNsToMonotonicNs());
        }

        public final SystemClockOffsets provideSystemClockOffsets() {
            return SystemClockOffsets.INSTANCE.estimate();
        }
    }
}
