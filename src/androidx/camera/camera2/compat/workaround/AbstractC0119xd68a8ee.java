package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: renamed from: androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser_Bindings_Companion_ProvideInactiveSurfaceCloserFactory */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0119xd68a8ee implements Provider {
    public static InactiveSurfaceCloser provideInactiveSurfaceCloser(CameraQuirks cameraQuirks) {
        return (InactiveSurfaceCloser) Preconditions.checkNotNullFromProvides(InactiveSurfaceCloser.Bindings.Companion.provideInactiveSurfaceCloser(cameraQuirks));
    }
}
