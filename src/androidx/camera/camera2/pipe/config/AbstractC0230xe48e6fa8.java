package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.graph.Listener3A;
import androidx.camera.camera2.pipe.internal.FrameDistributor;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import java.util.List;

/* JADX INFO: renamed from: androidx.camera.camera2.pipe.config.SharedCameraGraphModules_Companion_ProvideRequestListenersFactory */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0230xe48e6fa8 implements Provider {
    public static List provideRequestListeners(CameraGraph.Config config, Listener3A listener3A, FrameDistributor frameDistributor) {
        return (List) Preconditions.checkNotNullFromProvides(SharedCameraGraphModules.Companion.provideRequestListeners(config, listener3A, frameDistributor));
    }
}
