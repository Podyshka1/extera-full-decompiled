package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import android.util.Log;
import androidx.camera.camera2.adapter.EvCompValue$$ExternalSyntheticBackport0;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.compat.workaround.AutoFlashAEModeDisabler;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.impl.UseCaseManager;
import androidx.camera.core.CameraControl;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.SessionConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$LongRef;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public final class State3AControl implements UseCaseCameraControl, UseCaseManager.RunningUseCasesChangeListener {
    private int _flashMode;
    private Integer _preferredAeMode;
    private Integer _preferredFocusMode;
    private UseCaseCameraRequestControl _requestControl;
    private int _template;
    private boolean _tryExternalFlashAeMode;
    private final AutoFlashAEModeDisabler aeModeDisabler;
    private final CameraProperties cameraProperties;
    private long currentRevision;
    private final Object lock;
    private final List pendingSignals;
    private final UseCaseThreads threads;

    private final int getDefaultAfMode(int i) {
        return (i == 1 || i != 3) ? 4 : 3;
    }

    public State3AControl(CameraProperties cameraProperties, AutoFlashAEModeDisabler aeModeDisabler, UseCaseThreads threads) {
        Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
        Intrinsics.checkNotNullParameter(aeModeDisabler, "aeModeDisabler");
        Intrinsics.checkNotNullParameter(threads, "threads");
        this.cameraProperties = cameraProperties;
        this.aeModeDisabler = aeModeDisabler;
        this.threads = threads;
        this.lock = new Object();
        this.pendingSignals = new ArrayList();
        this._flashMode = 2;
        this._template = 1;
    }

    public UseCaseCameraRequestControl getRequestControl() {
        return this._requestControl;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
        update();
    }

    public final Deferred setFlashModeAsync(int i) {
        synchronized (this.lock) {
            this._flashMode = i;
            Unit unit = Unit.INSTANCE;
        }
        return update();
    }

    public final Deferred setTryExternalFlashAeModeAsync(boolean z) {
        synchronized (this.lock) {
            this._tryExternalFlashAeMode = z;
            Unit unit = Unit.INSTANCE;
        }
        return update();
    }

    public final Deferred setPreferredAeModeAsync(Integer num) {
        synchronized (this.lock) {
            this._preferredAeMode = num;
            Unit unit = Unit.INSTANCE;
        }
        return update();
    }

    public final Deferred setPreferredFocusModeAsync(Integer num) {
        synchronized (this.lock) {
            this._preferredFocusMode = num;
            Unit unit = Unit.INSTANCE;
        }
        return update();
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        synchronized (this.lock) {
            this._tryExternalFlashAeMode = false;
            this._preferredAeMode = null;
            this._preferredFocusMode = null;
            this._flashMode = 2;
            this._template = 1;
            Unit unit = Unit.INSTANCE;
        }
        update();
    }

    @Override // androidx.camera.camera2.impl.UseCaseManager.RunningUseCasesChangeListener
    public void onRunningUseCasesChanged(Set runningUseCases) {
        Intrinsics.checkNotNullParameter(runningUseCases, "runningUseCases");
        BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1(null, CollectionsKt.toSet(runningUseCases), this), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final int calculateTemplateFromUseCases(Set set) {
        CaptureConfig repeatingCaptureConfig;
        SessionConfig validSessionConfigOrNull = new SessionConfigAdapter(set, false, 2, 0 == true ? 1 : 0).getValidSessionConfigOrNull();
        if (validSessionConfigOrNull == null || (repeatingCaptureConfig = validSessionConfigOrNull.getRepeatingCaptureConfig()) == null) {
            return 1;
        }
        Integer numValueOf = Integer.valueOf(repeatingCaptureConfig.getTemplateType());
        Integer num = numValueOf.intValue() != -1 ? numValueOf : null;
        if (num != null) {
            return num.intValue();
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Deferred update() {
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        Ref$LongRef ref$LongRef = new Ref$LongRef();
        synchronized (this.lock) {
            this.pendingSignals.add(completableDeferredCompletableDeferred$default);
            long j = this.currentRevision + 1;
            this.currentRevision = j;
            ref$LongRef.element = j;
            Unit unit = Unit.INSTANCE;
        }
        BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new State3AControl$update$$inlined$confineLaunch$1(null, this, ref$LongRef), 3, null);
        return completableDeferredCompletableDeferred$default;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void applyUpdate(long j) {
        boolean z;
        StateSnapshot stateSnapshot;
        final List list;
        UseCaseCameraRequestControl requestControl = getRequestControl();
        if (requestControl == null) {
            failAllPendingSignals(new CameraControl.OperationCanceledException("Camera is not active."));
            return;
        }
        synchronized (this.lock) {
            z = j == this.currentRevision;
        }
        if (z) {
            synchronized (this.lock) {
                stateSnapshot = new StateSnapshot(this._flashMode, this._template, this._tryExternalFlashAeMode, this._preferredAeMode, this._preferredFocusMode);
            }
            int finalPreferredAeMode = getFinalPreferredAeMode(stateSnapshot.getFlashMode(), stateSnapshot.getTryExternalFlashAeMode(), stateSnapshot.getPreferredAeMode());
            Integer preferredFocusMode = stateSnapshot.getPreferredFocusMode();
            try {
                Deferred deferredSubmitParameters$default = UseCaseCameraRequestControl.CC.submitParameters$default(requestControl, MapsKt.mapOf(TuplesKt.m1081to(CaptureRequest.CONTROL_AE_MODE, Integer.valueOf(CameraMetadataIntegrationKt.getSupportedAeMode(this.cameraProperties.getMetadata(), finalPreferredAeMode))), TuplesKt.m1081to(CaptureRequest.CONTROL_AF_MODE, Integer.valueOf(CameraMetadataIntegrationKt.getSupportedAfMode(this.cameraProperties.getMetadata(), preferredFocusMode != null ? preferredFocusMode.intValue() : getDefaultAfMode(stateSnapshot.getTemplate())))), TuplesKt.m1081to(CaptureRequest.CONTROL_AWB_MODE, Integer.valueOf(CameraMetadataIntegrationKt.getSupportedAwbMode(this.cameraProperties.getMetadata(), 1)))), null, null, 6, null);
                synchronized (this.lock) {
                    list = CollectionsKt.toList(this.pendingSignals);
                }
                deferredSubmitParameters$default.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.impl.State3AControl$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return State3AControl.applyUpdate$lambda$3(list, this, (Throwable) obj);
                    }
                });
            } catch (Exception e) {
                failAllPendingSignals(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit applyUpdate$lambda$3(List list, State3AControl state3AControl, Throwable th) {
        if (th != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((CompletableDeferred) it.next()).completeExceptionally(th);
            }
        } else {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ((CompletableDeferred) it2.next()).complete(Unit.INSTANCE);
            }
        }
        synchronized (state3AControl.lock) {
            state3AControl.pendingSignals.removeAll(list);
        }
        return Unit.INSTANCE;
    }

    private final void failAllPendingSignals(Exception exc) {
        List list;
        synchronized (this.lock) {
            list = CollectionsKt.toList(this.pendingSignals);
            this.pendingSignals.clear();
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((CompletableDeferred) it.next()).completeExceptionally(exc);
        }
    }

    public final int getFinalSupportedAeMode() {
        int supportedAeMode;
        synchronized (this.lock) {
            supportedAeMode = CameraMetadataIntegrationKt.getSupportedAeMode(this.cameraProperties.getMetadata(), getFinalPreferredAeMode(this._flashMode, this._tryExternalFlashAeMode, this._preferredAeMode));
        }
        return supportedAeMode;
    }

    private final int getFinalPreferredAeMode(int i, boolean z, Integer num) {
        int iIntValue = num != null ? num.intValue() : i != 0 ? i != 1 ? 1 : 3 : this.aeModeDisabler.getCorrectedAeMode(2);
        if (z && CameraMetadataIntegrationKt.isExternalFlashAeModeSupported(this.cameraProperties.getMetadata())) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "State3AControl.invalidate: trying external flash AE mode.");
            }
            iIntValue = 5;
        }
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "State3AControl.getFinalPreferredAeMode: preferAeMode = " + iIntValue);
        }
        return iIntValue;
    }

    private static final class StateSnapshot {
        private final int flashMode;
        private final Integer preferredAeMode;
        private final Integer preferredFocusMode;
        private final int template;
        private final boolean tryExternalFlashAeMode;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StateSnapshot)) {
                return false;
            }
            StateSnapshot stateSnapshot = (StateSnapshot) obj;
            return this.flashMode == stateSnapshot.flashMode && this.template == stateSnapshot.template && this.tryExternalFlashAeMode == stateSnapshot.tryExternalFlashAeMode && Intrinsics.areEqual(this.preferredAeMode, stateSnapshot.preferredAeMode) && Intrinsics.areEqual(this.preferredFocusMode, stateSnapshot.preferredFocusMode);
        }

        public int hashCode() {
            int iM10m = ((((this.flashMode * 31) + this.template) * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.tryExternalFlashAeMode)) * 31;
            Integer num = this.preferredAeMode;
            int iHashCode = (iM10m + (num == null ? 0 : num.hashCode())) * 31;
            Integer num2 = this.preferredFocusMode;
            return iHashCode + (num2 != null ? num2.hashCode() : 0);
        }

        public String toString() {
            return "StateSnapshot(flashMode=" + this.flashMode + ", template=" + this.template + ", tryExternalFlashAeMode=" + this.tryExternalFlashAeMode + ", preferredAeMode=" + this.preferredAeMode + ", preferredFocusMode=" + this.preferredFocusMode + ')';
        }

        public StateSnapshot(int i, int i2, boolean z, Integer num, Integer num2) {
            this.flashMode = i;
            this.template = i2;
            this.tryExternalFlashAeMode = z;
            this.preferredAeMode = num;
            this.preferredFocusMode = num2;
        }

        public final int getFlashMode() {
            return this.flashMode;
        }

        public final int getTemplate() {
            return this.template;
        }

        public final boolean getTryExternalFlashAeMode() {
            return this.tryExternalFlashAeMode;
        }

        public final Integer getPreferredAeMode() {
            return this.preferredAeMode;
        }

        public final Integer getPreferredFocusMode() {
            return this.preferredFocusMode;
        }
    }
}
