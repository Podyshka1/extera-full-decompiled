package androidx.camera.camera2.pipe.graph;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
final class GraphLoop$requestProcessor$2$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ GraphRequestProcessor $value;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GraphLoop$requestProcessor$2$1(GraphRequestProcessor graphRequestProcessor, Continuation continuation) {
        super(2, continuation);
        this.$value = graphRequestProcessor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new GraphLoop$requestProcessor$2$1(this.$value, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((GraphLoop$requestProcessor$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            GraphRequestProcessor graphRequestProcessor = this.$value;
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
