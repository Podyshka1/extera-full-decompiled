package androidx.camera.camera2.impl;

import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.camera2.adapter.ZoomValue;
import androidx.camera.camera2.compat.ZoomCompat;
import androidx.camera.core.CameraControl;
import androidx.camera.core.ZoomState;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.google.common.util.concurrent.ListenableFuture;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes3.dex */
public final class ZoomControl implements UseCaseCameraControl {
    private UseCaseCameraRequestControl _requestControl;
    private final Lazy _zoomState$delegate;
    private final Lazy defaultZoomState$delegate;
    private boolean isInitialized;
    private final float maxZoomRatio;
    private final float minZoomRatio;
    private CompletableDeferred updateSignal;
    private final ZoomCompat zoomCompat;

    public ZoomControl(ZoomCompat zoomCompat) {
        Intrinsics.checkNotNullParameter(zoomCompat, "zoomCompat");
        this.zoomCompat = zoomCompat;
        this.minZoomRatio = zoomCompat.getMinZoomRatio();
        this.maxZoomRatio = zoomCompat.getMaxZoomRatio();
        this.defaultZoomState$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.impl.ZoomControl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ZoomControl.defaultZoomState_delegate$lambda$0(this.f$0);
            }
        });
        this._zoomState$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.impl.ZoomControl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ZoomControl._zoomState_delegate$lambda$0(this.f$0);
            }
        });
    }

    public final ZoomValue getDefaultZoomState() {
        return (ZoomValue) this.defaultZoomState$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ZoomValue defaultZoomState_delegate$lambda$0(ZoomControl zoomControl) {
        return new ZoomValue(1.0f, zoomControl.minZoomRatio, zoomControl.maxZoomRatio);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData _zoomState_delegate$lambda$0(ZoomControl zoomControl) {
        return new MutableLiveData(zoomControl.getDefaultZoomState());
    }

    private final MutableLiveData get_zoomState() {
        return (MutableLiveData) this._zoomState$delegate.getValue();
    }

    public final LiveData getZoomStateLiveData() {
        return get_zoomState();
    }

    public UseCaseCameraRequestControl getRequestControl() {
        return this._requestControl;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
        ZoomState defaultZoomState = (ZoomState) get_zoomState().getValue();
        if (defaultZoomState == null) {
            defaultZoomState = getDefaultZoomState();
        }
        applyZoomState(defaultZoomState, false, this.isInitialized || defaultZoomState.getZoomRatio() != 1.0f);
        this.isInitialized = true;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        applyZoomState$default(this, getDefaultZoomState(), false, false, 6, null);
    }

    private final void setZoomState(ZoomState zoomState) {
        if (Threads.isMainThread()) {
            get_zoomState().setValue(zoomState);
        } else {
            get_zoomState().postValue(zoomState);
        }
    }

    public final ListenableFuture setZoomRatio(float f) {
        float f2 = this.maxZoomRatio;
        if (f <= f2) {
            float f3 = this.minZoomRatio;
            if (f >= f3) {
                return applyZoomState$default(this, new ZoomValue(f, f3, f2), false, false, 6, null);
            }
        }
        ListenableFuture listenableFutureImmediateFailedFuture = Futures.immediateFailedFuture(new IllegalArgumentException("Requested zoomRatio " + f + " is not within valid range [" + this.minZoomRatio + ", " + this.maxZoomRatio + ']'));
        Intrinsics.checkNotNullExpressionValue(listenableFutureImmediateFailedFuture, "immediateFailedFuture(...)");
        return listenableFutureImmediateFailedFuture;
    }

    public static /* synthetic */ ListenableFuture applyZoomState$default(ZoomControl zoomControl, ZoomState zoomState, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        if ((i & 4) != 0) {
            z2 = true;
        }
        return zoomControl.applyZoomState(zoomState, z, z2);
    }

    public final ListenableFuture applyZoomState(ZoomState zoomState, boolean z, boolean z2) {
        Deferred deferredResetAsync;
        Intrinsics.checkNotNullParameter(zoomState, "zoomState");
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        CompletableDeferred completableDeferred = this.updateSignal;
        if (completableDeferred != null) {
            if (z) {
                completableDeferred.completeExceptionally(new CameraControl.OperationCanceledException("Cancelled due to another zoom value being set."));
            } else {
                CoroutineAdaptersKt.propagateTo(completableDeferredCompletableDeferred$default, completableDeferred);
            }
        }
        this.updateSignal = completableDeferredCompletableDeferred$default;
        setZoomState(zoomState);
        UseCaseCameraRequestControl requestControl = getRequestControl();
        if (requestControl != null) {
            float zoomRatio = zoomState.getZoomRatio();
            if (z2) {
                deferredResetAsync = this.zoomCompat.applyAsync(zoomRatio, requestControl);
            } else {
                deferredResetAsync = this.zoomCompat.resetAsync(requestControl);
            }
            CoroutineAdaptersKt.propagateTo(deferredResetAsync, completableDeferredCompletableDeferred$default);
        } else {
            completableDeferredCompletableDeferred$default.completeExceptionally(new CameraControl.OperationCanceledException("Camera is not active."));
        }
        Intrinsics.checkNotNull(completableDeferredCompletableDeferred$default, "null cannot be cast to non-null type kotlinx.coroutines.Job");
        ListenableFuture listenableFutureNonCancellationPropagating = Futures.nonCancellationPropagating(CoroutineAdaptersKt.asListenableFuture$default((Job) completableDeferredCompletableDeferred$default, (Object) null, 1, (Object) null));
        Intrinsics.checkNotNullExpressionValue(listenableFutureNonCancellationPropagating, "nonCancellationPropagating(...)");
        return listenableFutureNonCancellationPropagating;
    }
}
