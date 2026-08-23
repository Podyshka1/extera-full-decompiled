package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CaptureConfig;
import com.android.dx.io.Opcodes;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001:\u0001(B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ.\u0010\u0012\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0082@¢\u0006\u0004\b\u0012\u0010\u0013J1\u0010\u0016\u001a\u00020\b*\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000f2\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0018\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0019R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u001aR\u0014\u0010\u001c\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00020\u000b0 8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R(\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010#\u001a\u0004\u0018\u00010\r8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006)"}, d2 = {"Landroidx/camera/camera2/impl/StillCaptureRequestControl;", "Landroidx/camera/camera2/impl/UseCaseCameraControl;", "Landroidx/camera/camera2/impl/FlashControl;", "flashControl", "Landroidx/camera/camera2/impl/UseCaseThreads;", "threads", "<init>", "(Landroidx/camera/camera2/impl/FlashControl;Landroidx/camera/camera2/impl/UseCaseThreads;)V", _UrlKt.FRAGMENT_ENCODE_SET, "trySubmitPendingRequests", "()V", "Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;", "request", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "requestControl", "Lkotlinx/coroutines/Deferred;", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/lang/Void;", "submitRequest", "(Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "submittedRequest", "currentRequestControl", "propagateResultOrEnqueueRequest", "(Lkotlinx/coroutines/Deferred;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V", "reset", "Landroidx/camera/camera2/impl/FlashControl;", "Landroidx/camera/camera2/impl/UseCaseThreads;", "Lkotlinx/coroutines/sync/Mutex;", "mutex", "Lkotlinx/coroutines/sync/Mutex;", "_requestControl", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "Ljava/util/LinkedList;", "pendingRequests", "Ljava/util/LinkedList;", "value", "getRequestControl", "()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "setRequestControl", "(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V", "CaptureRequest", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nStillCaptureRequestControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StillCaptureRequestControl.kt\nandroidx/camera/camera2/impl/StillCaptureRequestControl\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,216:1\n85#2,4:217\n85#2,4:221\n*S KotlinDebug\n*F\n+ 1 StillCaptureRequestControl.kt\nandroidx/camera/camera2/impl/StillCaptureRequestControl\n*L\n140#1:217,4\n145#1:221,4\n*E\n"})
public final class StillCaptureRequestControl implements UseCaseCameraControl {
    private UseCaseCameraRequestControl _requestControl;
    private final FlashControl flashControl;
    private final Mutex mutex = MutexKt.Mutex$default(false, 1, null);
    private final LinkedList<CaptureRequest> pendingRequests = new LinkedList<>();
    private final UseCaseThreads threads;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001R\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\r\u0010\n\u001a\u0004\b\u000e\u0010\fR%\u0010\u0011\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/CaptureConfig;", "captureConfigs", "Ljava/util/List;", "getCaptureConfigs", "()Ljava/util/List;", _UrlKt.FRAGMENT_ENCODE_SET, "captureMode", "I", "getCaptureMode", "()I", "flashType", "getFlashType", "Lkotlinx/coroutines/CompletableDeferred;", "Ljava/lang/Void;", "result", "Lkotlinx/coroutines/CompletableDeferred;", "getResult", "()Lkotlinx/coroutines/CompletableDeferred;", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class CaptureRequest {
        public abstract List<CaptureConfig> getCaptureConfigs();

        public abstract int getCaptureMode();

        public abstract int getFlashType();

        public abstract CompletableDeferred<List<Void>> getResult();
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.StillCaptureRequestControl$submitRequest$1 */
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.impl.StillCaptureRequestControl", m766f = "StillCaptureRequestControl.kt", m767i = {0, 0}, m768l = {144}, m769m = "submitRequest", m770n = {"request", "requestControl"}, m771s = {"L$0", "L$1"}, m772v = 1)
    public static final class C01741 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C01741(Continuation<? super C01741> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return StillCaptureRequestControl.this.submitRequest(null, null, this);
        }
    }

    public StillCaptureRequestControl(FlashControl flashControl, UseCaseThreads useCaseThreads) {
        this.flashControl = flashControl;
        this.threads = useCaseThreads;
    }

    /* JADX INFO: renamed from: getRequestControl, reason: from getter */
    public UseCaseCameraRequestControl get_requestControl() {
        return this._requestControl;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
        trySubmitPendingRequests();
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.StillCaptureRequestControl$reset$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.impl.StillCaptureRequestControl$reset$1", m766f = "StillCaptureRequestControl.kt", m767i = {0}, m768l = {Opcodes.OR_INT_LIT8}, m769m = "invokeSuspend", m770n = {"$this$withLock_u24default$iv"}, m771s = {"L$0"}, m772v = 1)
    @SourceDebugExtension({"SMAP\nStillCaptureRequestControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StillCaptureRequestControl.kt\nandroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,216:1\n116#2,11:217\n*S KotlinDebug\n*F\n+ 1 StillCaptureRequestControl.kt\nandroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1\n*L\n72#1:217,11\n*E\n"})
    public static final class C01731 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        Object L$1;
        int label;

        public C01731(Continuation<? super C01731> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return StillCaptureRequestControl.this.new C01731(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C01731) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Mutex mutex;
            StillCaptureRequestControl stillCaptureRequestControl;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Mutex mutex2 = StillCaptureRequestControl.this.mutex;
                StillCaptureRequestControl stillCaptureRequestControl2 = StillCaptureRequestControl.this;
                this.L$0 = mutex2;
                this.L$1 = stillCaptureRequestControl2;
                this.label = 1;
                if (mutex2.lock(null, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                mutex = mutex2;
                stillCaptureRequestControl = stillCaptureRequestControl2;
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
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
        BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new C01731(null), 3, null);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.StillCaptureRequestControl$trySubmitPendingRequests$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.impl.StillCaptureRequestControl$trySubmitPendingRequests$1", m766f = "StillCaptureRequestControl.kt", m767i = {0, 1, 1, 2, 2, 2, 2}, m768l = {118, Opcodes.OR_INT_LIT8, 123}, m769m = "invokeSuspend", m770n = {"requestControl", "requestControl", "$this$withLock_u24default$iv", "requestControl", "$this$withLock_u24default$iv", "request", "requestControl"}, m771s = {"L$0", "L$0", "L$1", "L$0", "L$1", "L$3", "L$4"}, m772v = 1)
    @SourceDebugExtension({"SMAP\nStillCaptureRequestControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StillCaptureRequestControl.kt\nandroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,216:1\n116#2,11:217\n*S KotlinDebug\n*F\n+ 1 StillCaptureRequestControl.kt\nandroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1\n*L\n119#1:217,11\n*E\n"})
    public static final class C01761 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;

        public C01761(Continuation<? super C01761> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return StillCaptureRequestControl.this.new C01761(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C01761) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x0099 A[Catch: all -> 0x0033, LOOP:0: B:30:0x008f->B:32:0x0099, LOOP_END, TryCatch #0 {all -> 0x0033, blocks: (B:9:0x002a, B:30:0x008f, B:32:0x0099, B:33:0x00a4), top: B:39:0x002a }] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            UseCaseCameraRequestControl useCaseCameraRequestControl;
            StillCaptureRequestControl stillCaptureRequestControl;
            Mutex mutex;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                useCaseCameraRequestControl = StillCaptureRequestControl.this.get_requestControl();
                if (useCaseCameraRequestControl == null) {
                    return Unit.INSTANCE;
                }
                this.L$0 = useCaseCameraRequestControl;
                this.label = 1;
                obj = useCaseCameraRequestControl.awaitSurfaceSetup(this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i == 2) {
                    StillCaptureRequestControl stillCaptureRequestControl2 = (StillCaptureRequestControl) this.L$2;
                    Mutex mutex2 = (Mutex) this.L$1;
                    ResultKt.throwOnFailure(obj);
                    stillCaptureRequestControl = stillCaptureRequestControl2;
                    mutex = mutex2;
                } else if (i == 3) {
                    StillCaptureRequestControl stillCaptureRequestControl3 = (StillCaptureRequestControl) this.L$5;
                    UseCaseCameraRequestControl useCaseCameraRequestControl2 = (UseCaseCameraRequestControl) this.L$4;
                    CaptureRequest captureRequest = (CaptureRequest) this.L$3;
                    stillCaptureRequestControl = (StillCaptureRequestControl) this.L$2;
                    mutex = (Mutex) this.L$1;
                    try {
                        ResultKt.throwOnFailure(obj);
                        stillCaptureRequestControl3.propagateResultOrEnqueueRequest((Deferred) obj, captureRequest, useCaseCameraRequestControl2);
                    } finally {
                        mutex.unlock(null);
                    }
                } else {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                while (!stillCaptureRequestControl.pendingRequests.isEmpty()) {
                }
                Unit unit = Unit.INSTANCE;
                return Unit.INSTANCE;
            }
            useCaseCameraRequestControl = (UseCaseCameraRequestControl) this.L$0;
            ResultKt.throwOnFailure(obj);
            if (((Boolean) obj).booleanValue()) {
                Mutex mutex3 = StillCaptureRequestControl.this.mutex;
                stillCaptureRequestControl = StillCaptureRequestControl.this;
                this.L$0 = useCaseCameraRequestControl;
                this.L$1 = mutex3;
                this.L$2 = stillCaptureRequestControl;
                this.label = 2;
                if (mutex3.lock(null, this) != coroutine_suspended) {
                    mutex = mutex3;
                    while (!stillCaptureRequestControl.pendingRequests.isEmpty()) {
                    }
                    Unit unit2 = Unit.INSTANCE;
                }
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    private final void trySubmitPendingRequests() {
        BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new C01761(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object submitRequest(CaptureRequest captureRequest, UseCaseCameraRequestControl useCaseCameraRequestControl, Continuation<? super Deferred<? extends List<Void>>> continuation) {
        C01741 c01741;
        if (continuation instanceof C01741) {
            c01741 = (C01741) continuation;
            int i = c01741.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01741.label = i - Integer.MIN_VALUE;
            } else {
                c01741 = new C01741(continuation);
            }
        }
        Object objAwaitFlashModeUpdate = c01741.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c01741.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objAwaitFlashModeUpdate);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "StillCaptureRequestControl: submitting " + captureRequest + " at " + useCaseCameraRequestControl);
            }
            FlashControl flashControl = this.flashControl;
            c01741.L$0 = captureRequest;
            c01741.L$1 = useCaseCameraRequestControl;
            c01741.label = 1;
            objAwaitFlashModeUpdate = flashControl.awaitFlashModeUpdate(c01741);
            if (objAwaitFlashModeUpdate == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            useCaseCameraRequestControl = (UseCaseCameraRequestControl) c01741.L$1;
            captureRequest = (CaptureRequest) c01741.L$0;
            ResultKt.throwOnFailure(objAwaitFlashModeUpdate);
        }
        int iIntValue = ((Number) objAwaitFlashModeUpdate).intValue();
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "StillCaptureRequestControl: Issuing single capture");
        }
        return BuildersKt__Builders_commonKt.async$default(this.threads.getSequentialScope(), null, null, new C01754(useCaseCameraRequestControl.issueSingleCaptureAsync(captureRequest.getCaptureConfigs(), captureRequest.getCaptureMode(), captureRequest.getFlashType(), iIntValue), captureRequest, null), 3, null);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.StillCaptureRequestControl$submitRequest$4 */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/lang/Void;", "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.impl.StillCaptureRequestControl$submitRequest$4", m766f = "StillCaptureRequestControl.kt", m767i = {}, m768l = {160}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    @SourceDebugExtension({"SMAP\nStillCaptureRequestControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StillCaptureRequestControl.kt\nandroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,216:1\n85#2,4:217\n85#2,4:221\n*S KotlinDebug\n*F\n+ 1 StillCaptureRequestControl.kt\nandroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4\n*L\n157#1:217,4\n161#1:221,4\n*E\n"})
    public static final class C01754 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends Void>>, Object> {
        final /* synthetic */ List<Deferred<Void>> $deferredList;
        final /* synthetic */ CaptureRequest $request;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C01754(List<? extends Deferred<Void>> list, CaptureRequest captureRequest, Continuation<? super C01754> continuation) {
            super(2, continuation);
            this.$deferredList = list;
            this.$request = captureRequest;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C01754(this.$deferredList, this.$request, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super List<? extends Void>> continuation) {
            return invoke2(coroutineScope, (Continuation<? super List<Void>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super List<Void>> continuation) {
            return ((C01754) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                List<Deferred<Void>> list = this.$deferredList;
                this.label = 1;
                obj = AwaitKt.awaitAll(list, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
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
    public final void propagateResultOrEnqueueRequest(final Deferred<? extends List<Void>> deferred, final CaptureRequest captureRequest, final UseCaseCameraRequestControl useCaseCameraRequestControl) {
        deferred.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.impl.StillCaptureRequestControl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StillCaptureRequestControl.$r8$lambda$d94nr3kKLaWRlrxlGv5M4rvfiJA(this.f$0, deferred, captureRequest, useCaseCameraRequestControl, (Throwable) obj);
            }
        });
    }

    public static Unit $r8$lambda$d94nr3kKLaWRlrxlGv5M4rvfiJA(StillCaptureRequestControl stillCaptureRequestControl, Deferred deferred, CaptureRequest captureRequest, UseCaseCameraRequestControl useCaseCameraRequestControl, Throwable th) {
        if ((th instanceof ImageCaptureException) && ((ImageCaptureException) th).getImageCaptureError() == 3) {
            BuildersKt__Builders_commonKt.launch$default(stillCaptureRequestControl.threads.getSequentialScope(), null, null, new StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1(stillCaptureRequestControl, useCaseCameraRequestControl, captureRequest, null), 3, null);
        } else {
            CoroutineAdaptersKt.propagateCompletion(deferred, captureRequest.getResult(), th);
        }
        return Unit.INSTANCE;
    }
}
