package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ReceiveChannel;

/* JADX INFO: loaded from: classes.dex */
abstract /* synthetic */ class FlowKt__ChannelsKt {
    public static final Object emitAll(FlowCollector flowCollector, ReceiveChannel receiveChannel, Continuation continuation) {
        Object objEmitAllImpl$FlowKt__ChannelsKt = emitAllImpl$FlowKt__ChannelsKt(flowCollector, receiveChannel, true, continuation);
        return objEmitAllImpl$FlowKt__ChannelsKt == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEmitAllImpl$FlowKt__ChannelsKt : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0091, code lost:
    
        if (r2.emit(r9, r0) == r1) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007f A[Catch: all -> 0x003c, TRY_LEAVE, TryCatch #0 {all -> 0x003c, blocks: (B:13:0x0036, B:24:0x0062, B:28:0x0077, B:30:0x007f, B:20:0x0054, B:23:0x005e), top: B:42:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0091 -> B:14:0x0039). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object emitAllImpl$FlowKt__ChannelsKt(FlowCollector flowCollector, ReceiveChannel receiveChannel, boolean z, Continuation continuation) {
        FlowKt__ChannelsKt$emitAllImpl$1 flowKt__ChannelsKt$emitAllImpl$1;
        ChannelIterator it;
        ChannelIterator channelIterator;
        FlowCollector flowCollector2;
        Object objHasNext;
        if (continuation instanceof FlowKt__ChannelsKt$emitAllImpl$1) {
            flowKt__ChannelsKt$emitAllImpl$1 = (FlowKt__ChannelsKt$emitAllImpl$1) continuation;
            int i = flowKt__ChannelsKt$emitAllImpl$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__ChannelsKt$emitAllImpl$1.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__ChannelsKt$emitAllImpl$1 = new FlowKt__ChannelsKt$emitAllImpl$1(continuation);
            }
        }
        Object obj = flowKt__ChannelsKt$emitAllImpl$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = flowKt__ChannelsKt$emitAllImpl$1.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                FlowKt.ensureActive(flowCollector);
                it = receiveChannel.iterator();
                flowKt__ChannelsKt$emitAllImpl$1.L$0 = flowCollector;
                flowKt__ChannelsKt$emitAllImpl$1.L$1 = receiveChannel;
                flowKt__ChannelsKt$emitAllImpl$1.L$2 = it;
                flowKt__ChannelsKt$emitAllImpl$1.Z$0 = z;
                flowKt__ChannelsKt$emitAllImpl$1.label = 1;
                objHasNext = it.hasNext(flowKt__ChannelsKt$emitAllImpl$1);
                if (objHasNext != coroutine_suspended) {
                }
            } else if (i2 == 1) {
                z = flowKt__ChannelsKt$emitAllImpl$1.Z$0;
                channelIterator = (ChannelIterator) flowKt__ChannelsKt$emitAllImpl$1.L$2;
                receiveChannel = (ReceiveChannel) flowKt__ChannelsKt$emitAllImpl$1.L$1;
                flowCollector2 = (FlowCollector) flowKt__ChannelsKt$emitAllImpl$1.L$0;
                ResultKt.throwOnFailure(obj);
                if (!((Boolean) obj).booleanValue()) {
                }
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                z = flowKt__ChannelsKt$emitAllImpl$1.Z$0;
                channelIterator = (ChannelIterator) flowKt__ChannelsKt$emitAllImpl$1.L$2;
                receiveChannel = (ReceiveChannel) flowKt__ChannelsKt$emitAllImpl$1.L$1;
                flowCollector2 = (FlowCollector) flowKt__ChannelsKt$emitAllImpl$1.L$0;
                ResultKt.throwOnFailure(obj);
                it = channelIterator;
                flowCollector = flowCollector2;
                flowKt__ChannelsKt$emitAllImpl$1.L$0 = flowCollector;
                flowKt__ChannelsKt$emitAllImpl$1.L$1 = receiveChannel;
                flowKt__ChannelsKt$emitAllImpl$1.L$2 = it;
                flowKt__ChannelsKt$emitAllImpl$1.Z$0 = z;
                flowKt__ChannelsKt$emitAllImpl$1.label = 1;
                objHasNext = it.hasNext(flowKt__ChannelsKt$emitAllImpl$1);
                if (objHasNext != coroutine_suspended) {
                    return coroutine_suspended;
                }
                flowCollector2 = flowCollector;
                channelIterator = it;
                obj = objHasNext;
                if (!((Boolean) obj).booleanValue()) {
                    Object next = channelIterator.next();
                    flowKt__ChannelsKt$emitAllImpl$1.L$0 = flowCollector2;
                    flowKt__ChannelsKt$emitAllImpl$1.L$1 = receiveChannel;
                    flowKt__ChannelsKt$emitAllImpl$1.L$2 = channelIterator;
                    flowKt__ChannelsKt$emitAllImpl$1.Z$0 = z;
                    flowKt__ChannelsKt$emitAllImpl$1.label = 2;
                } else {
                    if (z) {
                        ChannelsKt.cancelConsumed(receiveChannel, null);
                    }
                    return Unit.INSTANCE;
                }
            }
        } finally {
        }
    }
}
