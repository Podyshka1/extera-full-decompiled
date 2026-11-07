package androidx.camera.camera2.interop;

import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.camera2.compat.Camera2CameraControlCompat;
import androidx.camera.camera2.impl.ComboRequestListener;
import androidx.camera.camera2.impl.UseCaseCameraControl;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.core.impl.utils.futures.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u0000 )2\u00020\u0001:\u0001)B!\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0017¢\u0006\u0004\b\u0011\u0010\u0012J\u001d\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\f2\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0013¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\f¢\u0006\u0004\b\u0019\u0010\u001aR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u001bR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u001cR\u001a\u0010\u0007\u001a\u00020\u00068\u0001X\u0080\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0018\u0010!\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R(\u0010(\u001a\u0004\u0018\u00010 2\b\u0010#\u001a\u0004\u0018\u00010 8W@WX\u0096\u000e¢\u0006\f\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006*"}, d2 = {"Landroidx/camera/camera2/interop/Camera2CameraControl;", "Landroidx/camera/camera2/impl/UseCaseCameraControl;", "Landroidx/camera/camera2/compat/Camera2CameraControlCompat;", "compat", "Landroidx/camera/camera2/impl/UseCaseThreads;", "threads", "Landroidx/camera/camera2/impl/ComboRequestListener;", "requestListener", "<init>", "(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)V", _UrlKt.FRAGMENT_ENCODE_SET, "tag", "Lcom/google/common/util/concurrent/ListenableFuture;", "Ljava/lang/Void;", "updateAsync", "(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;", _UrlKt.FRAGMENT_ENCODE_SET, "reset", "()V", "Landroidx/camera/camera2/interop/CaptureRequestOptions;", "bundle", "addCaptureRequestOptions", "(Landroidx/camera/camera2/interop/CaptureRequestOptions;)Lcom/google/common/util/concurrent/ListenableFuture;", "getCaptureRequestOptions", "()Landroidx/camera/camera2/interop/CaptureRequestOptions;", "clearCaptureRequestOptions", "()Lcom/google/common/util/concurrent/ListenableFuture;", "Landroidx/camera/camera2/compat/Camera2CameraControlCompat;", "Landroidx/camera/camera2/impl/UseCaseThreads;", "Landroidx/camera/camera2/impl/ComboRequestListener;", "getRequestListener$camera_camera2", "()Landroidx/camera/camera2/impl/ComboRequestListener;", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "_useCaseCameraRequestControl", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "value", "getRequestControl", "()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "setRequestControl", "(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V", "requestControl", "Companion", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class Camera2CameraControl implements UseCaseCameraControl {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
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

    /* JADX INFO: renamed from: getRequestControl, reason: from getter */
    public UseCaseCameraRequestControl get_useCaseCameraRequestControl() {
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

    public final ListenableFuture<Void> addCaptureRequestOptions(CaptureRequestOptions bundle) {
        this.compat.addRequestOption(bundle);
        return updateAsync("addCaptureRequestOptions");
    }

    public final CaptureRequestOptions getCaptureRequestOptions() {
        return this.compat.getRequestOption();
    }

    public final ListenableFuture<Void> clearCaptureRequestOptions() {
        this.compat.clearRequestOption();
        return updateAsync("clearCaptureRequestOptions");
    }

    private final ListenableFuture<Void> updateAsync(String tag) {
        return Futures.nonCancellationPropagating(CoroutineAdaptersKt.asListenableFuture(Camera2CameraControlCompat.applyAsync$default(this.compat, get_useCaseCameraRequestControl(), false, 2, null), (Object) tag));
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/camera/camera2/interop/Camera2CameraControl$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/camera/camera2/compat/Camera2CameraControlCompat;", "compat", "Landroidx/camera/camera2/impl/UseCaseThreads;", "threads", "Landroidx/camera/camera2/impl/ComboRequestListener;", "requestListener", "Landroidx/camera/camera2/interop/Camera2CameraControl;", "create", "(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)Landroidx/camera/camera2/interop/Camera2CameraControl;", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final Camera2CameraControl create(Camera2CameraControlCompat compat, UseCaseThreads threads, ComboRequestListener requestListener) {
            return new Camera2CameraControl(compat, threads, requestListener, null);
        }
    }
}
