package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Camera2ControllerConfig_ProvideStreamGraphFactory implements Provider {
    public static StreamGraphImpl provideStreamGraph(Camera2ControllerConfig camera2ControllerConfig) {
        return (StreamGraphImpl) Preconditions.checkNotNullFromProvides(camera2ControllerConfig.provideStreamGraph());
    }
}
