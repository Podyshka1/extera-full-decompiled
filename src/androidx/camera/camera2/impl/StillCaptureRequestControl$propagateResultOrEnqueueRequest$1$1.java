package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.impl.StillCaptureRequestControl;
import androidx.camera.core.Logger;
import com.android.dx.io.Opcodes;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.sync.Mutex;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m920c = "androidx.camera.camera2.impl.StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1", m921f = "StillCaptureRequestControl.kt", m922i = {0, 0, 1}, m923l = {183, Opcodes.OR_INT_LIT8}, m924m = "invokeSuspend", m925n = {"isPending", "latestRequestControl", "$this$withLock_u24default$iv"}, m926s = {"L$0", "L$2", "L$0"}, m927v = 1)
@SourceDebugExtension({"SMAP\nStillCaptureRequestControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StillCaptureRequestControl.kt\nandroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,216:1\n116#2,11:217\n85#3,4:228\n*S KotlinDebug\n*F\n+ 1 StillCaptureRequestControl.kt\nandroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1\n*L\n194#1:217,11\n195#1:228,4\n*E\n"})
public final class StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ UseCaseCameraRequestControl $currentRequestControl;
    final /* synthetic */ StillCaptureRequestControl.CaptureRequest $submittedRequest;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ StillCaptureRequestControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1(StillCaptureRequestControl stillCaptureRequestControl, UseCaseCameraRequestControl useCaseCameraRequestControl, StillCaptureRequestControl.CaptureRequest captureRequest, Continuation<? super StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1> continuation) {
        super(2, continuation);
        this.this$0 = stillCaptureRequestControl;
        this.$currentRequestControl = useCaseCameraRequestControl;
        this.$submittedRequest = captureRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1(this.this$0, this.$currentRequestControl, this.$submittedRequest, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0075 A[PHI: r6
  0x0075: PHI (r6v1 kotlin.jvm.internal.Ref$BooleanRef) = 
  (r6v0 kotlin.jvm.internal.Ref$BooleanRef)
  (r6v0 kotlin.jvm.internal.Ref$BooleanRef)
  (r6v2 kotlin.jvm.internal.Ref$BooleanRef)
 binds: [B:11:0x004a, B:13:0x0056, B:18:0x006d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ac  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Ref.BooleanRef booleanRef;
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
            booleanRef = new Ref.BooleanRef();
            booleanRef.element = true;
            UseCaseCameraRequestControl useCaseCameraRequestControl2 = this.this$0.get_requestControl();
            if (useCaseCameraRequestControl2 != null) {
                UseCaseCameraRequestControl useCaseCameraRequestControl3 = this.$currentRequestControl;
                StillCaptureRequestControl stillCaptureRequestControl3 = this.this$0;
                StillCaptureRequestControl.CaptureRequest captureRequest3 = this.$submittedRequest;
                if (!Intrinsics.areEqual(useCaseCameraRequestControl3, useCaseCameraRequestControl2)) {
                    this.L$0 = booleanRef;
                    this.L$1 = captureRequest3;
                    this.L$2 = useCaseCameraRequestControl2;
                    this.L$3 = stillCaptureRequestControl3;
                    this.label = 1;
                    Object objSubmitRequest = stillCaptureRequestControl3.submitRequest(captureRequest3, useCaseCameraRequestControl2, this);
                    if (objSubmitRequest != coroutine_suspended) {
                        useCaseCameraRequestControl = useCaseCameraRequestControl2;
                        obj = objSubmitRequest;
                        stillCaptureRequestControl = stillCaptureRequestControl3;
                        captureRequest = captureRequest3;
                    }
                } else if (booleanRef.element) {
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
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
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
        booleanRef = (Ref.BooleanRef) this.L$0;
        ResultKt.throwOnFailure(obj);
        stillCaptureRequestControl.propagateResultOrEnqueueRequest((Deferred) obj, captureRequest, useCaseCameraRequestControl);
        booleanRef.element = false;
        if (booleanRef.element) {
        }
        return Unit.INSTANCE;
    }
}
