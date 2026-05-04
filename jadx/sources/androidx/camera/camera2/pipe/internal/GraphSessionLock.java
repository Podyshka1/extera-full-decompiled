package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.core.MutexToken;
import androidx.camera.camera2.pipe.core.Token;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes3.dex */
public final class GraphSessionLock {
    private final Mutex mutex = MutexKt.Mutex$default(false, 1, null);

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.internal.GraphSessionLock$use$1 */
    static final class C02451 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02451(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return GraphSessionLock.this.use(null, null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object acquireToken$camera_camera2_pipe(Continuation continuation) {
        GraphSessionLock$acquireToken$1 graphSessionLock$acquireToken$1;
        Mutex mutex;
        if (continuation instanceof GraphSessionLock$acquireToken$1) {
            graphSessionLock$acquireToken$1 = (GraphSessionLock$acquireToken$1) continuation;
            int i = graphSessionLock$acquireToken$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                graphSessionLock$acquireToken$1.label = i - Integer.MIN_VALUE;
            } else {
                graphSessionLock$acquireToken$1 = new GraphSessionLock$acquireToken$1(this, continuation);
            }
        }
        Object obj = graphSessionLock$acquireToken$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = graphSessionLock$acquireToken$1.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.mutex;
            graphSessionLock$acquireToken$1.L$0 = mutex2;
            graphSessionLock$acquireToken$1.label = 1;
            if (Mutex.DefaultImpls.lock$default(mutex2, null, graphSessionLock$acquireToken$1, 1, null) == coroutine_suspended) {
                return coroutine_suspended;
            }
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = (Mutex) graphSessionLock$acquireToken$1.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return new MutexToken(mutex);
    }

    public final Deferred withTokenInAsync$camera_camera2_pipe(CoroutineScope scope, Function2 action) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(action, "action");
        return asyncUndispatched(scope, new GraphSessionLock$withTokenInAsync$1(this, action, null));
    }

    private final Deferred asyncUndispatched(CoroutineScope coroutineScope, Function2 function2) {
        final CompletableJob completableJobJob = JobKt.Job((Job) coroutineScope.getCoroutineContext().get(Job.Key));
        Deferred deferredAsync = BuildersKt.async(coroutineScope, coroutineScope.getCoroutineContext().plus(completableJobJob), CoroutineStart.UNDISPATCHED, new GraphSessionLock$asyncUndispatched$result$1(function2, null));
        deferredAsync.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.pipe.internal.GraphSessionLock$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GraphSessionLock.asyncUndispatched$lambda$0(completableJobJob, (Throwable) obj);
            }
        });
        return deferredAsync;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit asyncUndispatched$lambda$0(CompletableJob completableJob, Throwable th) {
        completableJob.complete();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object use(Token token, Function2 function2, Continuation continuation) {
        C02451 c02451;
        if (continuation instanceof C02451) {
            c02451 = (C02451) continuation;
            int i = c02451.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c02451.label = i - Integer.MIN_VALUE;
            } else {
                c02451 = new C02451(continuation);
            }
        }
        Object objInvoke = c02451.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c02451.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objInvoke);
                c02451.L$0 = token;
                c02451.label = 1;
                objInvoke = function2.invoke(token, c02451);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                token = (Token) c02451.L$0;
                ResultKt.throwOnFailure(objInvoke);
            }
            return objInvoke;
        } finally {
            token.release();
        }
    }
}
