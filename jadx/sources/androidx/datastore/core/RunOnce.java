package androidx.datastore.core;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class RunOnce {
    private final Mutex runMutex = MutexKt.Mutex$default(false, 1, null);
    private final CompletableDeferred didRun = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);

    /* JADX INFO: renamed from: androidx.datastore.core.RunOnce$runIfNeeded$1 */
    static final class C05281 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C05281(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RunOnce.this.runIfNeeded(this);
        }
    }

    protected abstract Object doRun(Continuation continuation);

    public final Object awaitComplete(Continuation continuation) {
        Object objAwait = this.didRun.await(continuation);
        return objAwait == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwait : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object runIfNeeded(Continuation continuation) throws Throwable {
        C05281 c05281;
        Mutex mutex;
        RunOnce runOnce;
        Mutex mutex2;
        Throwable th;
        RunOnce runOnce2;
        if (continuation instanceof C05281) {
            c05281 = (C05281) continuation;
            int i = c05281.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05281.label = i - Integer.MIN_VALUE;
            } else {
                c05281 = new C05281(continuation);
            }
        }
        Object obj = c05281.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c05281.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                if (this.didRun.isCompleted()) {
                    return Unit.INSTANCE;
                }
                mutex = this.runMutex;
                c05281.L$0 = this;
                c05281.L$1 = mutex;
                c05281.label = 1;
                if (mutex.lock(null, c05281) != coroutine_suspended) {
                    runOnce = this;
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = (Mutex) c05281.L$1;
                runOnce2 = (RunOnce) c05281.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    CompletableDeferred completableDeferred = runOnce2.didRun;
                    Unit unit = Unit.INSTANCE;
                    completableDeferred.complete(unit);
                    mutex2.unlock(null);
                    return unit;
                } catch (Throwable th2) {
                    th = th2;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            Mutex mutex3 = (Mutex) c05281.L$1;
            runOnce = (RunOnce) c05281.L$0;
            ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            if (!runOnce.didRun.isCompleted()) {
                c05281.L$0 = runOnce;
                c05281.L$1 = mutex;
                c05281.label = 2;
                if (runOnce.doRun(c05281) != coroutine_suspended) {
                    mutex2 = mutex;
                    runOnce2 = runOnce;
                    CompletableDeferred completableDeferred2 = runOnce2.didRun;
                    Unit unit2 = Unit.INSTANCE;
                    completableDeferred2.complete(unit2);
                    mutex2.unlock(null);
                    return unit2;
                }
                return coroutine_suspended;
            }
            Unit unit3 = Unit.INSTANCE;
            mutex.unlock(null);
            return unit3;
        } catch (Throwable th3) {
            mutex2 = mutex;
            th = th3;
            mutex2.unlock(null);
            throw th;
        }
    }
}
