package androidx.camera.camera2.impl;

import android.os.Build;
import android.util.Log;
import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.camera2.compat.Api35Compat;
import androidx.camera.camera2.compat.workaround.FlashAvailabilityCheckerKt;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.core.CameraControl;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.utils.Threads;
import androidx.view.LiveData;
import androidx.view.MutableLiveData;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001:\u0001TB!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0013\u0010\u0011J+\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\r0\u0014*\b\u0012\u0004\u0012\u00020\r0\u00142\n\u0010\u0017\u001a\u00060\u0015j\u0002`\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010!\u001a\u00020\r*\b\u0012\u0004\u0012\u00020\n0\u001f2\u0006\u0010 \u001a\u00020\nH\u0002¢\u0006\u0004\b!\u0010\"J\u0017\u0010'\u001a\u00020$2\u0006\u0010#\u001a\u00020\u001aH\u0002¢\u0006\u0004\b%\u0010&J\u000f\u0010(\u001a\u00020\rH\u0016¢\u0006\u0004\b(\u0010\u0011J/\u0010,\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010)\u001a\u00020$2\b\b\u0002\u0010*\u001a\u00020$2\b\b\u0002\u0010+\u001a\u00020$¢\u0006\u0004\b,\u0010-J1\u0010,\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u001b\u001a\u00020\u001a2\b\b\u0002\u0010*\u001a\u00020$2\b\b\u0002\u0010+\u001a\u00020$H\u0000¢\u0006\u0004\b.\u0010/R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u00100R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u00101R\u0018\u00103\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0014\u00105\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R*\u00107\u001a\u0004\u0018\u00010\u001a8\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\b7\u00108\u0012\u0004\b=\u0010\u0011\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\"\u0010?\u001a\u0010\u0012\f\u0012\n >*\u0004\u0018\u00010\n0\n0\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010@R\u0014\u0010A\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u00106R\u0014\u0010B\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010CR\u0014\u0010D\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010CR\"\u0010E\u001a\u0010\u0012\f\u0012\n >*\u0004\u0018\u00010\n0\n0\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010@R\u001e\u0010F\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u001e\u0010H\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010GR(\u0010M\u001a\u0004\u0018\u0001022\b\u0010 \u001a\u0004\u0018\u0001028V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\u0017\u0010Q\u001a\b\u0012\u0004\u0012\u00020\n0N8F¢\u0006\u0006\u001a\u0004\bO\u0010PR\u0017\u0010S\u001a\b\u0012\u0004\u0012\u00020\n0N8F¢\u0006\u0006\u001a\u0004\bR\u0010P¨\u0006U"}, d2 = {"Landroidx/camera/camera2/impl/TorchControl;", "Landroidx/camera/camera2/impl/UseCaseCameraControl;", "Landroidx/camera/camera2/impl/CameraProperties;", "cameraProperties", "Landroidx/camera/camera2/impl/State3AControl;", "state3AControl", "Landroidx/camera/camera2/impl/UseCaseThreads;", "threads", "<init>", "(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;)V", _UrlKt.FRAGMENT_ENCODE_SET, "level", "Lkotlinx/coroutines/Deferred;", _UrlKt.FRAGMENT_ENCODE_SET, "updateTorchStrengthLevelAsync", "(I)Lkotlinx/coroutines/Deferred;", "stopRunningTaskInternal", "()V", "stopTorchStateTask", "stopTorchStrengthTask", "Lkotlinx/coroutines/CompletableDeferred;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "exception", "createFailureResult", "(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Exception;)Lkotlinx/coroutines/CompletableDeferred;", "Landroidx/camera/camera2/impl/TorchControl$TorchMode;", "mode", "updateTorchState-RaJ5uN0", "(I)V", "updateTorchState", "Landroidx/lifecycle/MutableLiveData;", "value", "setLiveDataValue", "(Landroidx/lifecycle/MutableLiveData;I)V", "torchState", _UrlKt.FRAGMENT_ENCODE_SET, "isFlashUnitOn-RaJ5uN0", "(I)Z", "isFlashUnitOn", "reset", "torch", "cancelPreviousTask", "ignoreFlashUnitAvailability", "setTorchAsync", "(ZZZ)Lkotlinx/coroutines/Deferred;", "setTorchAsync-Oup_wC0$camera_camera2", "(IZZ)Lkotlinx/coroutines/Deferred;", "Landroidx/camera/camera2/impl/State3AControl;", "Landroidx/camera/camera2/impl/UseCaseThreads;", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "_requestControl", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "hasFlashUnit", "Z", "torchMode", "Landroidx/camera/camera2/impl/TorchControl$TorchMode;", "getTorchMode-MnUA4hI$camera_camera2", "()Landroidx/camera/camera2/impl/TorchControl$TorchMode;", "setTorchMode-UuNXre8$camera_camera2", "(Landroidx/camera/camera2/impl/TorchControl$TorchMode;)V", "getTorchMode-MnUA4hI$camera_camera2$annotations", "kotlin.jvm.PlatformType", "_torchState", "Landroidx/lifecycle/MutableLiveData;", "isTorchStrengthSupported", "defaultTorchStrength", "I", "maxTorchStrength", "_torchStrength", "_updateTorchStateSignal", "Lkotlinx/coroutines/CompletableDeferred;", "_updateTorchStrengthSignal", "getRequestControl", "()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "setRequestControl", "(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V", "requestControl", "Landroidx/lifecycle/LiveData;", "getTorchStateLiveData", "()Landroidx/lifecycle/LiveData;", "torchStateLiveData", "getTorchStrengthLiveData", "torchStrengthLiveData", "TorchMode", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTorchControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TorchControl.kt\nandroidx/camera/camera2/impl/TorchControl\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,316:1\n85#2,4:317\n119#2,4:321\n1#3:325\n*S KotlinDebug\n*F\n+ 1 TorchControl.kt\nandroidx/camera/camera2/impl/TorchControl\n*L\n123#1:317,4\n154#1:321,4\n*E\n"})
public final class TorchControl implements UseCaseCameraControl {
    private UseCaseCameraRequestControl _requestControl;
    private final MutableLiveData<Integer> _torchState = new MutableLiveData<>(0);
    private final MutableLiveData<Integer> _torchStrength;
    private CompletableDeferred<Unit> _updateTorchStateSignal;
    private CompletableDeferred<Unit> _updateTorchStrengthSignal;
    private final int defaultTorchStrength;
    private final boolean hasFlashUnit;
    private final boolean isTorchStrengthSupported;
    private final int maxTorchStrength;
    private final State3AControl state3AControl;
    private final UseCaseThreads threads;
    private TorchMode torchMode;

    public TorchControl(CameraProperties cameraProperties, State3AControl state3AControl, UseCaseThreads useCaseThreads) {
        this.state3AControl = state3AControl;
        this.threads = useCaseThreads;
        this.hasFlashUnit = FlashAvailabilityCheckerKt.isFlashAvailable$default(cameraProperties, false, 1, null);
        CameraMetadata.Companion companion = CameraMetadata.INSTANCE;
        this.isTorchStrengthSupported = companion.getSupportsTorchStrength(cameraProperties.getMetadata());
        int defaultTorchStrengthLevel = companion.getDefaultTorchStrengthLevel(cameraProperties.getMetadata());
        this.defaultTorchStrength = defaultTorchStrengthLevel;
        this.maxTorchStrength = companion.getMaxTorchStrengthLevel(cameraProperties.getMetadata());
        this._torchStrength = new MutableLiveData<>(Integer.valueOf(defaultTorchStrengthLevel));
    }

    /* JADX INFO: renamed from: getRequestControl, reason: from getter */
    public UseCaseCameraRequestControl get_requestControl() {
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
            Integer value = getTorchStateLiveData().getValue();
            if (value == null) {
                z = false;
            } else {
                z = true;
                if (value.intValue() != 1) {
                }
            }
            setTorchAsync$default(this, z, false, false, 4, null);
        }
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        stopRunningTaskInternal();
        if (this.torchMode != null) {
            m1149updateTorchStateRaJ5uN0(TorchMode.INSTANCE.m1158getOFFIRs_R8());
            setTorchAsync$default(this, false, false, false, 6, null);
            this.torchMode = null;
        }
    }

    public final LiveData<Integer> getTorchStateLiveData() {
        return this._torchState;
    }

    public final LiveData<Integer> getTorchStrengthLiveData() {
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

    public final Deferred<Unit> setTorchAsync(boolean torch, boolean cancelPreviousTask, boolean ignoreFlashUnitAvailability) {
        return m1150setTorchAsyncOup_wC0$camera_camera2(torch ? TorchMode.INSTANCE.m1159getONIRs_R8() : TorchMode.INSTANCE.m1158getOFFIRs_R8(), cancelPreviousTask, ignoreFlashUnitAvailability);
    }

    /* JADX INFO: renamed from: setTorchAsync-Oup_wC0$camera_camera2$default, reason: not valid java name */
    public static /* synthetic */ Deferred m1148setTorchAsyncOup_wC0$camera_camera2$default(TorchControl torchControl, int i, boolean z, boolean z2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        if ((i2 & 4) != 0) {
            z2 = false;
        }
        return torchControl.m1150setTorchAsyncOup_wC0$camera_camera2(i, z, z2);
    }

    /* JADX INFO: renamed from: setTorchAsync-Oup_wC0$camera_camera2, reason: not valid java name */
    public final Deferred<Unit> m1150setTorchAsyncOup_wC0$camera_camera2(int mode, boolean cancelPreviousTask, boolean ignoreFlashUnitAvailability) {
        int iM1190getONbOjpiJc;
        Deferred<Result3A> deferredMo1140setTorchOffAsyncMtizInI;
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "TorchControl#setTorchAsync: torch mode = " + ((Object) TorchMode.m1156toStringimpl(mode)));
        }
        CompletableDeferred<Unit> completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        if (!ignoreFlashUnitAvailability && !this.hasFlashUnit) {
            return createFailureResult(completableDeferredCompletableDeferred$default, new IllegalStateException("No flash unit"));
        }
        UseCaseCameraRequestControl useCaseCameraRequestControl = get_requestControl();
        if (useCaseCameraRequestControl != null) {
            m1149updateTorchStateRaJ5uN0(mode);
            if (cancelPreviousTask) {
                stopTorchStateTask();
            } else {
                CompletableDeferred<Unit> completableDeferred = this._updateTorchStateSignal;
                if (completableDeferred != null) {
                    CoroutineAdaptersKt.propagateTo(completableDeferredCompletableDeferred$default, completableDeferred);
                }
            }
            this._updateTorchStateSignal = completableDeferredCompletableDeferred$default;
            this.state3AControl.setPreferredAeModeAsync(m1147isFlashUnitOnRaJ5uN0(mode) ? 1 : null);
            AeMode.Companion companion = AeMode.INSTANCE;
            AeMode aeModeM1188fromIntOrNullkQd0u18 = companion.m1188fromIntOrNullkQd0u18(this.state3AControl.getFinalSupportedAeMode());
            if (aeModeM1188fromIntOrNullkQd0u18 != null) {
                iM1190getONbOjpiJc = aeModeM1188fromIntOrNullkQd0u18.getValue();
            } else {
                if (Logger.isWarnEnabled("CXCP")) {
                    Log.w(Camera2Logger.TRUNCATED_TAG, "TorchControl#setTorchAsync: Failed to convert ae mode of value " + this.state3AControl.getFinalSupportedAeMode() + " with AeMode.fromIntOrNull, fallback to AeMode.ON");
                }
                iM1190getONbOjpiJc = companion.m1190getONbOjpiJc();
            }
            if (m1147isFlashUnitOnRaJ5uN0(mode)) {
                if (TorchMode.m1154equalsimpl0(mode, TorchMode.INSTANCE.m1159getONIRs_R8())) {
                    Integer value = getTorchStrengthLiveData().getValue();
                    if (value != null) {
                        updateTorchStrengthLevelAsync(value.intValue());
                    }
                } else {
                    updateTorchStrengthLevelAsync(this.defaultTorchStrength);
                }
                deferredMo1140setTorchOffAsyncMtizInI = useCaseCameraRequestControl.setTorchOnAsync();
            } else {
                deferredMo1140setTorchOffAsyncMtizInI = useCaseCameraRequestControl.mo1140setTorchOffAsyncMtizInI(iM1190getONbOjpiJc);
            }
            CoroutineAdaptersKt.propagateTo(deferredMo1140setTorchOffAsyncMtizInI, completableDeferredCompletableDeferred$default, new Function1() { // from class: androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda0
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
    public static final Unit setTorchAsync_Oup_wC0$lambda$1$3(Result3A result3A) {
        return Unit.INSTANCE;
    }

    private final Deferred<Unit> updateTorchStrengthLevelAsync(int level) {
        Deferred parametersAsync$default;
        CompletableDeferred<Unit> completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        if (Build.VERSION.SDK_INT >= 35 && this.isTorchStrengthSupported) {
            if (this._updateTorchStrengthSignal != null) {
                stopTorchStrengthTask();
            }
            this._updateTorchStrengthSignal = completableDeferredCompletableDeferred$default;
            completableDeferredCompletableDeferred$default.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return TorchControl.$r8$lambda$WpwW2OEsOoPvgaaFVKL9Qn3v_s4(this.f$0, (Throwable) obj);
                }
            });
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Api35Compat.setFlashStrengthLevel(linkedHashMap, level);
            UseCaseCameraRequestControl useCaseCameraRequestControl = get_requestControl();
            if (useCaseCameraRequestControl == null || (parametersAsync$default = UseCaseCameraRequestControl.setParametersAsync$default(useCaseCameraRequestControl, linkedHashMap, null, null, 6, null)) == null) {
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

    public static Unit $r8$lambda$WpwW2OEsOoPvgaaFVKL9Qn3v_s4(TorchControl torchControl, Throwable th) {
        torchControl._updateTorchStrengthSignal = null;
        return Unit.INSTANCE;
    }

    private final void stopRunningTaskInternal() {
        stopTorchStateTask();
        stopTorchStrengthTask();
    }

    private final void stopTorchStateTask() {
        CompletableDeferred<Unit> completableDeferred = this._updateTorchStateSignal;
        if (completableDeferred != null) {
            createFailureResult(completableDeferred, new CameraControl.OperationCanceledException("There is a new enableTorch being set"));
        }
        this._updateTorchStateSignal = null;
    }

    private final void stopTorchStrengthTask() {
        CompletableDeferred<Unit> completableDeferred = this._updateTorchStrengthSignal;
        if (completableDeferred != null) {
            createFailureResult(completableDeferred, new CameraControl.OperationCanceledException("There is a new torch strength being set"));
        }
        this._updateTorchStrengthSignal = null;
    }

    private final CompletableDeferred<Unit> createFailureResult(CompletableDeferred<Unit> completableDeferred, Exception exc) {
        completableDeferred.completeExceptionally(exc);
        return completableDeferred;
    }

    /* JADX INFO: renamed from: updateTorchState-RaJ5uN0, reason: not valid java name */
    private final void m1149updateTorchStateRaJ5uN0(int mode) {
        this.torchMode = TorchMode.m1151boximpl(mode);
        setLiveDataValue(this._torchState, TorchMode.m1154equalsimpl0(mode, TorchMode.INSTANCE.m1159getONIRs_R8()) ? 1 : 0);
    }

    private final void setLiveDataValue(MutableLiveData<Integer> mutableLiveData, int i) {
        if (Threads.isMainThread()) {
            mutableLiveData.setValue(Integer.valueOf(i));
        } else {
            mutableLiveData.postValue(Integer.valueOf(i));
        }
    }

    /* JADX INFO: renamed from: isFlashUnitOn-RaJ5uN0, reason: not valid java name */
    private final boolean m1147isFlashUnitOnRaJ5uN0(int torchState) {
        return !TorchMode.m1154equalsimpl0(torchState, TorchMode.INSTANCE.m1158getOFFIRs_R8());
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\b\b\u0081@\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u000b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u0005J\u001a\u0010\u0010\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\u0088\u0001\u0003\u0092\u0001\u00020\u0002¨\u0006\u0015"}, d2 = {"Landroidx/camera/camera2/impl/TorchControl$TorchMode;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "value", "constructor-impl", "(I)I", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(I)Ljava/lang/String;", "toString", "hashCode-impl", "hashCode", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals-impl", "(ILjava/lang/Object;)Z", "equals", "I", "getValue", "()I", "Companion", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    @JvmInline
    public static final class TorchMode {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final int OFF = m1152constructorimpl(0);
        private static final int ON = m1152constructorimpl(1);
        private static final int USED_AS_FLASH = m1152constructorimpl(2);
        private final int value;

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ TorchMode m1151boximpl(int i) {
            return new TorchMode(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        private static int m1152constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m1153equalsimpl(int i, Object obj) {
            return (obj instanceof TorchMode) && i == ((TorchMode) obj).getValue();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m1154equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m1155hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m1156toStringimpl(int i) {
            return "TorchMode(value=" + i + ')';
        }

        public boolean equals(Object obj) {
            return m1153equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m1155hashCodeimpl(this.value);
        }

        public String toString() {
            return m1156toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
        public final /* synthetic */ int getValue() {
            return this.value;
        }

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0013\u0010\u0004\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\t\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\n\u0010\u0007R\u0013\u0010\u000b\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\f\u0010\u0007¨\u0006\r"}, d2 = {"Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "OFF", "Landroidx/camera/camera2/impl/TorchControl$TorchMode;", "getOFF-IRs_-R8", "()I", "I", "ON", "getON-IRs_-R8", "USED_AS_FLASH", "getUSED_AS_FLASH-IRs_-R8", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* JADX INFO: renamed from: getOFF-IRs_-R8, reason: not valid java name */
            public final int m1158getOFFIRs_R8() {
                return TorchMode.OFF;
            }

            /* JADX INFO: renamed from: getON-IRs_-R8, reason: not valid java name */
            public final int m1159getONIRs_R8() {
                return TorchMode.ON;
            }

            /* JADX INFO: renamed from: getUSED_AS_FLASH-IRs_-R8, reason: not valid java name */
            public final int m1160getUSED_AS_FLASHIRs_R8() {
                return TorchMode.USED_AS_FLASH;
            }
        }

        private /* synthetic */ TorchMode(int i) {
            this.value = i;
        }
    }
}
