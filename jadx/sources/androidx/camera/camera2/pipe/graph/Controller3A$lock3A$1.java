package androidx.camera.camera2.pipe.graph;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
final class Controller3A$lock3A$1 extends ContinuationImpl {
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Controller3A this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Controller3A$lock3A$1(Controller3A controller3A, Continuation continuation) {
        super(continuation);
        this.this$0 = controller3A;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m1900lock3AQz1gx5w(null, null, null, null, null, null, null, null, null, 0, null, null, this);
    }
}
