package androidx.camera.camera2.pipe.core;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ChannelResult;

/* JADX INFO: loaded from: classes3.dex */
final class PruningProcessingQueue$processingLoop$2$1$1 extends SuspendLambda implements Function2 {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ PruningProcessingQueue this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PruningProcessingQueue$processingLoop$2$1$1(PruningProcessingQueue pruningProcessingQueue, Continuation continuation) {
        super(2, continuation);
        this.this$0 = pruningProcessingQueue;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        PruningProcessingQueue$processingLoop$2$1$1 pruningProcessingQueue$processingLoop$2$1$1 = new PruningProcessingQueue$processingLoop$2$1$1(this.this$0, continuation);
        pruningProcessingQueue$processingLoop$2$1$1.L$0 = obj;
        return pruningProcessingQueue$processingLoop$2$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation continuation) {
        return ((PruningProcessingQueue$processingLoop$2$1$1) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            this.this$0.queue.add(this.L$0);
            Object objMo3669tryReceivePtdJZtk = this.this$0.channel.mo3669tryReceivePtdJZtk();
            while (ChannelResult.m3681isSuccessimpl(objMo3669tryReceivePtdJZtk)) {
                this.this$0.queue.add(ChannelResult.m3678getOrThrowimpl(objMo3669tryReceivePtdJZtk));
                objMo3669tryReceivePtdJZtk = this.this$0.channel.mo3669tryReceivePtdJZtk();
            }
            Log log = Log.INSTANCE;
            PruningProcessingQueue pruningProcessingQueue = this.this$0;
            if (log.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "PruningProcessingQueue: Pruning " + pruningProcessingQueue.queue);
            }
            this.this$0.prune.invoke(this.this$0.queue);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
