package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureResult;
import android.os.Build;
import android.util.Log;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.core.CameraControl;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.Threads;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public final class LowLightBoostControl implements UseCaseCameraControl {
    private final MutableLiveData _lowLightBoostState;
    private UseCaseCameraRequestControl _requestControl;
    private CompletableDeferred _updateSignal;
    private final CameraMetadata cameraMetadata;
    private Deferred checkFrameRateJob;
    private final ComboRequestListener comboRequestListener;
    private boolean isLowLightBoostOn;
    private final boolean isLowLightBoostSupported;
    private final AtomicInteger lowLightBoostStateAtomic;
    private final State3AControl state3AControl;
    private final UseCaseThreads threads;

    public LowLightBoostControl(CameraMetadata cameraMetadata, State3AControl state3AControl, UseCaseThreads threads, ComboRequestListener comboRequestListener) {
        Intrinsics.checkNotNullParameter(state3AControl, "state3AControl");
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(comboRequestListener, "comboRequestListener");
        this.cameraMetadata = cameraMetadata;
        this.state3AControl = state3AControl;
        this.threads = threads;
        this.comboRequestListener = comboRequestListener;
        boolean z = false;
        if (cameraMetadata != null && CameraMetadata.Companion.getSupportsLowLightBoost(cameraMetadata)) {
            z = true;
        }
        this.isLowLightBoostSupported = z;
        this._lowLightBoostState = new MutableLiveData(-1);
        this.lowLightBoostStateAtomic = new AtomicInteger(-1);
        if (z) {
            comboRequestListener.addListener(new Request.Listener() { // from class: androidx.camera.camera2.impl.LowLightBoostControl.1
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
                /* JADX INFO: renamed from: onComplete-CcXjc1I */
                public /* synthetic */ void mo1389onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
                    Request.Listener.CC.m1740$default$onCompleteCcXjc1I(this, requestMetadata, j, frameInfo);
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
                public void mo1395onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo totalCaptureResult) {
                    Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
                    Intrinsics.checkNotNullParameter(totalCaptureResult, "totalCaptureResult");
                    if (Build.VERSION.SDK_INT < 35 || LowLightBoostControl.this._requestControl == null || !LowLightBoostControl.this.isLowLightBoostOn) {
                        return;
                    }
                    FrameMetadata metadata = totalCaptureResult.getMetadata();
                    CaptureResult.Key CONTROL_LOW_LIGHT_BOOST_STATE = CaptureResult.CONTROL_LOW_LIGHT_BOOST_STATE;
                    Intrinsics.checkNotNullExpressionValue(CONTROL_LOW_LIGHT_BOOST_STATE, "CONTROL_LOW_LIGHT_BOOST_STATE");
                    Integer num = (Integer) metadata.get(CONTROL_LOW_LIGHT_BOOST_STATE);
                    if (num != null) {
                        LowLightBoostControl lowLightBoostControl = LowLightBoostControl.this;
                        lowLightBoostControl.setLiveDataValue(lowLightBoostControl._lowLightBoostState, num.intValue() != 1 ? 0 : 1);
                    }
                }
            }, threads.getSequentialExecutor());
        }
    }

    public UseCaseCameraRequestControl getRequestControl() {
        return this._requestControl;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
        if (this.isLowLightBoostOn) {
            if (useCaseCameraRequestControl != null) {
                setLowLightBoostAsync(true, false);
            } else {
                setLiveDataValue(this._lowLightBoostState, 0);
            }
        }
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        stopRunningTaskInternal();
        setLowLightBoostAsync$default(this, false, false, 2, null);
    }

    public final LiveData getLowLightBoostStateLiveData() {
        return this._lowLightBoostState;
    }

    public final Deferred getCheckFrameRateJob$camera_camera2() {
        return this.checkFrameRateJob;
    }

    public final void onSessionConfigChanged(List useCases) {
        Intrinsics.checkNotNullParameter(useCases, "useCases");
        if (this.isLowLightBoostSupported) {
            if (useCases.isEmpty()) {
                this.checkFrameRateJob = CompletableDeferredKt.CompletableDeferred(Boolean.FALSE);
            } else {
                this.checkFrameRateJob = BuildersKt__Builders_commonKt.async$default(this.threads.getSequentialScope(), null, null, new C01661(useCases, null), 3, null);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.LowLightBoostControl$onSessionConfigChanged$1 */
    static final class C01661 extends SuspendLambda implements Function2 {
        final /* synthetic */ List $useCases;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C01661(List list, Continuation continuation) {
            super(2, continuation);
            this.$useCases = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return LowLightBoostControl.this.new C01661(this.$useCases, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01661) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(((Number) LowLightBoostControl.this.getSessionConfig(this.$useCases).getExpectedFrameRateRange().getUpper()).intValue() > 30);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SessionConfig getSessionConfig(Collection collection) {
        SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            validatingBuilder.add(((UseCase) it.next()).getSessionConfig());
        }
        SessionConfig sessionConfigBuild = validatingBuilder.build();
        Intrinsics.checkNotNullExpressionValue(sessionConfigBuild, "build(...)");
        return sessionConfigBuild;
    }

    public static /* synthetic */ Deferred setLowLightBoostAsync$default(LowLightBoostControl lowLightBoostControl, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = true;
        }
        return lowLightBoostControl.setLowLightBoostAsync(z, z2);
    }

    public final Deferred setLowLightBoostAsync(boolean z, boolean z2) {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "LowLightBoostControl#setLowLightBoostAsync: lowLightBoost = " + z);
        }
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        if (this.isLowLightBoostSupported) {
            BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new C0167x5a5aefee(null, this, completableDeferredCompletableDeferred$default, z, z2), 3, null);
            return completableDeferredCompletableDeferred$default;
        }
        return createFailureResult(completableDeferredCompletableDeferred$default, new IllegalStateException("Low Light Boost is not supported!"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void stopRunningTaskInternal() {
        CompletableDeferred completableDeferred = this._updateSignal;
        if (completableDeferred != null) {
            createFailureResult(completableDeferred, new CameraControl.OperationCanceledException("There is a new enableLowLightBoost being set"));
        }
        this._updateSignal = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CompletableDeferred createFailureResult(CompletableDeferred completableDeferred, Exception exc) {
        completableDeferred.completeExceptionally(exc);
        return completableDeferred;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setLiveDataValue(MutableLiveData mutableLiveData, int i) {
        if (this.lowLightBoostStateAtomic.getAndSet(i) != i) {
            if (Threads.isMainThread()) {
                mutableLiveData.setValue(Integer.valueOf(i));
            } else {
                mutableLiveData.postValue(Integer.valueOf(i));
            }
        }
    }
}
