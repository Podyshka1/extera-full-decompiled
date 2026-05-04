package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.Logger;
import java.util.LinkedList;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes3.dex */
public final class StillCaptureRequestControl implements UseCaseCameraControl {
    private UseCaseCameraRequestControl _requestControl;
    private final FlashControl flashControl;
    private final Mutex mutex;
    private final LinkedList pendingRequests;
    private final UseCaseThreads threads;

    public static final class CaptureRequest {
        public abstract List getCaptureConfigs();

        public abstract int getCaptureMode();

        public abstract int getFlashType();

        public abstract CompletableDeferred getResult();
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.StillCaptureRequestControl$submitRequest$1 */
    static final class C01691 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C01691(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return StillCaptureRequestControl.this.submitRequest(null, null, this);
        }
    }

    public StillCaptureRequestControl(FlashControl flashControl, UseCaseThreads threads) {
        Intrinsics.checkNotNullParameter(flashControl, "flashControl");
        Intrinsics.checkNotNullParameter(threads, "threads");
        this.flashControl = flashControl;
        this.threads = threads;
        this.mutex = MutexKt.Mutex$default(false, 1, null);
        this.pendingRequests = new LinkedList();
    }

    public UseCaseCameraRequestControl getRequestControl() {
        return this._requestControl;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
        trySubmitPendingRequests();
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.StillCaptureRequestControl$reset$1 */
    static final class C01681 extends SuspendLambda implements Function2 {
        Object L$0;
        Object L$1;
        int label;

        C01681(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return StillCaptureRequestControl.this.new C01681(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01681) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Mutex mutex;
            StillCaptureRequestControl stillCaptureRequestControl;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                mutex = StillCaptureRequestControl.this.mutex;
                StillCaptureRequestControl stillCaptureRequestControl2 = StillCaptureRequestControl.this;
                this.L$0 = mutex;
                this.L$1 = stillCaptureRequestControl2;
                this.label = 1;
                if (mutex.lock(null, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                stillCaptureRequestControl = stillCaptureRequestControl2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                stillCaptureRequestControl = (StillCaptureRequestControl) this.L$1;
                mutex = (Mutex) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            while (!stillCaptureRequestControl.pendingRequests.isEmpty()) {
                try {
                } catch (Throwable th) {
                    mutex.unlock(null);
                    throw th;
                }
            }
            Unit unit = Unit.INSTANCE;
            mutex.unlock(null);
            return Unit.INSTANCE;
        }
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new C01681(null), 3, null);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.StillCaptureRequestControl$trySubmitPendingRequests$1 */
    static final class C01711 extends SuspendLambda implements Function2 {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;

        C01711(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return StillCaptureRequestControl.this.new C01711(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01711) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x009c A[Catch: all -> 0x0033, LOOP:0: B:30:0x0092->B:32:0x009c, LOOP_END, TryCatch #0 {all -> 0x0033, blocks: (B:8:0x002a, B:30:0x0092, B:32:0x009c, B:33:0x00a7), top: B:39:0x002a }] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            UseCaseCameraRequestControl requestControl;
            Mutex mutex;
            StillCaptureRequestControl stillCaptureRequestControl;
            Mutex mutex2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                requestControl = StillCaptureRequestControl.this.getRequestControl();
                if (requestControl == null) {
                    return Unit.INSTANCE;
                }
                this.L$0 = requestControl;
                this.label = 1;
                obj = requestControl.awaitSurfaceSetup(this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i == 2) {
                    StillCaptureRequestControl stillCaptureRequestControl2 = (StillCaptureRequestControl) this.L$2;
                    mutex = (Mutex) this.L$1;
                    ResultKt.throwOnFailure(obj);
                    stillCaptureRequestControl = stillCaptureRequestControl2;
                    mutex2 = mutex;
                    while (!stillCaptureRequestControl.pendingRequests.isEmpty()) {
                    }
                    Unit unit = Unit.INSTANCE;
                    return Unit.INSTANCE;
                }
                if (i == 3) {
                    StillCaptureRequestControl stillCaptureRequestControl3 = (StillCaptureRequestControl) this.L$5;
                    UseCaseCameraRequestControl useCaseCameraRequestControl = (UseCaseCameraRequestControl) this.L$4;
                    CaptureRequest captureRequest = (CaptureRequest) this.L$3;
                    stillCaptureRequestControl = (StillCaptureRequestControl) this.L$2;
                    mutex2 = (Mutex) this.L$1;
                    try {
                        ResultKt.throwOnFailure(obj);
                        stillCaptureRequestControl3.propagateResultOrEnqueueRequest((Deferred) obj, captureRequest, useCaseCameraRequestControl);
                        while (!stillCaptureRequestControl.pendingRequests.isEmpty()) {
                        }
                        Unit unit2 = Unit.INSTANCE;
                        return Unit.INSTANCE;
                    } finally {
                        mutex2.unlock(null);
                    }
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            requestControl = (UseCaseCameraRequestControl) this.L$0;
            ResultKt.throwOnFailure(obj);
            if (((Boolean) obj).booleanValue()) {
                Mutex mutex3 = StillCaptureRequestControl.this.mutex;
                StillCaptureRequestControl stillCaptureRequestControl4 = StillCaptureRequestControl.this;
                this.L$0 = requestControl;
                this.L$1 = mutex3;
                this.L$2 = stillCaptureRequestControl4;
                this.label = 2;
                if (mutex3.lock(null, this) != coroutine_suspended) {
                    mutex = mutex3;
                    stillCaptureRequestControl = stillCaptureRequestControl4;
                    mutex2 = mutex;
                    while (!stillCaptureRequestControl.pendingRequests.isEmpty()) {
                    }
                    Unit unit22 = Unit.INSTANCE;
                }
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    private final void trySubmitPendingRequests() {
        BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new C01711(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object submitRequest(CaptureRequest captureRequest, UseCaseCameraRequestControl useCaseCameraRequestControl, Continuation continuation) {
        C01691 c01691;
        if (continuation instanceof C01691) {
            c01691 = (C01691) continuation;
            int i = c01691.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01691.label = i - Integer.MIN_VALUE;
            } else {
                c01691 = new C01691(continuation);
            }
        }
        Object objAwaitFlashModeUpdate = c01691.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c01691.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objAwaitFlashModeUpdate);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "StillCaptureRequestControl: submitting " + captureRequest + " at " + useCaseCameraRequestControl);
            }
            FlashControl flashControl = this.flashControl;
            c01691.L$0 = captureRequest;
            c01691.L$1 = useCaseCameraRequestControl;
            c01691.label = 1;
            objAwaitFlashModeUpdate = flashControl.awaitFlashModeUpdate(c01691);
            if (objAwaitFlashModeUpdate == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            useCaseCameraRequestControl = (UseCaseCameraRequestControl) c01691.L$1;
            captureRequest = (CaptureRequest) c01691.L$0;
            ResultKt.throwOnFailure(objAwaitFlashModeUpdate);
        }
        int iIntValue = ((Number) objAwaitFlashModeUpdate).intValue();
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "StillCaptureRequestControl: Issuing single capture");
        }
        return BuildersKt__Builders_commonKt.async$default(this.threads.getSequentialScope(), null, null, new C01704(useCaseCameraRequestControl.issueSingleCaptureAsync(captureRequest.getCaptureConfigs(), captureRequest.getCaptureMode(), captureRequest.getFlashType(), iIntValue), captureRequest, null), 3, null);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.StillCaptureRequestControl$submitRequest$4 */
    static final class C01704 extends SuspendLambda implements Function2 {
        final /* synthetic */ List $deferredList;
        final /* synthetic */ CaptureRequest $request;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C01704(List list, CaptureRequest captureRequest, Continuation continuation) {
            super(2, continuation);
            this.$deferredList = list;
            this.$request = captureRequest;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C01704(this.$deferredList, this.$request, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01704) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                CaptureRequest captureRequest = this.$request;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "StillCaptureRequestControl: Waiting for deferred list from " + captureRequest);
                }
                List list = this.$deferredList;
                this.label = 1;
                obj = AwaitKt.awaitAll(list, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            CaptureRequest captureRequest2 = this.$request;
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "StillCaptureRequestControl: Waiting for deferred list from " + captureRequest2 + " done");
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void propagateResultOrEnqueueRequest(final Deferred deferred, final CaptureRequest captureRequest, final UseCaseCameraRequestControl useCaseCameraRequestControl) {
        deferred.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.impl.StillCaptureRequestControl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StillCaptureRequestControl.propagateResultOrEnqueueRequest$lambda$0(this.f$0, deferred, captureRequest, useCaseCameraRequestControl, (Throwable) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit propagateResultOrEnqueueRequest$lambda$0(StillCaptureRequestControl stillCaptureRequestControl, Deferred deferred, CaptureRequest captureRequest, UseCaseCameraRequestControl useCaseCameraRequestControl, Throwable th) {
        if ((th instanceof ImageCaptureException) && ((ImageCaptureException) th).getImageCaptureError() == 3) {
            BuildersKt__Builders_commonKt.launch$default(stillCaptureRequestControl.threads.getSequentialScope(), null, null, new StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1(stillCaptureRequestControl, useCaseCameraRequestControl, captureRequest, null), 3, null);
        } else {
            CoroutineAdaptersKt.propagateCompletion(deferred, captureRequest.getResult(), th);
        }
        return Unit.INSTANCE;
    }
}
