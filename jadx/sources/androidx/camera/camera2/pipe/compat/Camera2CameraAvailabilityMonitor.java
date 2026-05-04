package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.core.Threads;
import javax.inject.Provider;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2CameraAvailabilityMonitor implements CameraAvailabilityMonitor {
    private final Flow availableCameraFlow;
    private final Provider cameraManager;
    private final Job cameraPipeJob;
    private final Threads threads;

    public Camera2CameraAvailabilityMonitor(Provider cameraManager, Threads threads, Job cameraPipeJob) {
        Intrinsics.checkNotNullParameter(cameraManager, "cameraManager");
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(cameraPipeJob, "cameraPipeJob");
        this.cameraManager = cameraManager;
        this.threads = threads;
        this.cameraPipeJob = cameraPipeJob;
        this.availableCameraFlow = FlowKt.callbackFlow(new Camera2CameraAvailabilityMonitor$availableCameraFlow$1(this, null));
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraAvailabilityMonitor
    /* JADX INFO: renamed from: startMonitoring-0r8Bogc, reason: not valid java name */
    public Object mo1812startMonitoring0r8Bogc(String str, Continuation continuation) {
        return new Camera2CameraAvailabilityMonitor$startMonitoring$2(this, str);
    }
}
