package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.internal.SafeCollector;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractFlow implements Flow {

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.AbstractFlow$collect$1 */
    static final class C26141 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C26141(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AbstractFlow.this.collect(null, this);
        }
    }

    public abstract Object collectSafely(FlowCollector flowCollector, Continuation continuation);

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object collect(FlowCollector flowCollector, Continuation continuation) throws Throwable {
        C26141 c26141;
        Throwable th;
        SafeCollector safeCollector;
        if (continuation instanceof C26141) {
            c26141 = (C26141) continuation;
            int i = c26141.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c26141.label = i - Integer.MIN_VALUE;
            } else {
                c26141 = new C26141(continuation);
            }
        }
        Object obj = c26141.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c26141.label;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            safeCollector = (SafeCollector) c26141.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                safeCollector.releaseIntercepted();
                return Unit.INSTANCE;
            } catch (Throwable th2) {
                th = th2;
                safeCollector.releaseIntercepted();
                throw th;
            }
        }
        ResultKt.throwOnFailure(obj);
        SafeCollector safeCollector2 = new SafeCollector(flowCollector, c26141.getContext());
        try {
            c26141.L$0 = safeCollector2;
            c26141.label = 1;
            if (collectSafely(safeCollector2, c26141) == coroutine_suspended) {
                return coroutine_suspended;
            }
            safeCollector = safeCollector2;
            safeCollector.releaseIntercepted();
            return Unit.INSTANCE;
        } catch (Throwable th3) {
            th = th3;
            safeCollector = safeCollector2;
            safeCollector.releaseIntercepted();
            throw th;
        }
    }
}
