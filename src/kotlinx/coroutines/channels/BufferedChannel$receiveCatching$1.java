package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(m920c = "kotlinx.coroutines.channels.BufferedChannel", m921f = "BufferedChannel.kt", m922i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, m923l = {736}, m924m = "receiveCatching-JP2dKIU$suspendImpl", m925n = {"$this", "this_$iv", "segment$iv", "updCellResult$iv", "segm", "$i$f$receiveImpl", "r$iv", "id$iv", "i$iv", "r", "i", "$i$a$-receiveImpl-BufferedChannel$receiveCatching$5"}, m926s = {"L$0", "L$1", "L$2", "L$3", "L$4", "I$0", "J$0", "J$1", "I$1", "J$2", "I$2", "I$3"}, m927v = 1)
public final class BufferedChannel$receiveCatching$1<E> extends ContinuationImpl {
    int I$0;
    int I$1;
    int I$2;
    int I$3;
    long J$0;
    long J$1;
    long J$2;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ BufferedChannel<E> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BufferedChannel$receiveCatching$1(BufferedChannel<E> bufferedChannel, Continuation<? super BufferedChannel$receiveCatching$1> continuation) {
        super(continuation);
        this.this$0 = bufferedChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM5118receiveCatchingJP2dKIU$suspendImpl = BufferedChannel.m5118receiveCatchingJP2dKIU$suspendImpl(this.this$0, this);
        return objM5118receiveCatchingJP2dKIU$suspendImpl == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM5118receiveCatchingJP2dKIU$suspendImpl : ChannelResult.m5124boximpl(objM5118receiveCatchingJP2dKIU$suspendImpl);
    }
}
