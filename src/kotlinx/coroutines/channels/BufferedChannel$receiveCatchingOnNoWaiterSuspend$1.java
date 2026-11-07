package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(m872c = "kotlinx.coroutines.channels.BufferedChannel", m873f = "BufferedChannel.kt", m874i = {0, 0, 0, 0}, m875l = {3093}, m876m = "receiveCatchingOnNoWaiterSuspend-GKJJFZk", m877n = {"segment", "index", "r", "$i$f$suspendCancellableCoroutineReusable"}, m878s = {"L$0", "I$0", "J$0", "I$1"}, m879v = 1)
public final class BufferedChannel$receiveCatchingOnNoWaiterSuspend$1 extends ContinuationImpl {
    int I$0;
    int I$1;
    long J$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ BufferedChannel<E> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BufferedChannel$receiveCatchingOnNoWaiterSuspend$1(BufferedChannel<E> bufferedChannel, Continuation<? super BufferedChannel$receiveCatchingOnNoWaiterSuspend$1> continuation) {
        super(continuation);
        this.this$0 = bufferedChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM4598receiveCatchingOnNoWaiterSuspendGKJJFZk = this.this$0.m4598receiveCatchingOnNoWaiterSuspendGKJJFZk(null, 0, 0L, this);
        return objM4598receiveCatchingOnNoWaiterSuspendGKJJFZk == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM4598receiveCatchingOnNoWaiterSuspendGKJJFZk : ChannelResult.m4603boximpl(objM4598receiveCatchingOnNoWaiterSuspendGKJJFZk);
    }
}
