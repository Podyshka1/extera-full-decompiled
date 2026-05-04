package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.FlowKt__ErrorsKt;

/* JADX INFO: loaded from: classes.dex */
final class FlowKt__ErrorsKt$catchImpl$2$emit$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ FlowKt__ErrorsKt.C26222 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__ErrorsKt$catchImpl$2$emit$1(FlowKt__ErrorsKt.C26222 c26222, Continuation continuation) {
        super(continuation);
        this.this$0 = c26222;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
