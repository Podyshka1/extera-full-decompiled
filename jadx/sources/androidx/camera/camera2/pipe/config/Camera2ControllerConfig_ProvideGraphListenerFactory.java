package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.graph.GraphListener;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Camera2ControllerConfig_ProvideGraphListenerFactory implements Provider {
    public static GraphListener provideGraphListener(Camera2ControllerConfig camera2ControllerConfig) {
        return (GraphListener) Preconditions.checkNotNullFromProvides(camera2ControllerConfig.provideGraphListener());
    }
}
