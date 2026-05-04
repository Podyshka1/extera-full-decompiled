package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.graph.SurfaceGraph;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SharedCameraGraphModules_Companion_ProvideSurfaceGraphFactory implements Provider {
    public static SurfaceGraph provideSurfaceGraph(StreamGraphImpl streamGraphImpl, javax.inject.Provider provider, CameraSurfaceManager cameraSurfaceManager) {
        return (SurfaceGraph) Preconditions.checkNotNullFromProvides(SharedCameraGraphModules.Companion.provideSurfaceGraph(streamGraphImpl, provider, cameraSurfaceManager));
    }
}
