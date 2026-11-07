package androidx.camera.camera2.pipe.core;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.ChannelResult;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "T", "it"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m872c = "androidx.camera.camera2.pipe.core.PruningProcessingQueue$processingLoop$2$1$1", m873f = "PruningProcessingQueue.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
@SourceDebugExtension({"SMAP\nPruningProcessingQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PruningProcessingQueue.kt\nandroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,213:1\n50#2,2:214\n*S KotlinDebug\n*F\n+ 1 PruningProcessingQueue.kt\nandroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1\n*L\n132#1:214,2\n*E\n"})
public final class PruningProcessingQueue$processingLoop$2$1$1<T> extends SuspendLambda implements Function2<T, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ PruningProcessingQueue<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PruningProcessingQueue$processingLoop$2$1$1(PruningProcessingQueue<T> pruningProcessingQueue, Continuation<? super PruningProcessingQueue$processingLoop$2$1$1> continuation) {
        super(2, continuation);
        this.this$0 = pruningProcessingQueue;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PruningProcessingQueue$processingLoop$2$1$1 pruningProcessingQueue$processingLoop$2$1$1 = new PruningProcessingQueue$processingLoop$2$1$1(this.this$0, continuation);
        pruningProcessingQueue$processingLoop$2$1$1.L$0 = obj;
        return pruningProcessingQueue$processingLoop$2$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(T t, Continuation<? super Unit> continuation) {
        return ((PruningProcessingQueue$processingLoop$2$1$1) create(t, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            ((PruningProcessingQueue) this.this$0).queue.add(this.L$0);
            Object objMo4600tryReceivePtdJZtk = ((PruningProcessingQueue) this.this$0).channel.mo4600tryReceivePtdJZtk();
            while (ChannelResult.m4611isSuccessimpl(objMo4600tryReceivePtdJZtk)) {
                ((PruningProcessingQueue) this.this$0).queue.add(ChannelResult.m4608getOrThrowimpl(objMo4600tryReceivePtdJZtk));
                objMo4600tryReceivePtdJZtk = ((PruningProcessingQueue) this.this$0).channel.mo4600tryReceivePtdJZtk();
            }
            Log log = Log.INSTANCE;
            PruningProcessingQueue<T> pruningProcessingQueue = this.this$0;
            if (log.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "PruningProcessingQueue: Pruning " + ((PruningProcessingQueue) pruningProcessingQueue).queue);
            }
            ((PruningProcessingQueue) this.this$0).prune.invoke(((PruningProcessingQueue) this.this$0).queue);
            return Unit.INSTANCE;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
