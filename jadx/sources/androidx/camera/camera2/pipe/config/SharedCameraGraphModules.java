package androidx.camera.camera2.pipe.config;

import android.hardware.camera2.CameraCharacteristics;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.core.SystemClockOffsets;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.Listener3A;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.graph.SurfaceGraph;
import androidx.camera.camera2.pipe.internal.FrameCaptureQueue;
import androidx.camera.camera2.pipe.internal.FrameDistributor;
import java.util.List;
import javax.inject.Provider;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SharedCameraGraphModules {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CoroutineScope provideCameraGraphCoroutineScope(Threads threads, Job cameraPipeJob) {
            Intrinsics.checkNotNullParameter(threads, "threads");
            Intrinsics.checkNotNullParameter(cameraPipeJob, "cameraPipeJob");
            return CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob(cameraPipeJob).plus(threads.getLightweightDispatcher().plus(new CoroutineName("CXCP-Graph"))));
        }

        public final List provideRequestListeners(CameraGraph.Config graphConfig, Listener3A listener3A, FrameDistributor frameDistributor) {
            Intrinsics.checkNotNullParameter(graphConfig, "graphConfig");
            Intrinsics.checkNotNullParameter(listener3A, "listener3A");
            Intrinsics.checkNotNullParameter(frameDistributor, "frameDistributor");
            List listMutableListOf = CollectionsKt.mutableListOf(listener3A);
            listMutableListOf.add(listener3A);
            listMutableListOf.add(frameDistributor);
            listMutableListOf.addAll(graphConfig.getDefaultListeners());
            return listMutableListOf;
        }

        public final SurfaceGraph provideSurfaceGraph(StreamGraphImpl streamGraphImpl, Provider cameraController, CameraSurfaceManager cameraSurfaceManager) {
            Intrinsics.checkNotNullParameter(streamGraphImpl, "streamGraphImpl");
            Intrinsics.checkNotNullParameter(cameraController, "cameraController");
            Intrinsics.checkNotNullParameter(cameraSurfaceManager, "cameraSurfaceManager");
            return new SurfaceGraph(streamGraphImpl, cameraController, cameraSurfaceManager, streamGraphImpl.getImageSourceMap$camera_camera2_pipe());
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x002f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final FrameDistributor provideFrameDistributor(StreamGraphImpl streamGraphImpl, FrameCaptureQueue frameCaptureQueue, CameraMetadata cameraMetadata, SystemClockOffsets systemClockOffsets) {
            boolean z;
            Intrinsics.checkNotNullParameter(streamGraphImpl, "streamGraphImpl");
            Intrinsics.checkNotNullParameter(frameCaptureQueue, "frameCaptureQueue");
            Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
            Intrinsics.checkNotNullParameter(systemClockOffsets, "systemClockOffsets");
            CameraCharacteristics.Key SENSOR_INFO_TIMESTAMP_SOURCE = CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE;
            Intrinsics.checkNotNullExpressionValue(SENSOR_INFO_TIMESTAMP_SOURCE, "SENSOR_INFO_TIMESTAMP_SOURCE");
            Integer num = (Integer) cameraMetadata.get(SENSOR_INFO_TIMESTAMP_SOURCE);
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
            return SystemClockOffsets.Companion.estimate();
        }
    }
}
