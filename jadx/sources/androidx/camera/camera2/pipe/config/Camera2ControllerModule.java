package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraStatusMonitor;
import javax.inject.Provider;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Camera2ControllerModule {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CoroutineScope provideCoroutineScope(Threads threads, Job cameraPipeJob) {
            Intrinsics.checkNotNullParameter(threads, "threads");
            Intrinsics.checkNotNullParameter(cameraPipeJob, "cameraPipeJob");
            return CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob(cameraPipeJob).plus(threads.getLightweightDispatcher().plus(new CoroutineName("CXCP-Camera2Controller"))));
        }

        public final CameraStatusMonitor provideCameraStatusMonitor(Provider cameraManager, Threads threads, CameraGraph.Config graphConfig, Job cameraPipeJob) {
            Intrinsics.checkNotNullParameter(cameraManager, "cameraManager");
            Intrinsics.checkNotNullParameter(threads, "threads");
            Intrinsics.checkNotNullParameter(graphConfig, "graphConfig");
            Intrinsics.checkNotNullParameter(cameraPipeJob, "cameraPipeJob");
            return new Camera2CameraStatusMonitor(cameraManager, threads, graphConfig.m1575getCameraDz_R5H8(), cameraPipeJob, null);
        }
    }
}
