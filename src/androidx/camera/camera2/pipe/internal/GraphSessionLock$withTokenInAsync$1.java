package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.core.MutexToken;
import androidx.camera.camera2.pipe.core.MutexesKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes3.dex */
final class GraphSessionLock$withTokenInAsync$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Function2 $action;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ GraphSessionLock this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GraphSessionLock$withTokenInAsync$1(GraphSessionLock graphSessionLock, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.this$0 = graphSessionLock;
        this.$action = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        GraphSessionLock$withTokenInAsync$1 graphSessionLock$withTokenInAsync$1 = new GraphSessionLock$withTokenInAsync$1(this.this$0, this.$action, continuation);
        graphSessionLock$withTokenInAsync$1.L$0 = obj;
        return graphSessionLock$withTokenInAsync$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((GraphSessionLock$withTokenInAsync$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0082 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        CoroutineScope coroutineScope;
        GraphSessionLock graphSessionLock;
        Mutex mutex;
        CoroutineScope coroutineScope2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            coroutineScope = (CoroutineScope) this.L$0;
            graphSessionLock = this.this$0;
            Mutex mutex2 = graphSessionLock.mutex;
            this.L$0 = coroutineScope;
            this.L$1 = mutex2;
            this.L$2 = graphSessionLock;
            this.label = 1;
            if (MutexesKt.lockAndSuspend(mutex2, this) != coroutine_suspended) {
                mutex = mutex2;
            }
        }
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            coroutineScope2 = (CoroutineScope) this.L$0;
            ResultKt.throwOnFailure(obj);
            CoroutineScopeKt.ensureActive(coroutineScope2);
            this.L$0 = null;
            this.label = 3;
            Object objAwait = ((Deferred) obj).await(this);
            return objAwait != coroutine_suspended ? coroutine_suspended : objAwait;
        }
        graphSessionLock = (GraphSessionLock) this.L$2;
        mutex = (Mutex) this.L$1;
        CoroutineScope coroutineScope3 = (CoroutineScope) this.L$0;
        ResultKt.throwOnFailure(obj);
        coroutineScope = coroutineScope3;
        MutexToken mutexToken = new MutexToken(mutex);
        GraphSessionLock$withTokenInAsync$1$deferred$1 graphSessionLock$withTokenInAsync$1$deferred$1 = new GraphSessionLock$withTokenInAsync$1$deferred$1(this.$action, null);
        this.L$0 = coroutineScope;
        this.L$1 = null;
        this.L$2 = null;
        this.label = 2;
        Object objUse = graphSessionLock.use(mutexToken, graphSessionLock$withTokenInAsync$1$deferred$1, this);
        if (objUse != coroutine_suspended) {
            coroutineScope2 = coroutineScope;
            obj = objUse;
            CoroutineScopeKt.ensureActive(coroutineScope2);
            this.L$0 = null;
            this.label = 3;
            Object objAwait2 = ((Deferred) obj).await(this);
            if (objAwait2 != coroutine_suspended) {
            }
        }
    }
}
