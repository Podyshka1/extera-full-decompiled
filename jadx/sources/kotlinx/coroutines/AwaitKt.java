package kotlinx.coroutines;

import java.util.Collection;
import java.util.Iterator;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AwaitKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.AwaitKt$joinAll$3 */
    static final class C26053 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C26053(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AwaitKt.joinAll(null, this);
        }
    }

    public static final Object awaitAll(Deferred[] deferredArr, Continuation continuation) {
        return deferredArr.length == 0 ? CollectionsKt.emptyList() : new AwaitAll(deferredArr).await(continuation);
    }

    public static final Object awaitAll(Collection collection, Continuation continuation) {
        return collection.isEmpty() ? CollectionsKt.emptyList() : new AwaitAll((Deferred[]) collection.toArray(new Deferred[0])).await(continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object joinAll(Collection collection, Continuation continuation) {
        C26053 c26053;
        Iterator it;
        if (continuation instanceof C26053) {
            c26053 = (C26053) continuation;
            int i = c26053.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c26053.label = i - Integer.MIN_VALUE;
            } else {
                c26053 = new C26053(continuation);
            }
        }
        Object obj = c26053.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c26053.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            it = collection.iterator();
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            it = (Iterator) c26053.L$0;
            ResultKt.throwOnFailure(obj);
        }
        while (it.hasNext()) {
            Job job = (Job) it.next();
            c26053.L$0 = it;
            c26053.label = 1;
            if (job.join(c26053) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}
