package androidx.camera.camera2.pipe.core;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes3.dex */
public abstract class MutexesKt {

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.MutexesKt$withLockLaunch$1 */
    static final class C02321 extends SuspendLambda implements Function2 {
        final /* synthetic */ Function2 $block;
        final /* synthetic */ CoroutineMutex $this_withLockLaunch;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02321(CoroutineMutex coroutineMutex, Function2 function2, Continuation continuation) {
            super(2, continuation);
            this.$this_withLockLaunch = coroutineMutex;
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C02321 c02321 = new C02321(this.$this_withLockLaunch, this.$block, continuation);
            c02321.L$0 = obj;
            return c02321;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C02321) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Mutex mutex$camera_camera2_pipe;
            Function2 function2;
            Mutex mutex;
            Throwable th;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    CoroutineScopeKt.ensureActive((CoroutineScope) this.L$0);
                    mutex$camera_camera2_pipe = this.$this_withLockLaunch.getMutex$camera_camera2_pipe();
                    function2 = this.$block;
                    this.L$0 = mutex$camera_camera2_pipe;
                    this.L$1 = function2;
                    this.label = 1;
                    if (MutexesKt.lockAndSuspend(mutex$camera_camera2_pipe, this) != coroutine_suspended) {
                    }
                    return coroutine_suspended;
                }
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    mutex = (Mutex) this.L$0;
                    try {
                        ResultKt.throwOnFailure(obj);
                        Unit unit = Unit.INSTANCE;
                        Mutex.DefaultImpls.unlock$default(mutex, null, 1, null);
                        return Unit.INSTANCE;
                    } catch (Throwable th2) {
                        th = th2;
                        Mutex.DefaultImpls.unlock$default(mutex, null, 1, null);
                        throw th;
                    }
                }
                function2 = (Function2) this.L$1;
                Mutex mutex2 = (Mutex) this.L$0;
                ResultKt.throwOnFailure(obj);
                mutex$camera_camera2_pipe = mutex2;
                this.L$0 = mutex$camera_camera2_pipe;
                this.L$1 = null;
                this.label = 2;
                if (CoroutineScopeKt.coroutineScope(function2, this) != coroutine_suspended) {
                    mutex = mutex$camera_camera2_pipe;
                    Unit unit2 = Unit.INSTANCE;
                    Mutex.DefaultImpls.unlock$default(mutex, null, 1, null);
                    return Unit.INSTANCE;
                }
                return coroutine_suspended;
            } catch (Throwable th3) {
                mutex = mutex$camera_camera2_pipe;
                th = th3;
                Mutex.DefaultImpls.unlock$default(mutex, null, 1, null);
                throw th;
            }
        }
    }

    public static final Job withLockLaunch(CoroutineMutex coroutineMutex, CoroutineScope scope, Function2 block) {
        Intrinsics.checkNotNullParameter(coroutineMutex, "<this>");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(block, "block");
        return BuildersKt__Builders_commonKt.launch$default(scope, null, CoroutineStart.UNDISPATCHED, new C02321(coroutineMutex, block, null), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object lockWithoutOwner(Mutex mutex, Continuation continuation) {
        Object objLock = mutex.lock(null, continuation);
        return objLock == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objLock : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object lockAndSuspend(Mutex mutex, Continuation continuation) {
        if (IntrinsicsKt.wrapWithContinuationImpl(MutexesKt$lockAndSuspend$lockFn$1.INSTANCE, mutex, continuation) != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            IntrinsicsKt.intercepted(continuation).resumeWith(Result.m3604constructorimpl(Unit.INSTANCE));
        }
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (coroutine_suspended == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return coroutine_suspended == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? coroutine_suspended : Unit.INSTANCE;
    }
}
