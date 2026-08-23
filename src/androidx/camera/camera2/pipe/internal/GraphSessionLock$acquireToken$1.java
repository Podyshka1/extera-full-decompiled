package androidx.camera.camera2.pipe.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
final class GraphSessionLock$acquireToken$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ GraphSessionLock this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GraphSessionLock$acquireToken$1(GraphSessionLock graphSessionLock, Continuation continuation) {
        super(continuation);
        this.this$0 = graphSessionLock;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.acquireToken$camera_camera2_pipe(this);
    }
}
