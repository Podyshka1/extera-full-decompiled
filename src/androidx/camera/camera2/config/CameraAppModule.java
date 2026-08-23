package androidx.camera.camera2.config;

import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraPipe;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraAppModule {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CameraDevices provideCameraDevices(CameraPipe cameraPipe) {
            Intrinsics.checkNotNullParameter(cameraPipe, "cameraPipe");
            return cameraPipe.cameras();
        }
    }
}
