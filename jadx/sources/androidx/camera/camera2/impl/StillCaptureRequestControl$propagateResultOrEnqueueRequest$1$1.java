package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.impl.StillCaptureRequestControl;
import androidx.camera.core.Logger;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes3.dex */
final class StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ UseCaseCameraRequestControl $currentRequestControl;
    final /* synthetic */ StillCaptureRequestControl.CaptureRequest $submittedRequest;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ StillCaptureRequestControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1(StillCaptureRequestControl stillCaptureRequestControl, UseCaseCameraRequestControl useCaseCameraRequestControl, StillCaptureRequestControl.CaptureRequest captureRequest, Continuation continuation) {
        super(2, continuation);
        this.this$0 = stillCaptureRequestControl;
        this.$currentRequestControl = useCaseCameraRequestControl;
        this.$submittedRequest = captureRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1(this.this$0, this.$currentRequestControl, this.$submittedRequest, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0077 A[PHI: r6
  0x0077: PHI (r6v1 kotlin.jvm.internal.Ref$BooleanRef) = 
  (r6v0 kotlin.jvm.internal.Ref$BooleanRef)
  (r6v0 kotlin.jvm.internal.Ref$BooleanRef)
  (r6v2 kotlin.jvm.internal.Ref$BooleanRef)
 binds: [B:11:0x004c, B:13:0x0058, B:18:0x006f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ae  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Ref$BooleanRef ref$BooleanRef;
        UseCaseCameraRequestControl useCaseCameraRequestControl;
        StillCaptureRequestControl stillCaptureRequestControl;
        StillCaptureRequestControl.CaptureRequest captureRequest;
        StillCaptureRequestControl stillCaptureRequestControl2;
        Mutex mutex;
        StillCaptureRequestControl.CaptureRequest captureRequest2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ref$BooleanRef = new Ref$BooleanRef();
            ref$BooleanRef.element = true;
            UseCaseCameraRequestControl requestControl = this.this$0.getRequestControl();
            if (requestControl != null) {
                UseCaseCameraRequestControl useCaseCameraRequestControl2 = this.$currentRequestControl;
                StillCaptureRequestControl stillCaptureRequestControl3 = this.this$0;
                StillCaptureRequestControl.CaptureRequest captureRequest3 = this.$submittedRequest;
                if (!Intrinsics.areEqual(useCaseCameraRequestControl2, requestControl)) {
                    this.L$0 = ref$BooleanRef;
                    this.L$1 = captureRequest3;
                    this.L$2 = requestControl;
                    this.L$3 = stillCaptureRequestControl3;
                    this.label = 1;
                    Object objSubmitRequest = stillCaptureRequestControl3.submitRequest(captureRequest3, requestControl, this);
                    if (objSubmitRequest != coroutine_suspended) {
                        useCaseCameraRequestControl = requestControl;
                        obj = objSubmitRequest;
                        stillCaptureRequestControl = stillCaptureRequestControl3;
                        captureRequest = captureRequest3;
                    }
                } else if (ref$BooleanRef.element) {
                    Mutex mutex2 = this.this$0.mutex;
                    stillCaptureRequestControl2 = this.this$0;
                    StillCaptureRequestControl.CaptureRequest captureRequest4 = this.$submittedRequest;
                    this.L$0 = mutex2;
                    this.L$1 = stillCaptureRequestControl2;
                    this.L$2 = captureRequest4;
                    this.L$3 = null;
                    this.label = 2;
                    if (mutex2.lock(null, this) != coroutine_suspended) {
                        mutex = mutex2;
                        captureRequest2 = captureRequest4;
                        stillCaptureRequestControl2.pendingRequests.add(captureRequest2);
                        mutex.unlock(null);
                        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                        StillCaptureRequestControl.CaptureRequest captureRequest5 = this.$submittedRequest;
                        if (Logger.isDebugEnabled("CXCP")) {
                        }
                    }
                }
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            captureRequest2 = (StillCaptureRequestControl.CaptureRequest) this.L$2;
            stillCaptureRequestControl2 = (StillCaptureRequestControl) this.L$1;
            mutex = (Mutex) this.L$0;
            ResultKt.throwOnFailure(obj);
            try {
                stillCaptureRequestControl2.pendingRequests.add(captureRequest2);
                mutex.unlock(null);
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                StillCaptureRequestControl.CaptureRequest captureRequest52 = this.$submittedRequest;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "StillCaptureRequestControl: failed to submit " + captureRequest52 + ", will be retried with a future UseCaseCamera");
                }
                return Unit.INSTANCE;
            } catch (Throwable th) {
                mutex.unlock(null);
                throw th;
            }
        }
        stillCaptureRequestControl = (StillCaptureRequestControl) this.L$3;
        useCaseCameraRequestControl = (UseCaseCameraRequestControl) this.L$2;
        captureRequest = (StillCaptureRequestControl.CaptureRequest) this.L$1;
        ref$BooleanRef = (Ref$BooleanRef) this.L$0;
        ResultKt.throwOnFailure(obj);
        stillCaptureRequestControl.propagateResultOrEnqueueRequest((Deferred) obj, captureRequest, useCaseCameraRequestControl);
        ref$BooleanRef.element = false;
        if (ref$BooleanRef.element) {
        }
        return Unit.INSTANCE;
    }
}
