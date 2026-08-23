package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ReceiveChannel;

/* JADX INFO: loaded from: classes.dex */
public abstract class FlowKt {
    public static final SharedFlow asSharedFlow(MutableSharedFlow mutableSharedFlow) {
        return FlowKt__ShareKt.asSharedFlow(mutableSharedFlow);
    }

    public static final StateFlow asStateFlow(MutableStateFlow mutableStateFlow) {
        return FlowKt__ShareKt.asStateFlow(mutableStateFlow);
    }

    public static final Flow buffer(Flow flow, int i, BufferOverflow bufferOverflow) {
        return FlowKt__ContextKt.buffer(flow, i, bufferOverflow);
    }

    public static final Flow callbackFlow(Function2 function2) {
        return FlowKt__BuildersKt.callbackFlow(function2);
    }

    /* JADX INFO: renamed from: catch, reason: not valid java name */
    public static final Flow m3689catch(Flow flow, Function3 function3) {
        return FlowKt__ErrorsKt.m3691catch(flow, function3);
    }

    public static final Object catchImpl(Flow flow, FlowCollector flowCollector, Continuation continuation) {
        return FlowKt__ErrorsKt.catchImpl(flow, flowCollector, continuation);
    }

    public static final Flow channelFlow(Function2 function2) {
        return FlowKt__BuildersKt.channelFlow(function2);
    }

    public static final Object collect(Flow flow, Continuation continuation) {
        return FlowKt__CollectKt.collect(flow, continuation);
    }

    public static final Object collectLatest(Flow flow, Function2 function2, Continuation continuation) {
        return FlowKt__CollectKt.collectLatest(flow, function2, continuation);
    }

    public static final Flow conflate(Flow flow) {
        return FlowKt__ContextKt.conflate(flow);
    }

    public static final Flow distinctUntilChanged(Flow flow) {
        return FlowKt__DistinctKt.distinctUntilChanged(flow);
    }

    public static final Flow dropWhile(Flow flow, Function2 function2) {
        return FlowKt__LimitKt.dropWhile(flow, function2);
    }

    public static final Object emitAll(FlowCollector flowCollector, ReceiveChannel receiveChannel, Continuation continuation) {
        return FlowKt__ChannelsKt.emitAll(flowCollector, receiveChannel, continuation);
    }

    public static final Object emitAll(FlowCollector flowCollector, Flow flow, Continuation continuation) {
        return FlowKt__CollectKt.emitAll(flowCollector, flow, continuation);
    }

    public static final void ensureActive(FlowCollector flowCollector) {
        FlowKt__EmittersKt.ensureActive(flowCollector);
    }

    public static final Object first(Flow flow, Continuation continuation) {
        return FlowKt__ReduceKt.first(flow, continuation);
    }

    public static final Object first(Flow flow, Function2 function2, Continuation continuation) {
        return FlowKt__ReduceKt.first(flow, function2, continuation);
    }

    public static final Object firstOrNull(Flow flow, Continuation continuation) {
        return FlowKt__ReduceKt.firstOrNull(flow, continuation);
    }

    public static final Flow flow(Function2 function2) {
        return FlowKt__BuildersKt.flow(function2);
    }

    public static final Flow flowOf(Object obj) {
        return FlowKt__BuildersKt.flowOf(obj);
    }

    public static final Job launchIn(Flow flow, CoroutineScope coroutineScope) {
        return FlowKt__CollectKt.launchIn(flow, coroutineScope);
    }

    public static final Flow mapLatest(Flow flow, Function2 function2) {
        return FlowKt__MergeKt.mapLatest(flow, function2);
    }

    public static final Flow merge(Iterable iterable) {
        return FlowKt__MergeKt.merge(iterable);
    }

    public static final Flow merge(Flow... flowArr) {
        return FlowKt__MergeKt.merge(flowArr);
    }

    public static final Flow onCompletion(Flow flow, Function3 function3) {
        return FlowKt__EmittersKt.onCompletion(flow, function3);
    }

    public static final Flow onEach(Flow flow, Function2 function2) {
        return FlowKt__TransformKt.onEach(flow, function2);
    }

    public static final Flow onStart(Flow flow, Function2 function2) {
        return FlowKt__EmittersKt.onStart(flow, function2);
    }

    public static final Flow retryWhen(Flow flow, Function4 function4) {
        return FlowKt__ErrorsKt.retryWhen(flow, function4);
    }

    public static final SharedFlow shareIn(Flow flow, CoroutineScope coroutineScope, SharingStarted sharingStarted, int i) {
        return FlowKt__ShareKt.shareIn(flow, coroutineScope, sharingStarted, i);
    }

    public static final Flow takeWhile(Flow flow, Function2 function2) {
        return FlowKt__LimitKt.takeWhile(flow, function2);
    }

    public static final Flow transformLatest(Flow flow, Function3 function3) {
        return FlowKt__MergeKt.transformLatest(flow, function3);
    }
}
