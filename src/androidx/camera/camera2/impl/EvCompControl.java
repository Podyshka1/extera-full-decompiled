package androidx.camera.camera2.impl;

import androidx.camera.camera2.adapter.EvCompValue;
import androidx.camera.camera2.compat.EvCompCompat;
import androidx.camera.core.CameraControl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public final class EvCompControl implements UseCaseCameraControl {
    private UseCaseCameraRequestControl _requestControl;
    private final EvCompCompat compat;
    private int evCompIndex;
    private EvCompValue exposureState;

    public EvCompControl(EvCompCompat compat) {
        Intrinsics.checkNotNullParameter(compat, "compat");
        this.compat = compat;
        this.exposureState = new EvCompValue(compat.getSupported(), this.evCompIndex, compat.getRange(), compat.getStep());
    }

    private final void setEvCompIndex(int i) {
        this.evCompIndex = i;
        this.exposureState = this.exposureState.updateIndex$camera_camera2(i);
    }

    public UseCaseCameraRequestControl getRequestControl() {
        return this._requestControl;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
        updateAsync(this.evCompIndex, false);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        setEvCompIndex(0);
        updateAsync$default(this, 0, false, 2, null);
    }

    public static /* synthetic */ Deferred updateAsync$default(EvCompControl evCompControl, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        return evCompControl.updateAsync(i, z);
    }

    public final Deferred updateAsync(int i, boolean z) {
        if (!this.compat.getSupported()) {
            return createFailureResult(new IllegalArgumentException("ExposureCompensation is not supported"));
        }
        if (this.compat.getRange().contains(Integer.valueOf(i))) {
            UseCaseCameraRequestControl requestControl = getRequestControl();
            if (requestControl != null) {
                setEvCompIndex(i);
                Deferred deferredApplyAsync = this.compat.applyAsync(i, requestControl, z);
                if (deferredApplyAsync != null) {
                    return deferredApplyAsync;
                }
            }
            CameraControl.OperationCanceledException operationCanceledException = new CameraControl.OperationCanceledException("Camera is not active.");
            this.compat.stopRunningTask(operationCanceledException);
            return createFailureResult(operationCanceledException);
        }
        return createFailureResult(new IllegalArgumentException("Requested ExposureCompensation " + i + " is not within valid range [" + this.compat.getRange().getUpper() + " .. " + this.compat.getRange().getLower() + ']'));
    }

    private final CompletableDeferred createFailureResult(Exception exc) {
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        completableDeferredCompletableDeferred$default.completeExceptionally(exc);
        return completableDeferredCompletableDeferred$default;
    }
}
