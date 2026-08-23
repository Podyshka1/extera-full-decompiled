package androidx.camera.camera2.pipe.core;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
final class PruningProcessingQueue$processingLoop$2$deferred$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Object $elementToProcess;
    int label;
    final /* synthetic */ PruningProcessingQueue this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PruningProcessingQueue$processingLoop$2$deferred$1(PruningProcessingQueue pruningProcessingQueue, Object obj, Continuation continuation) {
        super(2, continuation);
        this.this$0 = pruningProcessingQueue;
        this.$elementToProcess = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PruningProcessingQueue$processingLoop$2$deferred$1(this.this$0, this.$elementToProcess, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((PruningProcessingQueue$processingLoop$2$deferred$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Log log = Log.INSTANCE;
            Object obj2 = this.$elementToProcess;
            if (log.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "PruningProcessingQueue: Processing " + obj2);
            }
            Function2 function2 = this.this$0.process;
            Object obj3 = this.$elementToProcess;
            this.label = 1;
            if (function2.invoke(obj3, this) == coroutine_suspended) {
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
