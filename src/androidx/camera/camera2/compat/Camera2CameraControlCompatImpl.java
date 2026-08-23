package androidx.camera.camera2.compat;

import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.impl.ComboRequestListenerKt;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.core.CameraControl;
import androidx.camera.core.impl.Config;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016J\b\u0010\u0012\u001a\u00020\u000eH\u0016J\b\u0010\u0013\u001a\u00020\u000eH\u0016J\"\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J&\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n*\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n2\b\b\u0002\u0010\u001b\u001a\u00020\u001cH\u0002J'\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0016¢\u0006\u0004\b$\u0010%R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\n8\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\n8\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;", "Landroidx/camera/camera2/compat/Camera2CameraControlCompat;", "<init>", "()V", "lock", _UrlKt.FRAGMENT_ENCODE_SET, "updateSignalLock", "configBuilder", "Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;", "updateSignal", "Lkotlinx/coroutines/CompletableDeferred;", "Ljava/lang/Void;", "pendingSignal", "addRequestOption", _UrlKt.FRAGMENT_ENCODE_SET, "bundle", "Landroidx/camera/camera2/interop/CaptureRequestOptions;", "getRequestOption", "clearRequestOption", "cancelCurrentTask", "applyAsync", "Lkotlinx/coroutines/Deferred;", "requestControl", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "cancelPreviousTask", _UrlKt.FRAGMENT_ENCODE_SET, "cancelSignal", "msg", _UrlKt.FRAGMENT_ENCODE_SET, "onComplete", "requestMetadata", "Landroidx/camera/camera2/pipe/RequestMetadata;", "frameNumber", "Landroidx/camera/camera2/pipe/FrameNumber;", "result", "Landroidx/camera/camera2/pipe/FrameInfo;", "onComplete-CcXjc1I", "(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCamera2CameraControlCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Camera2CameraControlCompat.kt\nandroidx/camera/camera2/compat/Camera2CameraControlCompatImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,171:1\n1#2:172\n*E\n"})
public final class Camera2CameraControlCompatImpl implements Camera2CameraControlCompat {
    private CompletableDeferred<Void> pendingSignal;
    private CompletableDeferred<Void> updateSignal;
    private final Object lock = new Object();
    private final Object updateSignalLock = new Object();
    private Camera2ImplConfig.Builder configBuilder = new Camera2ImplConfig.Builder();

    @Override // androidx.camera.camera2.compat.Camera2CameraControlCompat
    public void addRequestOption(CaptureRequestOptions bundle) {
        synchronized (this.lock) {
            try {
                for (Config.Option<?> option : bundle.listOptions()) {
                    this.configBuilder.getMutableConfig().insertOption(option, Config.OptionPriority.ALWAYS_OVERRIDE, bundle.retrieveOption(option));
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.compat.Camera2CameraControlCompat
    public CaptureRequestOptions getRequestOption() {
        CaptureRequestOptions captureRequestOptionsBuild;
        synchronized (this.lock) {
            captureRequestOptionsBuild = CaptureRequestOptions.Builder.INSTANCE.from(this.configBuilder.build()).build();
        }
        return captureRequestOptionsBuild;
    }

    @Override // androidx.camera.camera2.compat.Camera2CameraControlCompat
    public void clearRequestOption() {
        synchronized (this.lock) {
            this.configBuilder = new Camera2ImplConfig.Builder();
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // androidx.camera.camera2.compat.Camera2CameraControlCompat
    public void cancelCurrentTask() {
        synchronized (this.updateSignalLock) {
            try {
                CompletableDeferred<Void> completableDeferred = this.updateSignal;
                if (completableDeferred != null) {
                    this.updateSignal = null;
                    cancelSignal(completableDeferred, "The camera control has became inactive.");
                }
                CompletableDeferred<Void> completableDeferred2 = this.pendingSignal;
                if (completableDeferred2 != null) {
                    this.pendingSignal = null;
                    cancelSignal(completableDeferred2, "The camera control has became inactive.");
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.compat.Camera2CameraControlCompat
    public Deferred<Void> applyAsync(UseCaseCameraRequestControl requestControl, boolean cancelPreviousTask) {
        Camera2ImplConfig camera2ImplConfigBuild;
        CompletableDeferred<Void> completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        synchronized (this.lock) {
            camera2ImplConfigBuild = this.configBuilder.build();
        }
        synchronized (this.updateSignalLock) {
            try {
                if (requestControl != null) {
                    CompletableDeferred<Void> completableDeferred = this.updateSignal;
                    if (cancelPreviousTask) {
                        if (completableDeferred != null) {
                            cancelSignal$default(this, completableDeferred, null, 1, null);
                        }
                    } else if (completableDeferred != null) {
                        CoroutineAdaptersKt.propagateTo(completableDeferredCompletableDeferred$default, completableDeferred);
                    }
                    this.updateSignal = completableDeferredCompletableDeferred$default;
                    requestControl.updateCamera2ConfigAsync(camera2ImplConfigBuild, MapsKt.mapOf(TuplesKt.to("Camera2CameraControl.tag", Integer.valueOf(completableDeferredCompletableDeferred$default.hashCode()))));
                } else {
                    CompletableDeferred<Void> completableDeferred2 = this.pendingSignal;
                    if (completableDeferred2 != null) {
                        cancelSignal$default(this, completableDeferred2, null, 1, null);
                    }
                    this.pendingSignal = completableDeferredCompletableDeferred$default;
                    Unit unit = Unit.INSTANCE;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return completableDeferredCompletableDeferred$default;
    }

    public static /* synthetic */ CompletableDeferred cancelSignal$default(Camera2CameraControlCompatImpl camera2CameraControlCompatImpl, CompletableDeferred completableDeferred, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "Camera2CameraControl was updated with new options.";
        }
        return camera2CameraControlCompatImpl.cancelSignal(completableDeferred, str);
    }

    private final CompletableDeferred<Void> cancelSignal(CompletableDeferred<Void> completableDeferred, String str) {
        completableDeferred.completeExceptionally(new CameraControl.OperationCanceledException(str));
        return completableDeferred;
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onComplete-CcXjc1I */
    public void mo994onCompleteCcXjc1I(RequestMetadata requestMetadata, long frameNumber, FrameInfo result) {
        synchronized (this.updateSignalLock) {
            try {
                CompletableDeferred<Void> completableDeferred = this.updateSignal;
                if (completableDeferred != null && ComboRequestListenerKt.containsTag(requestMetadata, "Camera2CameraControl.tag", Integer.valueOf(completableDeferred.hashCode()))) {
                    completableDeferred.complete(null);
                    this.updateSignal = null;
                    CompletableDeferred<Void> completableDeferred2 = this.pendingSignal;
                    if (completableDeferred2 != null) {
                        completableDeferred2.complete(null);
                        this.pendingSignal = null;
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
