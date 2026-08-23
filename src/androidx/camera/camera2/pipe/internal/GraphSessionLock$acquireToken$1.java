package androidx.camera.camera2.pipe.internal;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "androidx.camera.camera2.pipe.internal.GraphSessionLock", m766f = "GraphSessionLock.kt", m767i = {0}, m768l = {105}, m769m = "acquireToken$camera_camera2_pipe", m770n = {"$this$acquireToken$iv"}, m771s = {"L$0"}, m772v = 1)
public final class GraphSessionLock$acquireToken$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ GraphSessionLock this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GraphSessionLock$acquireToken$1(GraphSessionLock graphSessionLock, Continuation<? super GraphSessionLock$acquireToken$1> continuation) {
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
