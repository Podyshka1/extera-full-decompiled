package androidx.camera.camera2.interop;

import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.camera2.compat.Camera2CameraControlCompat;
import androidx.camera.camera2.impl.ComboRequestListener;
import androidx.camera.camera2.impl.UseCaseCameraControl;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.core.impl.utils.futures.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2CameraControl implements UseCaseCameraControl {
    public static final Companion Companion = new Companion(null);
    private UseCaseCameraRequestControl _useCaseCameraRequestControl;
    private final Camera2CameraControlCompat compat;
    private final ComboRequestListener requestListener;
    private final UseCaseThreads threads;

    public /* synthetic */ Camera2CameraControl(Camera2CameraControlCompat camera2CameraControlCompat, UseCaseThreads useCaseThreads, ComboRequestListener comboRequestListener, DefaultConstructorMarker defaultConstructorMarker) {
        this(camera2CameraControlCompat, useCaseThreads, comboRequestListener);
    }

    private Camera2CameraControl(Camera2CameraControlCompat camera2CameraControlCompat, UseCaseThreads useCaseThreads, ComboRequestListener comboRequestListener) {
        this.compat = camera2CameraControlCompat;
        this.threads = useCaseThreads;
        this.requestListener = comboRequestListener;
    }

    public UseCaseCameraRequestControl getRequestControl() {
        return this._useCaseCameraRequestControl;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._useCaseCameraRequestControl = useCaseCameraRequestControl;
        if (useCaseCameraRequestControl != null) {
            this.requestListener.removeListener(this.compat);
            this.requestListener.addListener(this.compat, this.threads.getSequentialExecutor());
            this.compat.applyAsync(useCaseCameraRequestControl, false);
        }
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        this.compat.cancelCurrentTask();
        this.requestListener.removeListener(this.compat);
    }

    public final ListenableFuture addCaptureRequestOptions(CaptureRequestOptions bundle) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        this.compat.addRequestOption(bundle);
        return updateAsync("addCaptureRequestOptions");
    }

    public final CaptureRequestOptions getCaptureRequestOptions() {
        return this.compat.getRequestOption();
    }

    public final ListenableFuture clearCaptureRequestOptions() {
        this.compat.clearRequestOption();
        return updateAsync("clearCaptureRequestOptions");
    }

    private final ListenableFuture updateAsync(String str) {
        ListenableFuture listenableFutureNonCancellationPropagating = Futures.nonCancellationPropagating(CoroutineAdaptersKt.asListenableFuture(Camera2CameraControlCompat.CC.applyAsync$default(this.compat, getRequestControl(), false, 2, null), (Object) str));
        Intrinsics.checkNotNullExpressionValue(listenableFutureNonCancellationPropagating, "nonCancellationPropagating(...)");
        return listenableFutureNonCancellationPropagating;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Camera2CameraControl create(Camera2CameraControlCompat compat, UseCaseThreads threads, ComboRequestListener requestListener) {
            Intrinsics.checkNotNullParameter(compat, "compat");
            Intrinsics.checkNotNullParameter(threads, "threads");
            Intrinsics.checkNotNullParameter(requestListener, "requestListener");
            return new Camera2CameraControl(compat, threads, requestListener, null);
        }
    }
}
