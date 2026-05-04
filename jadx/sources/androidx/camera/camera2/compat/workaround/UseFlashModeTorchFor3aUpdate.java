package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.quirk.TorchFlashRequiredFor3aUpdateQuirk;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface UseFlashModeTorchFor3aUpdate {
    boolean shouldUseFlashModeTorch();

    public static abstract class Bindings {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final UseFlashModeTorchFor3aUpdate provideUseFlashModeTorchFor3aUpdate(CameraQuirks cameraQuirks) {
                Intrinsics.checkNotNullParameter(cameraQuirks, "cameraQuirks");
                if (cameraQuirks.getQuirks().contains(TorchFlashRequiredFor3aUpdateQuirk.class)) {
                    return UseFlashModeTorchFor3aUpdateImpl.INSTANCE;
                }
                return NotUseFlashModeTorchFor3aUpdate.INSTANCE;
            }
        }
    }
}
