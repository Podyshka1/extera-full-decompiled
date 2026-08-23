package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.SystemClockOffsets;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.internal.FrameCaptureQueue;
import androidx.camera.camera2.pipe.internal.FrameDistributor;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: renamed from: androidx.camera.camera2.pipe.config.SharedCameraGraphModules_Companion_ProvideFrameDistributorFactory */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0229xe945089e implements Provider {
    public static FrameDistributor provideFrameDistributor(StreamGraphImpl streamGraphImpl, FrameCaptureQueue frameCaptureQueue, CameraMetadata cameraMetadata, SystemClockOffsets systemClockOffsets) {
        return (FrameDistributor) Preconditions.checkNotNullFromProvides(SharedCameraGraphModules.Companion.provideFrameDistributor(streamGraphImpl, frameCaptureQueue, cameraMetadata, systemClockOffsets));
    }
}
