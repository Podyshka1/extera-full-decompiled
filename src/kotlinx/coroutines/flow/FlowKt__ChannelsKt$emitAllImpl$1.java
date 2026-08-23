package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "kotlinx.coroutines.flow.FlowKt__ChannelsKt", m766f = "Channels.kt", m767i = {0, 0, 0, 1, 1, 1}, m768l = {32, 33}, m769m = "emitAllImpl$FlowKt__ChannelsKt", m770n = {"$this$emitAllImpl", "channel", "consume", "$this$emitAllImpl", "channel", "consume"}, m771s = {"L$0", "L$1", "Z$0", "L$0", "L$1", "Z$0"})
public final class FlowKt__ChannelsKt$emitAllImpl$1<T> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;

    public FlowKt__ChannelsKt$emitAllImpl$1(Continuation<? super FlowKt__ChannelsKt$emitAllImpl$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return FlowKt__ChannelsKt.emitAllImpl$FlowKt__ChannelsKt(null, null, false, this);
    }
}
