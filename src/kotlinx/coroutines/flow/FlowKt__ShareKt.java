package kotlinx.coroutines.flow;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.flow.internal.ChannelFlow;

/* JADX INFO: loaded from: classes5.dex */
abstract /* synthetic */ class FlowKt__ShareKt {
    public static final SharedFlow shareIn(Flow flow, CoroutineScope coroutineScope, SharingStarted sharingStarted, int i) {
        SharingConfig sharingConfigConfigureSharing$FlowKt__ShareKt = configureSharing$FlowKt__ShareKt(flow, i);
        MutableSharedFlow MutableSharedFlow = SharedFlowKt.MutableSharedFlow(i, sharingConfigConfigureSharing$FlowKt__ShareKt.extraBufferCapacity, sharingConfigConfigureSharing$FlowKt__ShareKt.onBufferOverflow);
        return new ReadonlySharedFlow(MutableSharedFlow, launchSharing$FlowKt__ShareKt(coroutineScope, sharingConfigConfigureSharing$FlowKt__ShareKt.context, sharingConfigConfigureSharing$FlowKt__ShareKt.upstream, MutableSharedFlow, sharingStarted, SharedFlowKt.NO_VALUE));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final SharingConfig configureSharing$FlowKt__ShareKt(Flow flow, int i) {
        ChannelFlow channelFlow;
        Flow flowDropChannelOperators;
        int iCoerceAtLeast = RangesKt.coerceAtLeast(i, Channel.Factory.getCHANNEL_DEFAULT_CAPACITY$kotlinx_coroutines_core()) - i;
        if ((flow instanceof ChannelFlow) && (flowDropChannelOperators = (channelFlow = (ChannelFlow) flow).dropChannelOperators()) != null) {
            int i2 = channelFlow.capacity;
            if (i2 != -3 && i2 != -2 && i2 != 0) {
                iCoerceAtLeast = i2;
            } else if (channelFlow.onBufferOverflow == BufferOverflow.SUSPEND) {
                if (i2 == 0) {
                    iCoerceAtLeast = 0;
                }
            } else if (i == 0) {
                iCoerceAtLeast = 1;
            }
            return new SharingConfig(flowDropChannelOperators, iCoerceAtLeast, channelFlow.onBufferOverflow, channelFlow.context);
        }
        return new SharingConfig(flow, iCoerceAtLeast, BufferOverflow.SUSPEND, EmptyCoroutineContext.INSTANCE);
    }

    private static final Job launchSharing$FlowKt__ShareKt(CoroutineScope coroutineScope, CoroutineContext coroutineContext, Flow flow, MutableSharedFlow mutableSharedFlow, SharingStarted sharingStarted, Object obj) {
        return BuildersKt.launch(coroutineScope, coroutineContext, Intrinsics.areEqual(sharingStarted, SharingStarted.Companion.getEagerly()) ? CoroutineStart.DEFAULT : CoroutineStart.UNDISPATCHED, new FlowKt__ShareKt$launchSharing$1(sharingStarted, flow, mutableSharedFlow, obj, null));
    }

    public static final SharedFlow asSharedFlow(MutableSharedFlow mutableSharedFlow) {
        return new ReadonlySharedFlow(mutableSharedFlow, null);
    }

    public static final StateFlow asStateFlow(MutableStateFlow mutableStateFlow) {
        return new ReadonlyStateFlow(mutableStateFlow, null);
    }
}
