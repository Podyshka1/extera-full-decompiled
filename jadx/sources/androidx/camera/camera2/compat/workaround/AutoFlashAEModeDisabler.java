package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.quirk.CrashWhenTakingPhotoWithAutoFlashAEModeQuirk;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ImageCaptureFailWithAutoFlashQuirk;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface AutoFlashAEModeDisabler {
    int getCorrectedAeMode(int i);

    public static abstract class Bindings {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final AutoFlashAEModeDisabler provideAEModeDisabler(CameraQuirks cameraQuirks) {
                Intrinsics.checkNotNullParameter(cameraQuirks, "cameraQuirks");
                boolean zContains = cameraQuirks.getQuirks().contains(ImageCaptureFailWithAutoFlashQuirk.class);
                if (DeviceQuirks.INSTANCE.get(CrashWhenTakingPhotoWithAutoFlashAEModeQuirk.class) != null || zContains) {
                    return AutoFlashAEModeDisablerImpl.INSTANCE;
                }
                return NoOpAutoFlashAEModeDisabler.INSTANCE;
            }
        }
    }
}
