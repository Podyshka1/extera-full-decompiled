package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "kotlinx.coroutines.channels.BufferedChannel", m766f = "BufferedChannel.kt", m767i = {0, 0, 0, 0}, m768l = {3117}, m769m = "receiveCatchingOnNoWaiterSuspend-GKJJFZk", m770n = {"this", "segment", "index", "r"}, m771s = {"L$0", "L$1", "I$0", "J$0"})
public final class BufferedChannel$receiveCatchingOnNoWaiterSuspend$1 extends ContinuationImpl {
    int I$0;
    long J$0;
    Object L$0;
    Object L$1;
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
        Object objM4804receiveCatchingOnNoWaiterSuspendGKJJFZk = this.this$0.m4804receiveCatchingOnNoWaiterSuspendGKJJFZk(null, 0, 0L, this);
        return objM4804receiveCatchingOnNoWaiterSuspendGKJJFZk == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM4804receiveCatchingOnNoWaiterSuspendGKJJFZk : ChannelResult.m4810boximpl(objM4804receiveCatchingOnNoWaiterSuspendGKJJFZk);
    }
}
