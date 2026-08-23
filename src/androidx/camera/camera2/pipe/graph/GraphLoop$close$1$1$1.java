package androidx.camera.camera2.pipe.graph;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
final class GraphLoop$close$1$1$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ GraphRequestProcessor $processor;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GraphLoop$close$1$1$1(GraphRequestProcessor graphRequestProcessor, Continuation continuation) {
        super(2, continuation);
        this.$processor = graphRequestProcessor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new GraphLoop$close$1$1$1(this.$processor, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((GraphLoop$close$1$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            GraphRequestProcessor graphRequestProcessor = this.$processor;
            this.label = 1;
            if (graphRequestProcessor.shutdown$camera_camera2_pipe(this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
