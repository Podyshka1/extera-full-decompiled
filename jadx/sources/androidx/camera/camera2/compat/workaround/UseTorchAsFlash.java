package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.quirk.UseTorchAsFlashQuirk;
import androidx.camera.camera2.internal.IntrinsicZoomCalculator;
import androidx.camera.camera2.pipe.CameraDevices;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface UseTorchAsFlash {
    boolean shouldDisableAePrecapture();

    Object shouldUseTorchAsFlash(Function1 function1, Continuation continuation);

    public static abstract class Bindings {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final UseTorchAsFlash provideUseTorchAsFlash(CameraQuirks cameraQuirks, CameraDevices cameraDevices, IntrinsicZoomCalculator intrinsicZoomCalculator) {
                Intrinsics.checkNotNullParameter(cameraQuirks, "cameraQuirks");
                Intrinsics.checkNotNullParameter(cameraDevices, "cameraDevices");
                Intrinsics.checkNotNullParameter(intrinsicZoomCalculator, "intrinsicZoomCalculator");
                if (cameraQuirks.getQuirks().contains(UseTorchAsFlashQuirk.class)) {
                    return new UseTorchAsFlashImpl(cameraQuirks, cameraDevices, intrinsicZoomCalculator);
                }
                return NotUseTorchAsFlash.INSTANCE;
            }
        }
    }
}
