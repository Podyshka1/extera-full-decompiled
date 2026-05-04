package androidx.camera.camera2.impl;

import android.os.Build;
import android.util.Log;
import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.camera2.compat.Api35Compat;
import androidx.camera.camera2.compat.workaround.FlashAvailabilityCheckerKt;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.core.CameraControl;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.utils.Threads;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import java.util.LinkedHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public final class TorchControl implements UseCaseCameraControl {
    private UseCaseCameraRequestControl _requestControl;
    private final MutableLiveData _torchState;
    private final MutableLiveData _torchStrength;
    private CompletableDeferred _updateTorchStateSignal;
    private CompletableDeferred _updateTorchStrengthSignal;
    private final int defaultTorchStrength;
    private final boolean hasFlashUnit;
    private final boolean isTorchStrengthSupported;
    private final int maxTorchStrength;
    private final State3AControl state3AControl;
    private final UseCaseThreads threads;
    private TorchMode torchMode;

    public TorchControl(CameraProperties cameraProperties, State3AControl state3AControl, UseCaseThreads threads) {
        Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
        Intrinsics.checkNotNullParameter(state3AControl, "state3AControl");
        Intrinsics.checkNotNullParameter(threads, "threads");
        this.state3AControl = state3AControl;
        this.threads = threads;
        this.hasFlashUnit = FlashAvailabilityCheckerKt.isFlashAvailable$default(cameraProperties, false, 1, null);
        this._torchState = new MutableLiveData(0);
        CameraMetadata.Companion companion = CameraMetadata.Companion;
        this.isTorchStrengthSupported = companion.getSupportsTorchStrength(cameraProperties.getMetadata());
        int defaultTorchStrengthLevel = companion.getDefaultTorchStrengthLevel(cameraProperties.getMetadata());
        this.defaultTorchStrength = defaultTorchStrengthLevel;
        this.maxTorchStrength = companion.getMaxTorchStrengthLevel(cameraProperties.getMetadata());
        this._torchStrength = new MutableLiveData(Integer.valueOf(defaultTorchStrengthLevel));
    }

    public UseCaseCameraRequestControl getRequestControl() {
        return this._requestControl;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001c  */
    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        boolean z;
        this._requestControl = useCaseCameraRequestControl;
        if (this.torchMode != null) {
            Integer num = (Integer) getTorchStateLiveData().getValue();
            if (num == null) {
                z = false;
            } else {
                z = true;
                if (num.intValue() != 1) {
                }
            }
            setTorchAsync$default(this, z, false, false, 4, null);
        }
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        stopRunningTaskInternal();
        if (this.torchMode != null) {
            m1453updateTorchStateRaJ5uN0(TorchMode.Companion.m1462getOFFIRs_R8());
            setTorchAsync$default(this, false, false, false, 6, null);
            this.torchMode = null;
        }
    }

    public final LiveData getTorchStateLiveData() {
        return this._torchState;
    }

    public final LiveData getTorchStrengthLiveData() {
        return this._torchStrength;
    }

    public static /* synthetic */ Deferred setTorchAsync$default(TorchControl torchControl, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = true;
        }
        if ((i & 4) != 0) {
            z3 = false;
        }
        return torchControl.setTorchAsync(z, z2, z3);
    }

    public final Deferred setTorchAsync(boolean z, boolean z2, boolean z3) {
        return m1454setTorchAsyncOup_wC0$camera_camera2(z ? TorchMode.Companion.m1463getONIRs_R8() : TorchMode.Companion.m1462getOFFIRs_R8(), z2, z3);
    }

    /* JADX INFO: renamed from: setTorchAsync-Oup_wC0$camera_camera2$default, reason: not valid java name */
    public static /* synthetic */ Deferred m1452setTorchAsyncOup_wC0$camera_camera2$default(TorchControl torchControl, int i, boolean z, boolean z2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        if ((i2 & 4) != 0) {
            z2 = false;
        }
        return torchControl.m1454setTorchAsyncOup_wC0$camera_camera2(i, z, z2);
    }

    /* JADX INFO: renamed from: setTorchAsync-Oup_wC0$camera_camera2, reason: not valid java name */
    public final Deferred m1454setTorchAsyncOup_wC0$camera_camera2(int i, boolean z, boolean z2) {
        int iM1494getONbOjpiJc;
        Deferred deferredMo1444setTorchOffAsyncMtizInI;
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "TorchControl#setTorchAsync: torch mode = " + ((Object) TorchMode.m1460toStringimpl(i)));
        }
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        if (!z2 && !this.hasFlashUnit) {
            return createFailureResult(completableDeferredCompletableDeferred$default, new IllegalStateException("No flash unit"));
        }
        UseCaseCameraRequestControl requestControl = getRequestControl();
        if (requestControl != null) {
            m1453updateTorchStateRaJ5uN0(i);
            if (z) {
                stopTorchStateTask();
            } else {
                CompletableDeferred completableDeferred = this._updateTorchStateSignal;
                if (completableDeferred != null) {
                    CoroutineAdaptersKt.propagateTo(completableDeferredCompletableDeferred$default, completableDeferred);
                }
            }
            this._updateTorchStateSignal = completableDeferredCompletableDeferred$default;
            this.state3AControl.setPreferredAeModeAsync(m1451isFlashUnitOnRaJ5uN0(i) ? 1 : null);
            AeMode.Companion companion = AeMode.Companion;
            AeMode aeModeM1492fromIntOrNullkQd0u18 = companion.m1492fromIntOrNullkQd0u18(this.state3AControl.getFinalSupportedAeMode());
            if (aeModeM1492fromIntOrNullkQd0u18 != null) {
                iM1494getONbOjpiJc = aeModeM1492fromIntOrNullkQd0u18.m1491unboximpl();
            } else {
                if (Logger.isWarnEnabled("CXCP")) {
                    Log.w(Camera2Logger.TRUNCATED_TAG, "TorchControl#setTorchAsync: Failed to convert ae mode of value " + this.state3AControl.getFinalSupportedAeMode() + " with AeMode.fromIntOrNull, fallback to AeMode.ON");
                }
                iM1494getONbOjpiJc = companion.m1494getONbOjpiJc();
            }
            if (m1451isFlashUnitOnRaJ5uN0(i)) {
                if (TorchMode.m1458equalsimpl0(i, TorchMode.Companion.m1463getONIRs_R8())) {
                    Integer num = (Integer) getTorchStrengthLiveData().getValue();
                    if (num != null) {
                        updateTorchStrengthLevelAsync(num.intValue());
                    }
                } else {
                    updateTorchStrengthLevelAsync(this.defaultTorchStrength);
                }
                deferredMo1444setTorchOffAsyncMtizInI = requestControl.setTorchOnAsync();
            } else {
                deferredMo1444setTorchOffAsyncMtizInI = requestControl.mo1444setTorchOffAsyncMtizInI(iM1494getONbOjpiJc);
            }
            CoroutineAdaptersKt.propagateTo(deferredMo1444setTorchOffAsyncMtizInI, completableDeferredCompletableDeferred$default, new Function1() { // from class: androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return TorchControl.setTorchAsync_Oup_wC0$lambda$1$3((Result3A) obj);
                }
            });
            return completableDeferredCompletableDeferred$default;
        }
        createFailureResult(completableDeferredCompletableDeferred$default, new CameraControl.OperationCanceledException("Camera is not active."));
        return completableDeferredCompletableDeferred$default;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setTorchAsync_Oup_wC0$lambda$1$3(Result3A it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    private final Deferred updateTorchStrengthLevelAsync(int i) {
        Deferred parametersAsync$default;
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        if (Build.VERSION.SDK_INT >= 35 && this.isTorchStrengthSupported) {
            if (this._updateTorchStrengthSignal != null) {
                stopTorchStrengthTask();
            }
            this._updateTorchStrengthSignal = completableDeferredCompletableDeferred$default;
            completableDeferredCompletableDeferred$default.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return TorchControl.updateTorchStrengthLevelAsync$lambda$0(this.f$0, (Throwable) obj);
                }
            });
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Api35Compat.setFlashStrengthLevel(linkedHashMap, i);
            UseCaseCameraRequestControl requestControl = getRequestControl();
            if (requestControl == null || (parametersAsync$default = UseCaseCameraRequestControl.CC.setParametersAsync$default(requestControl, linkedHashMap, null, null, 6, null)) == null) {
                createFailureResult(completableDeferredCompletableDeferred$default, new CameraControl.OperationCanceledException("Camera is not active."));
                return completableDeferredCompletableDeferred$default;
            }
            CoroutineAdaptersKt.propagateTo(parametersAsync$default, completableDeferredCompletableDeferred$default);
            Unit unit = Unit.INSTANCE;
            return completableDeferredCompletableDeferred$default;
        }
        createFailureResult(completableDeferredCompletableDeferred$default, new UnsupportedOperationException("Configuring torch strength is not supported on the device."));
        return completableDeferredCompletableDeferred$default;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit updateTorchStrengthLevelAsync$lambda$0(TorchControl torchControl, Throwable th) {
        torchControl._updateTorchStrengthSignal = null;
        return Unit.INSTANCE;
    }

    private final void stopRunningTaskInternal() {
        stopTorchStateTask();
        stopTorchStrengthTask();
    }

    private final void stopTorchStateTask() {
        CompletableDeferred completableDeferred = this._updateTorchStateSignal;
        if (completableDeferred != null) {
            createFailureResult(completableDeferred, new CameraControl.OperationCanceledException("There is a new enableTorch being set"));
        }
        this._updateTorchStateSignal = null;
    }

    private final void stopTorchStrengthTask() {
        CompletableDeferred completableDeferred = this._updateTorchStrengthSignal;
        if (completableDeferred != null) {
            createFailureResult(completableDeferred, new CameraControl.OperationCanceledException("There is a new torch strength being set"));
        }
        this._updateTorchStrengthSignal = null;
    }

    private final CompletableDeferred createFailureResult(CompletableDeferred completableDeferred, Exception exc) {
        completableDeferred.completeExceptionally(exc);
        return completableDeferred;
    }

    /* JADX INFO: renamed from: updateTorchState-RaJ5uN0, reason: not valid java name */
    private final void m1453updateTorchStateRaJ5uN0(int i) {
        this.torchMode = TorchMode.m1455boximpl(i);
        setLiveDataValue(this._torchState, TorchMode.m1458equalsimpl0(i, TorchMode.Companion.m1463getONIRs_R8()) ? 1 : 0);
    }

    private final void setLiveDataValue(MutableLiveData mutableLiveData, int i) {
        if (Threads.isMainThread()) {
            mutableLiveData.setValue(Integer.valueOf(i));
        } else {
            mutableLiveData.postValue(Integer.valueOf(i));
        }
    }

    /* JADX INFO: renamed from: isFlashUnitOn-RaJ5uN0, reason: not valid java name */
    private final boolean m1451isFlashUnitOnRaJ5uN0(int i) {
        return !TorchMode.m1458equalsimpl0(i, TorchMode.Companion.m1462getOFFIRs_R8());
    }

    public static final class TorchMode {
        public static final Companion Companion = new Companion(null);
        private static final int OFF = m1456constructorimpl(0);

        /* JADX INFO: renamed from: ON */
        private static final int f6ON = m1456constructorimpl(1);
        private static final int USED_AS_FLASH = m1456constructorimpl(2);
        private final int value;

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ TorchMode m1455boximpl(int i) {
            return new TorchMode(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        private static int m1456constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m1457equalsimpl(int i, Object obj) {
            return (obj instanceof TorchMode) && i == ((TorchMode) obj).m1461unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m1458equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m1459hashCodeimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m1460toStringimpl(int i) {
            return "TorchMode(value=" + i + ')';
        }

        public boolean equals(Object obj) {
            return m1457equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m1459hashCodeimpl(this.value);
        }

        public String toString() {
            return m1460toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m1461unboximpl() {
            return this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* JADX INFO: renamed from: getOFF-IRs_-R8, reason: not valid java name */
            public final int m1462getOFFIRs_R8() {
                return TorchMode.OFF;
            }

            /* JADX INFO: renamed from: getON-IRs_-R8, reason: not valid java name */
            public final int m1463getONIRs_R8() {
                return TorchMode.f6ON;
            }

            /* JADX INFO: renamed from: getUSED_AS_FLASH-IRs_-R8, reason: not valid java name */
            public final int m1464getUSED_AS_FLASHIRs_R8() {
                return TorchMode.USED_AS_FLASH;
            }
        }

        private /* synthetic */ TorchMode(int i) {
            this.value = i;
        }
    }
}
