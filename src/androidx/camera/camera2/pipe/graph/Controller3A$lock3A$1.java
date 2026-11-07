package androidx.camera.camera2.pipe.graph;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m872c = "androidx.camera.camera2.pipe.graph.Controller3A", m873f = "Controller3A.kt", m874i = {0, 0, 0, 0, 0, 0, 0, 0}, m875l = {373}, m876m = "lock3A-Qz1gx5w", m877n = {"aeLockBehavior", "awbLockBehavior", "afTriggerStartAeMode", "lockedCondition", "lockedTimeLimitNs", "afLockBehaviorSanitized", "listener", "frameLimit"}, m878s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "I$0"}, m879v = 1)
public final class Controller3A$lock3A$1 extends ContinuationImpl {
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
    public Controller3A$lock3A$1(Controller3A controller3A, Continuation<? super Controller3A$lock3A$1> continuation) {
        super(continuation);
        this.this$0 = controller3A;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m1587lock3AQz1gx5w(null, null, null, null, null, null, null, null, null, 0, null, null, this);
    }
}
