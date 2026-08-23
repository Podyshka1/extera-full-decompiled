package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "kotlinx.coroutines.channels.BufferedChannel", m766f = "BufferedChannel.kt", m767i = {}, m768l = {759}, m769m = "receiveCatching-JP2dKIU$suspendImpl", m770n = {}, m771s = {})
public final class BufferedChannel$receiveCatching$1<E> extends ContinuationImpl {
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
        Object objM4803receiveCatchingJP2dKIU$suspendImpl = BufferedChannel.m4803receiveCatchingJP2dKIU$suspendImpl(this.this$0, this);
        return objM4803receiveCatchingJP2dKIU$suspendImpl == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM4803receiveCatchingJP2dKIU$suspendImpl : ChannelResult.m4810boximpl(objM4803receiveCatchingJP2dKIU$suspendImpl);
    }
}
