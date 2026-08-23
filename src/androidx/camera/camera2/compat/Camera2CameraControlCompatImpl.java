package androidx.camera.camera2.compat;

import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.impl.ComboRequestListenerKt;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.core.CameraControl;
import androidx.camera.core.impl.Config;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2CameraControlCompatImpl implements Camera2CameraControlCompat {
    private CompletableDeferred pendingSignal;
    private CompletableDeferred updateSignal;
    private final Object lock = new Object();
    private final Object updateSignalLock = new Object();
    private Camera2ImplConfig.Builder configBuilder = new Camera2ImplConfig.Builder();

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public /* synthetic */ void onAborted(Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onBufferLost-DlC0U5Y */
    public /* synthetic */ void mo1387onBufferLostDlC0U5Y(RequestMetadata requestMetadata, long j, int i) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onBufferLost-iiEMlm4 */
    public /* synthetic */ void mo1388onBufferLostiiEMlm4(RequestMetadata requestMetadata, long j, int i, int i2) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public /* synthetic */ void onCaptureProgress(RequestMetadata requestMetadata, int i) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onFailed-CcXjc1I */
    public /* synthetic */ void mo1390onFailedCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
        Request.Listener.CC.m1741$default$onFailedCcXjc1I(this, requestMetadata, j, requestFailure);
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onPartialCaptureResult-CcXjc1I */
    public /* synthetic */ void mo1391onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameMetadata frameMetadata) {
        Request.Listener.CC.m1742$default$onPartialCaptureResultCcXjc1I(this, requestMetadata, j, frameMetadata);
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onReadoutStarted-mP9r-9w */
    public /* synthetic */ void mo1392onReadoutStartedmP9r9w(RequestMetadata requestMetadata, long j, long j2) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public /* synthetic */ void onRequestSequenceAborted(RequestMetadata requestMetadata) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onRequestSequenceCompleted-RuT0dZU */
    public /* synthetic */ void mo1393onRequestSequenceCompletedRuT0dZU(RequestMetadata requestMetadata, long j) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public /* synthetic */ void onRequestSequenceCreated(RequestMetadata requestMetadata) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public /* synthetic */ void onRequestSequenceSubmitted(RequestMetadata requestMetadata) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onStarted-uGKBvU4 */
    public /* synthetic */ void mo1394onStarteduGKBvU4(RequestMetadata requestMetadata, long j, long j2) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
    public /* synthetic */ void mo1395onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
        Request.Listener.CC.m1746$default$onTotalCaptureResultCcXjc1I(this, requestMetadata, j, frameInfo);
    }

    @Override // androidx.camera.camera2.compat.Camera2CameraControlCompat
    public void addRequestOption(CaptureRequestOptions bundle) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        synchronized (this.lock) {
            try {
                for (Config.Option option : bundle.listOptions()) {
                    Intrinsics.checkNotNull(option, "null cannot be cast to non-null type androidx.camera.core.impl.Config.Option<kotlin.Any>");
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
            captureRequestOptionsBuild = CaptureRequestOptions.Builder.Companion.from(this.configBuilder.build()).build();
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
                CompletableDeferred completableDeferred = this.updateSignal;
                if (completableDeferred != null) {
                    this.updateSignal = null;
                    cancelSignal(completableDeferred, "The camera control has became inactive.");
                }
                CompletableDeferred completableDeferred2 = this.pendingSignal;
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
    public Deferred applyAsync(UseCaseCameraRequestControl useCaseCameraRequestControl, boolean z) {
        Camera2ImplConfig camera2ImplConfigBuild;
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        synchronized (this.lock) {
            camera2ImplConfigBuild = this.configBuilder.build();
        }
        synchronized (this.updateSignalLock) {
            try {
                if (useCaseCameraRequestControl != null) {
                    if (z) {
                        CompletableDeferred completableDeferred = this.updateSignal;
                        if (completableDeferred != null) {
                            cancelSignal$default(this, completableDeferred, null, 1, null);
                        }
                    } else {
                        CompletableDeferred completableDeferred2 = this.updateSignal;
                        if (completableDeferred2 != null) {
                            CoroutineAdaptersKt.propagateTo(completableDeferredCompletableDeferred$default, completableDeferred2);
                        }
                    }
                    this.updateSignal = completableDeferredCompletableDeferred$default;
                    useCaseCameraRequestControl.updateCamera2ConfigAsync(camera2ImplConfigBuild, MapsKt.mapOf(TuplesKt.m1081to("Camera2CameraControl.tag", Integer.valueOf(completableDeferredCompletableDeferred$default.hashCode()))));
                } else {
                    CompletableDeferred completableDeferred3 = this.pendingSignal;
                    if (completableDeferred3 != null) {
                        cancelSignal$default(this, completableDeferred3, null, 1, null);
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

    static /* synthetic */ CompletableDeferred cancelSignal$default(Camera2CameraControlCompatImpl camera2CameraControlCompatImpl, CompletableDeferred completableDeferred, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "Camera2CameraControl was updated with new options.";
        }
        return camera2CameraControlCompatImpl.cancelSignal(completableDeferred, str);
    }

    private final CompletableDeferred cancelSignal(CompletableDeferred completableDeferred, String str) {
        completableDeferred.completeExceptionally(new CameraControl.OperationCanceledException(str));
        return completableDeferred;
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onComplete-CcXjc1I */
    public void mo1389onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo result) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        Intrinsics.checkNotNullParameter(result, "result");
        synchronized (this.updateSignalLock) {
            try {
                CompletableDeferred completableDeferred = this.updateSignal;
                if (completableDeferred != null && ComboRequestListenerKt.containsTag(requestMetadata, "Camera2CameraControl.tag", Integer.valueOf(completableDeferred.hashCode()))) {
                    completableDeferred.complete(null);
                    this.updateSignal = null;
                    CompletableDeferred completableDeferred2 = this.pendingSignal;
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
