package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.quirk.ConfigureSurfaceToSecondarySessionFailQuirk;
import androidx.camera.camera2.compat.quirk.PreviewOrientationIncorrectQuirk;
import androidx.camera.camera2.compat.quirk.TextureViewIsClosedQuirk;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.Quirks;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface InactiveSurfaceCloser {
    void closeAll();

    /* JADX INFO: renamed from: configure-hB7JTeY, reason: not valid java name */
    void mo1414configurehB7JTeY(int i, DeferrableSurface deferrableSurface, CameraGraph cameraGraph);

    void onSurfaceInactive(DeferrableSurface deferrableSurface);

    public static abstract class Bindings {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final InactiveSurfaceCloser provideInactiveSurfaceCloser(CameraQuirks cameraQuirks) {
                Intrinsics.checkNotNullParameter(cameraQuirks, "cameraQuirks");
                Quirks quirks = cameraQuirks.getQuirks();
                return (quirks.contains(ConfigureSurfaceToSecondarySessionFailQuirk.class) || quirks.contains(PreviewOrientationIncorrectQuirk.class) || quirks.contains(TextureViewIsClosedQuirk.class)) ? new InactiveSurfaceCloserImpl() : NoOpInactiveSurfaceCloser.INSTANCE;
            }
        }
    }
}
