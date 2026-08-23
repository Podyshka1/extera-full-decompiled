package kotlinx.coroutines.channels;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;
import androidx.concurrent.futures.AbstractC0329xc40028dd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.ExceptionsKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KFunction;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.ConcurrentLinkedListKt;
import kotlinx.coroutines.internal.ConcurrentLinkedListNode;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.SegmentOrClosed;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectClause1Impl;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.TrySelectDetailedResult;

/* JADX INFO: loaded from: classes.dex */
public class BufferedChannel implements Channel {
    private volatile /* synthetic */ Object _closeCause$volatile;
    private volatile /* synthetic */ long bufferEnd$volatile;
    private volatile /* synthetic */ Object bufferEndSegment$volatile;
    private final int capacity;
    private volatile /* synthetic */ Object closeHandler$volatile;
    private volatile /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile;
    public final Function1 onUndeliveredElement;
    private final Function3 onUndeliveredElementReceiveCancellationConstructor;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;
    private static final /* synthetic */ AtomicLongFieldUpdater sendersAndCloseStatus$volatile$FU = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "sendersAndCloseStatus$volatile");
    private static final /* synthetic */ AtomicLongFieldUpdater receivers$volatile$FU = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "receivers$volatile");
    private static final /* synthetic */ AtomicLongFieldUpdater bufferEnd$volatile$FU = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "bufferEnd$volatile");
    private static final /* synthetic */ AtomicLongFieldUpdater completedExpandBuffersAndPauseFlag$volatile$FU = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "completedExpandBuffersAndPauseFlag$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater sendSegment$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "sendSegment$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater receiveSegment$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "receiveSegment$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater bufferEndSegment$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "bufferEndSegment$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater _closeCause$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "_closeCause$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater closeHandler$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "closeHandler$volatile");

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicReferenceFieldUpdater getReceiveSegment$volatile$FU() {
        return receiveSegment$volatile$FU;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicLongFieldUpdater getReceivers$volatile$FU() {
        return receivers$volatile$FU;
    }

    protected boolean isConflatedDropOldest() {
        return false;
    }

    protected void onClosedIdempotent() {
    }

    protected void onReceiveDequeued() {
    }

    protected void onReceiveEnqueued() {
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public Object receive(Continuation continuation) {
        return receive$suspendImpl(this, continuation);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    /* JADX INFO: renamed from: receiveCatching-JP2dKIU, reason: not valid java name */
    public Object mo3668receiveCatchingJP2dKIU(Continuation continuation) {
        return m3666receiveCatchingJP2dKIU$suspendImpl(this, continuation);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public Object send(Object obj, Continuation continuation) {
        return send$suspendImpl(this, obj, continuation);
    }

    public BufferedChannel(int i, Function1 function1) {
        this.capacity = i;
        this.onUndeliveredElement = function1;
        if (i >= 0) {
            this.bufferEnd$volatile = BufferedChannelKt.initialBufferEnd(i);
            this.completedExpandBuffersAndPauseFlag$volatile = getBufferEndCounter();
            ChannelSegment channelSegment = new ChannelSegment(0L, null, this, 3);
            this.sendSegment$volatile = channelSegment;
            this.receiveSegment$volatile = channelSegment;
            if (isRendezvousOrUnlimited()) {
                channelSegment = BufferedChannelKt.NULL_SEGMENT;
                Intrinsics.checkNotNull(channelSegment, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
            }
            this.bufferEndSegment$volatile = channelSegment;
            this.onUndeliveredElementReceiveCancellationConstructor = function1 != null ? new Function3() { // from class: kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return BufferedChannel.m1089xa189d599(this.f$0, (SelectInstance) obj, obj2, obj3);
                }
            } : null;
            this._closeCause$volatile = BufferedChannelKt.NO_CLOSE_CAUSE;
            return;
        }
        throw new IllegalArgumentException(("Invalid channel capacity: " + i + ", should be >=0").toString());
    }

    public final long getSendersCounter$kotlinx_coroutines_core() {
        return sendersAndCloseStatus$volatile$FU.get(this) & 1152921504606846975L;
    }

    public final long getReceiversCounter$kotlinx_coroutines_core() {
        return receivers$volatile$FU.get(this);
    }

    private final long getBufferEndCounter() {
        return bufferEnd$volatile$FU.get(this);
    }

    private final boolean isRendezvousOrUnlimited() {
        long bufferEndCounter = getBufferEndCounter();
        return bufferEndCounter == 0 || bufferEndCounter == Long.MAX_VALUE;
    }

    static /* synthetic */ Object send$suspendImpl(BufferedChannel bufferedChannel, Object obj, Continuation continuation) {
        ChannelSegment channelSegment;
        ChannelSegment channelSegment2 = (ChannelSegment) sendSegment$volatile$FU.get(bufferedChannel);
        while (true) {
            long andIncrement = sendersAndCloseStatus$volatile$FU.getAndIncrement(bufferedChannel);
            long j = andIncrement & 1152921504606846975L;
            boolean zIsClosedForSend0 = bufferedChannel.isClosedForSend0(andIncrement);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = j / ((long) i);
            int i2 = (int) (j % ((long) i));
            if (channelSegment2.f1546id != j2) {
                ChannelSegment channelSegmentFindSegmentSend = bufferedChannel.findSegmentSend(j2, channelSegment2);
                if (channelSegmentFindSegmentSend != null) {
                    channelSegment = channelSegmentFindSegmentSend;
                } else if (zIsClosedForSend0) {
                    Object objOnClosedSend = bufferedChannel.onClosedSend(obj, continuation);
                    if (objOnClosedSend == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        return objOnClosedSend;
                    }
                }
            } else {
                channelSegment = channelSegment2;
            }
            BufferedChannel bufferedChannel2 = bufferedChannel;
            Object obj2 = obj;
            int iUpdateCellSend = bufferedChannel2.updateCellSend(channelSegment, i2, obj2, j, null, zIsClosedForSend0);
            if (iUpdateCellSend == 0) {
                channelSegment.cleanPrev();
                break;
            }
            if (iUpdateCellSend == 1) {
                break;
            }
            if (iUpdateCellSend != 2) {
                if (iUpdateCellSend == 3) {
                    Object objSendOnNoWaiterSuspend = bufferedChannel2.sendOnNoWaiterSuspend(channelSegment, i2, obj2, j, continuation);
                    if (objSendOnNoWaiterSuspend == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        return objSendOnNoWaiterSuspend;
                    }
                } else if (iUpdateCellSend != 4) {
                    if (iUpdateCellSend == 5) {
                        channelSegment.cleanPrev();
                    }
                    bufferedChannel = bufferedChannel2;
                    channelSegment2 = channelSegment;
                    obj = obj2;
                } else {
                    if (j < bufferedChannel2.getReceiversCounter$kotlinx_coroutines_core()) {
                        channelSegment.cleanPrev();
                    }
                    Object objOnClosedSend2 = bufferedChannel2.onClosedSend(obj2, continuation);
                    if (objOnClosedSend2 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        return objOnClosedSend2;
                    }
                }
            } else if (zIsClosedForSend0) {
                channelSegment.onSlotCleaned();
                Object objOnClosedSend3 = bufferedChannel2.onClosedSend(obj2, continuation);
                if (objOnClosedSend3 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    return objOnClosedSend3;
                }
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void prepareSenderForSuspension(Waiter waiter, ChannelSegment channelSegment, int i) {
        waiter.invokeOnCancellation(channelSegment, i + BufferedChannelKt.SEGMENT_SIZE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onClosedSendOnNoWaiterSuspend(Object obj, CancellableContinuation cancellableContinuation) {
        Function1 function1 = this.onUndeliveredElement;
        if (function1 != null) {
            OnUndeliveredElementKt.callUndeliveredElement(function1, obj, cancellableContinuation.getContext());
        }
        Throwable sendException = getSendException();
        Result.Companion companion = Result.Companion;
        cancellableContinuation.resumeWith(Result.m3604constructorimpl(ResultKt.createFailure(sendException)));
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    /* JADX INFO: renamed from: trySend-JP2dKIU, reason: not valid java name */
    public Object mo3670trySendJP2dKIU(Object obj) {
        ChannelSegment channelSegmentFindSegmentSend;
        long j;
        BufferedChannel bufferedChannel;
        if (shouldSendSuspend(sendersAndCloseStatus$volatile$FU.get(this))) {
            return ChannelResult.Companion.m3685failurePtdJZtk();
        }
        Object obj2 = BufferedChannelKt.INTERRUPTED_SEND;
        ChannelSegment channelSegment = (ChannelSegment) sendSegment$volatile$FU.get(this);
        while (true) {
            long andIncrement = sendersAndCloseStatus$volatile$FU.getAndIncrement(this);
            long j2 = 1152921504606846975L & andIncrement;
            boolean zIsClosedForSend0 = isClosedForSend0(andIncrement);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j3 = j2 / ((long) i);
            int i2 = (int) (j2 % ((long) i));
            if (channelSegment.f1546id != j3) {
                channelSegmentFindSegmentSend = findSegmentSend(j3, channelSegment);
                if (channelSegmentFindSegmentSend != null) {
                    bufferedChannel = this;
                    j = j2;
                } else if (zIsClosedForSend0) {
                    return ChannelResult.Companion.m3684closedJP2dKIU(getSendException());
                }
            } else {
                channelSegmentFindSegmentSend = channelSegment;
                j = j2;
                bufferedChannel = this;
            }
            Object obj3 = obj;
            int iUpdateCellSend = bufferedChannel.updateCellSend(channelSegmentFindSegmentSend, i2, obj3, j, obj2, zIsClosedForSend0);
            channelSegment = channelSegmentFindSegmentSend;
            if (iUpdateCellSend == 0) {
                channelSegment.cleanPrev();
                return ChannelResult.Companion.m3686successJP2dKIU(Unit.INSTANCE);
            }
            if (iUpdateCellSend == 1) {
                return ChannelResult.Companion.m3686successJP2dKIU(Unit.INSTANCE);
            }
            if (iUpdateCellSend == 2) {
                if (zIsClosedForSend0) {
                    channelSegment.onSlotCleaned();
                    return ChannelResult.Companion.m3684closedJP2dKIU(getSendException());
                }
                Waiter waiter = obj2 instanceof Waiter ? (Waiter) obj2 : null;
                if (waiter != null) {
                    prepareSenderForSuspension(waiter, channelSegment, i2);
                }
                channelSegment.onSlotCleaned();
                return ChannelResult.Companion.m3685failurePtdJZtk();
            }
            if (iUpdateCellSend == 3) {
                throw new IllegalStateException("unexpected");
            }
            if (iUpdateCellSend == 4) {
                if (j < getReceiversCounter$kotlinx_coroutines_core()) {
                    channelSegment.cleanPrev();
                }
                return ChannelResult.Companion.m3684closedJP2dKIU(getSendException());
            }
            if (iUpdateCellSend == 5) {
                channelSegment.cleanPrev();
            }
            obj = obj3;
        }
    }

    /* JADX INFO: renamed from: trySendDropOldest-JP2dKIU, reason: not valid java name */
    protected final Object m3671trySendDropOldestJP2dKIU(Object obj) {
        ChannelSegment channelSegmentFindSegmentSend;
        int i;
        BufferedChannel bufferedChannel;
        Object obj2 = BufferedChannelKt.BUFFERED;
        ChannelSegment channelSegment = (ChannelSegment) sendSegment$volatile$FU.get(this);
        while (true) {
            long andIncrement = sendersAndCloseStatus$volatile$FU.getAndIncrement(this);
            long j = 1152921504606846975L & andIncrement;
            boolean zIsClosedForSend0 = isClosedForSend0(andIncrement);
            int i2 = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = j / ((long) i2);
            int i3 = (int) (j % ((long) i2));
            if (channelSegment.f1546id != j2) {
                channelSegmentFindSegmentSend = findSegmentSend(j2, channelSegment);
                if (channelSegmentFindSegmentSend != null) {
                    bufferedChannel = this;
                    i = i3;
                } else if (zIsClosedForSend0) {
                    return ChannelResult.Companion.m3684closedJP2dKIU(getSendException());
                }
            } else {
                channelSegmentFindSegmentSend = channelSegment;
                i = i3;
                bufferedChannel = this;
            }
            Object obj3 = obj;
            int iUpdateCellSend = bufferedChannel.updateCellSend(channelSegmentFindSegmentSend, i, obj3, j, obj2, zIsClosedForSend0);
            channelSegment = channelSegmentFindSegmentSend;
            if (iUpdateCellSend == 0) {
                channelSegment.cleanPrev();
                return ChannelResult.Companion.m3686successJP2dKIU(Unit.INSTANCE);
            }
            if (iUpdateCellSend == 1) {
                return ChannelResult.Companion.m3686successJP2dKIU(Unit.INSTANCE);
            }
            if (iUpdateCellSend == 2) {
                if (zIsClosedForSend0) {
                    channelSegment.onSlotCleaned();
                    return ChannelResult.Companion.m3684closedJP2dKIU(getSendException());
                }
                Waiter waiter = obj2 instanceof Waiter ? (Waiter) obj2 : null;
                if (waiter != null) {
                    prepareSenderForSuspension(waiter, channelSegment, i);
                }
                dropFirstElementUntilTheSpecifiedCellIsInTheBuffer((channelSegment.f1546id * ((long) i2)) + ((long) i));
                return ChannelResult.Companion.m3686successJP2dKIU(Unit.INSTANCE);
            }
            if (iUpdateCellSend == 3) {
                throw new IllegalStateException("unexpected");
            }
            if (iUpdateCellSend == 4) {
                if (j < getReceiversCounter$kotlinx_coroutines_core()) {
                    channelSegment.cleanPrev();
                }
                return ChannelResult.Companion.m3684closedJP2dKIU(getSendException());
            }
            if (iUpdateCellSend == 5) {
                channelSegment.cleanPrev();
            }
            obj = obj3;
        }
    }

    private final Object onClosedSend(Object obj, Continuation continuation) {
        UndeliveredElementException undeliveredElementExceptionCallUndeliveredElementCatchingException$default;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        Function1 function1 = this.onUndeliveredElement;
        if (function1 != null && (undeliveredElementExceptionCallUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(function1, obj, null, 2, null)) != null) {
            ExceptionsKt.addSuppressed(undeliveredElementExceptionCallUndeliveredElementCatchingException$default, getSendException());
            Result.Companion companion = Result.Companion;
            cancellableContinuationImpl.resumeWith(Result.m3604constructorimpl(ResultKt.createFailure(undeliveredElementExceptionCallUndeliveredElementCatchingException$default)));
        } else {
            Throwable sendException = getSendException();
            Result.Companion companion2 = Result.Companion;
            cancellableContinuationImpl.resumeWith(Result.m3604constructorimpl(ResultKt.createFailure(sendException)));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int updateCellSend(ChannelSegment channelSegment, int i, Object obj, long j, Object obj2, boolean z) {
        channelSegment.storeElement$kotlinx_coroutines_core(i, obj);
        if (z) {
            return updateCellSendSlow(channelSegment, i, obj, j, obj2, z);
        }
        Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
        if (state$kotlinx_coroutines_core == null) {
            if (bufferOrRendezvousSend(j)) {
                if (channelSegment.casState$kotlinx_coroutines_core(i, null, BufferedChannelKt.BUFFERED)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (channelSegment.casState$kotlinx_coroutines_core(i, null, obj2)) {
                    return 2;
                }
            }
        } else if (state$kotlinx_coroutines_core instanceof Waiter) {
            channelSegment.cleanElement$kotlinx_coroutines_core(i);
            if (tryResumeReceiver(state$kotlinx_coroutines_core, obj)) {
                channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.DONE_RCV);
                onReceiveDequeued();
                return 0;
            }
            if (channelSegment.getAndSetState$kotlinx_coroutines_core(i, BufferedChannelKt.INTERRUPTED_RCV) == BufferedChannelKt.INTERRUPTED_RCV) {
                return 5;
            }
            channelSegment.onCancelledRequest(i, true);
            return 5;
        }
        return updateCellSendSlow(channelSegment, i, obj, j, obj2, z);
    }

    private final Object receiveOnNoWaiterSuspend(ChannelSegment channelSegment, int i, long j, Continuation continuation) {
        ChannelSegment channelSegment2;
        CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt.intercepted(continuation));
        try {
            Object objUpdateCellReceive = updateCellReceive(channelSegment, i, j, orCreateCancellableContinuation);
            if (objUpdateCellReceive != BufferedChannelKt.SUSPEND) {
                KFunction kFunctionBindCancellationFun = null;
                kFunctionBindCancellationFun = null;
                if (objUpdateCellReceive == BufferedChannelKt.FAILED) {
                    if (j < getSendersCounter$kotlinx_coroutines_core()) {
                        channelSegment.cleanPrev();
                    }
                    ChannelSegment channelSegment3 = (ChannelSegment) getReceiveSegment$volatile$FU().get(this);
                    while (true) {
                        if (isClosedForReceive()) {
                            onClosedReceiveOnNoWaiterSuspend(orCreateCancellableContinuation);
                            break;
                        }
                        long andIncrement = getReceivers$volatile$FU().getAndIncrement(this);
                        int i2 = BufferedChannelKt.SEGMENT_SIZE;
                        long j2 = andIncrement / ((long) i2);
                        int i3 = (int) (andIncrement % ((long) i2));
                        if (channelSegment3.f1546id != j2) {
                            ChannelSegment channelSegmentFindSegmentReceive = findSegmentReceive(j2, channelSegment3);
                            if (channelSegmentFindSegmentReceive != null) {
                                channelSegment2 = channelSegmentFindSegmentReceive;
                            }
                        } else {
                            channelSegment2 = channelSegment3;
                        }
                        objUpdateCellReceive = updateCellReceive(channelSegment2, i3, andIncrement, orCreateCancellableContinuation);
                        ChannelSegment channelSegment4 = channelSegment2;
                        if (objUpdateCellReceive != BufferedChannelKt.SUSPEND) {
                            if (objUpdateCellReceive == BufferedChannelKt.FAILED) {
                                if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                                    channelSegment4.cleanPrev();
                                }
                                channelSegment3 = channelSegment4;
                            } else {
                                if (objUpdateCellReceive == BufferedChannelKt.SUSPEND_NO_WAITER) {
                                    throw new IllegalStateException("unexpected");
                                }
                                channelSegment4.cleanPrev();
                                Function1 function1 = this.onUndeliveredElement;
                                if (function1 != null) {
                                    kFunctionBindCancellationFun = bindCancellationFun(function1);
                                }
                            }
                        } else {
                            CancellableContinuationImpl cancellableContinuationImpl = OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(orCreateCancellableContinuation) ? orCreateCancellableContinuation : null;
                            if (cancellableContinuationImpl != null) {
                                prepareReceiverForSuspension(cancellableContinuationImpl, channelSegment4, i3);
                            }
                        }
                    }
                } else {
                    channelSegment.cleanPrev();
                    Function1 function12 = this.onUndeliveredElement;
                    if (function12 != null) {
                        kFunctionBindCancellationFun = bindCancellationFun(function12);
                    }
                }
                orCreateCancellableContinuation.resume(objUpdateCellReceive, (Function3) kFunctionBindCancellationFun);
            } else {
                prepareReceiverForSuspension(orCreateCancellableContinuation, channelSegment, i);
            }
            Object result = orCreateCancellableContinuation.getResult();
            if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return result;
        } catch (Throwable th) {
            orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0102 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0103  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final Object sendOnNoWaiterSuspend(ChannelSegment channelSegment, int i, Object obj, long j, Continuation continuation) {
        Unit unit;
        Object result;
        ChannelSegment channelSegmentFindSegmentSend;
        CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt.intercepted(continuation));
        try {
            int iUpdateCellSend = updateCellSend(channelSegment, i, obj, j, orCreateCancellableContinuation, false);
            if (iUpdateCellSend == 0) {
                channelSegment.cleanPrev();
                Result.Companion companion = Result.Companion;
                unit = Unit.INSTANCE;
            } else {
                if (iUpdateCellSend != 1) {
                    if (iUpdateCellSend != 2) {
                        if (iUpdateCellSend != 4) {
                            String str = "unexpected";
                            if (iUpdateCellSend != 5) {
                                throw new IllegalStateException("unexpected");
                            }
                            channelSegment.cleanPrev();
                            ChannelSegment channelSegment2 = (ChannelSegment) sendSegment$volatile$FU.get(this);
                            while (true) {
                                long andIncrement = sendersAndCloseStatus$volatile$FU.getAndIncrement(this);
                                long j2 = 1152921504606846975L & andIncrement;
                                boolean zIsClosedForSend0 = isClosedForSend0(andIncrement);
                                int i2 = BufferedChannelKt.SEGMENT_SIZE;
                                long j3 = j2 / ((long) i2);
                                int i3 = (int) (j2 % ((long) i2));
                                String str2 = str;
                                if (channelSegment2.f1546id != j3) {
                                    channelSegmentFindSegmentSend = findSegmentSend(j3, channelSegment2);
                                    if (channelSegmentFindSegmentSend == null) {
                                        if (zIsClosedForSend0) {
                                            break;
                                        }
                                        str = str2;
                                    }
                                } else {
                                    channelSegmentFindSegmentSend = channelSegment2;
                                }
                                int iUpdateCellSend2 = updateCellSend(channelSegmentFindSegmentSend, i3, obj, j2, orCreateCancellableContinuation, zIsClosedForSend0);
                                if (iUpdateCellSend2 == 0) {
                                    channelSegmentFindSegmentSend.cleanPrev();
                                    Result.Companion companion2 = Result.Companion;
                                    unit = Unit.INSTANCE;
                                    break;
                                }
                                if (iUpdateCellSend2 == 1) {
                                    Result.Companion companion3 = Result.Companion;
                                    unit = Unit.INSTANCE;
                                    break;
                                }
                                if (iUpdateCellSend2 != 2) {
                                    if (iUpdateCellSend2 == 3) {
                                        throw new IllegalStateException(str2);
                                    }
                                    if (iUpdateCellSend2 != 4) {
                                        if (iUpdateCellSend2 == 5) {
                                            channelSegmentFindSegmentSend.cleanPrev();
                                        }
                                        str = str2;
                                        channelSegment2 = channelSegmentFindSegmentSend;
                                    } else if (j2 < getReceiversCounter$kotlinx_coroutines_core()) {
                                        channelSegmentFindSegmentSend.cleanPrev();
                                    }
                                } else if (zIsClosedForSend0) {
                                    channelSegmentFindSegmentSend.onSlotCleaned();
                                } else {
                                    CancellableContinuationImpl cancellableContinuationImpl = OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(orCreateCancellableContinuation) ? orCreateCancellableContinuation : null;
                                    if (cancellableContinuationImpl != null) {
                                        prepareSenderForSuspension(cancellableContinuationImpl, channelSegmentFindSegmentSend, i3);
                                    }
                                }
                            }
                        } else if (j < getReceiversCounter$kotlinx_coroutines_core()) {
                            channelSegment.cleanPrev();
                        }
                        onClosedSendOnNoWaiterSuspend(obj, orCreateCancellableContinuation);
                    } else {
                        prepareSenderForSuspension(orCreateCancellableContinuation, channelSegment, i);
                    }
                    result = orCreateCancellableContinuation.getResult();
                    if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(continuation);
                    }
                    return result != IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
                }
                Result.Companion companion4 = Result.Companion;
                unit = Unit.INSTANCE;
            }
            orCreateCancellableContinuation.resumeWith(Result.m3604constructorimpl(unit));
            result = orCreateCancellableContinuation.getResult();
            if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            }
            if (result != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            }
        } catch (Throwable th) {
            orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th;
        }
    }

    private final int updateCellSendSlow(ChannelSegment channelSegment, int i, Object obj, long j, Object obj2, boolean z) {
        while (true) {
            Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
            if (state$kotlinx_coroutines_core != null) {
                if (state$kotlinx_coroutines_core != BufferedChannelKt.IN_BUFFER) {
                    if (state$kotlinx_coroutines_core != BufferedChannelKt.INTERRUPTED_RCV) {
                        if (state$kotlinx_coroutines_core == BufferedChannelKt.POISONED) {
                            channelSegment.cleanElement$kotlinx_coroutines_core(i);
                            return 5;
                        }
                        if (state$kotlinx_coroutines_core == BufferedChannelKt.getCHANNEL_CLOSED()) {
                            channelSegment.cleanElement$kotlinx_coroutines_core(i);
                            completeCloseOrCancel();
                            return 4;
                        }
                        channelSegment.cleanElement$kotlinx_coroutines_core(i);
                        if (state$kotlinx_coroutines_core instanceof WaiterEB) {
                            state$kotlinx_coroutines_core = ((WaiterEB) state$kotlinx_coroutines_core).waiter;
                        }
                        if (tryResumeReceiver(state$kotlinx_coroutines_core, obj)) {
                            channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.DONE_RCV);
                            onReceiveDequeued();
                            return 0;
                        }
                        if (channelSegment.getAndSetState$kotlinx_coroutines_core(i, BufferedChannelKt.INTERRUPTED_RCV) != BufferedChannelKt.INTERRUPTED_RCV) {
                            channelSegment.onCancelledRequest(i, true);
                        }
                        return 5;
                    }
                    channelSegment.cleanElement$kotlinx_coroutines_core(i);
                    return 5;
                }
                if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.BUFFERED)) {
                    return 1;
                }
            } else if (!bufferOrRendezvousSend(j) || z) {
                if (z) {
                    if (channelSegment.casState$kotlinx_coroutines_core(i, null, BufferedChannelKt.INTERRUPTED_SEND)) {
                        channelSegment.onCancelledRequest(i, false);
                        return 4;
                    }
                } else {
                    if (obj2 == null) {
                        return 3;
                    }
                    if (channelSegment.casState$kotlinx_coroutines_core(i, null, obj2)) {
                        return 2;
                    }
                }
            } else if (channelSegment.casState$kotlinx_coroutines_core(i, null, BufferedChannelKt.BUFFERED)) {
                return 1;
            }
        }
    }

    private final boolean shouldSendSuspend(long j) {
        if (isClosedForSend0(j)) {
            return false;
        }
        return !bufferOrRendezvousSend(j & 1152921504606846975L);
    }

    private final boolean bufferOrRendezvousSend(long j) {
        return j < getBufferEndCounter() || j < getReceiversCounter$kotlinx_coroutines_core() + ((long) this.capacity);
    }

    private final boolean tryResumeReceiver(Object obj, Object obj2) {
        if (obj instanceof SelectInstance) {
            return ((SelectInstance) obj).trySelect(this, obj2);
        }
        if (obj instanceof ReceiveCatching) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>");
            CancellableContinuationImpl cancellableContinuationImpl = ((ReceiveCatching) obj).cont;
            ChannelResult channelResultM3673boximpl = ChannelResult.m3673boximpl(ChannelResult.Companion.m3686successJP2dKIU(obj2));
            Function1 function1 = this.onUndeliveredElement;
            return BufferedChannelKt.tryResume0(cancellableContinuationImpl, channelResultM3673boximpl, (Function3) (function1 != null ? bindCancellationFunResult(function1) : null));
        }
        if (obj instanceof BufferedChannelIterator) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            return ((BufferedChannelIterator) obj).tryResumeHasNext(obj2);
        }
        if (obj instanceof CancellableContinuation) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
            CancellableContinuation cancellableContinuation = (CancellableContinuation) obj;
            Function1 function12 = this.onUndeliveredElement;
            return BufferedChannelKt.tryResume0(cancellableContinuation, obj2, (Function3) (function12 != null ? bindCancellationFun(function12) : null));
        }
        throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
    }

    static /* synthetic */ Object receive$suspendImpl(BufferedChannel bufferedChannel, Continuation continuation) throws Throwable {
        ChannelSegment channelSegment;
        ChannelSegment channelSegment2 = (ChannelSegment) getReceiveSegment$volatile$FU().get(bufferedChannel);
        while (!bufferedChannel.isClosedForReceive()) {
            long andIncrement = getReceivers$volatile$FU().getAndIncrement(bufferedChannel);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j = andIncrement / ((long) i);
            int i2 = (int) (andIncrement % ((long) i));
            if (channelSegment2.f1546id != j) {
                ChannelSegment channelSegmentFindSegmentReceive = bufferedChannel.findSegmentReceive(j, channelSegment2);
                if (channelSegmentFindSegmentReceive == null) {
                    continue;
                } else {
                    channelSegment = channelSegmentFindSegmentReceive;
                }
            } else {
                channelSegment = channelSegment2;
            }
            BufferedChannel bufferedChannel2 = bufferedChannel;
            Object objUpdateCellReceive = bufferedChannel2.updateCellReceive(channelSegment, i2, andIncrement, null);
            if (objUpdateCellReceive != BufferedChannelKt.SUSPEND) {
                if (objUpdateCellReceive != BufferedChannelKt.FAILED) {
                    if (objUpdateCellReceive == BufferedChannelKt.SUSPEND_NO_WAITER) {
                        return bufferedChannel2.receiveOnNoWaiterSuspend(channelSegment, i2, andIncrement, continuation);
                    }
                    channelSegment.cleanPrev();
                    return objUpdateCellReceive;
                }
                if (andIncrement < bufferedChannel2.getSendersCounter$kotlinx_coroutines_core()) {
                    channelSegment.cleanPrev();
                }
                bufferedChannel = bufferedChannel2;
                channelSegment2 = channelSegment;
            } else {
                throw new IllegalStateException("unexpected");
            }
        }
        throw StackTraceRecoveryKt.recoverStackTrace(bufferedChannel.getReceiveException());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void prepareReceiverForSuspension(Waiter waiter, ChannelSegment channelSegment, int i) {
        onReceiveEnqueued();
        waiter.invokeOnCancellation(channelSegment, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onClosedReceiveOnNoWaiterSuspend(CancellableContinuation cancellableContinuation) {
        Result.Companion companion = Result.Companion;
        cancellableContinuation.resumeWith(Result.m3604constructorimpl(ResultKt.createFailure(getReceiveException())));
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /* JADX INFO: renamed from: receiveCatching-JP2dKIU$suspendImpl, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static /* synthetic */ Object m3666receiveCatchingJP2dKIU$suspendImpl(BufferedChannel bufferedChannel, Continuation continuation) throws Throwable {
        BufferedChannel$receiveCatching$1 bufferedChannel$receiveCatching$1;
        ChannelSegment channelSegment;
        if (continuation instanceof BufferedChannel$receiveCatching$1) {
            bufferedChannel$receiveCatching$1 = (BufferedChannel$receiveCatching$1) continuation;
            int i = bufferedChannel$receiveCatching$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                bufferedChannel$receiveCatching$1.label = i - Integer.MIN_VALUE;
            } else {
                bufferedChannel$receiveCatching$1 = new BufferedChannel$receiveCatching$1(bufferedChannel, continuation);
            }
        }
        BufferedChannel$receiveCatching$1 bufferedChannel$receiveCatching$12 = bufferedChannel$receiveCatching$1;
        Object obj = bufferedChannel$receiveCatching$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = bufferedChannel$receiveCatching$12.label;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return ((ChannelResult) obj).m3683unboximpl();
        }
        ResultKt.throwOnFailure(obj);
        ChannelSegment channelSegment2 = (ChannelSegment) getReceiveSegment$volatile$FU().get(bufferedChannel);
        while (!bufferedChannel.isClosedForReceive()) {
            long andIncrement = getReceivers$volatile$FU().getAndIncrement(bufferedChannel);
            int i3 = BufferedChannelKt.SEGMENT_SIZE;
            long j = andIncrement / ((long) i3);
            int i4 = (int) (andIncrement % ((long) i3));
            if (channelSegment2.f1546id != j) {
                ChannelSegment channelSegmentFindSegmentReceive = bufferedChannel.findSegmentReceive(j, channelSegment2);
                if (channelSegmentFindSegmentReceive == null) {
                    continue;
                } else {
                    channelSegment = channelSegmentFindSegmentReceive;
                }
            } else {
                channelSegment = channelSegment2;
            }
            BufferedChannel bufferedChannel2 = bufferedChannel;
            Object objUpdateCellReceive = bufferedChannel2.updateCellReceive(channelSegment, i4, andIncrement, null);
            if (objUpdateCellReceive != BufferedChannelKt.SUSPEND) {
                if (objUpdateCellReceive != BufferedChannelKt.FAILED) {
                    if (objUpdateCellReceive == BufferedChannelKt.SUSPEND_NO_WAITER) {
                        bufferedChannel$receiveCatching$12.label = 1;
                        Object objM3667receiveCatchingOnNoWaiterSuspendGKJJFZk = bufferedChannel2.m3667receiveCatchingOnNoWaiterSuspendGKJJFZk(channelSegment, i4, andIncrement, bufferedChannel$receiveCatching$12);
                        return objM3667receiveCatchingOnNoWaiterSuspendGKJJFZk == coroutine_suspended ? coroutine_suspended : objM3667receiveCatchingOnNoWaiterSuspendGKJJFZk;
                    }
                    channelSegment.cleanPrev();
                    return ChannelResult.Companion.m3686successJP2dKIU(objUpdateCellReceive);
                }
                if (andIncrement < bufferedChannel2.getSendersCounter$kotlinx_coroutines_core()) {
                    channelSegment.cleanPrev();
                }
                bufferedChannel = bufferedChannel2;
                channelSegment2 = channelSegment;
            } else {
                throw new IllegalStateException("unexpected");
            }
        }
        return ChannelResult.Companion.m3684closedJP2dKIU(bufferedChannel.getCloseCause());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX INFO: renamed from: receiveCatchingOnNoWaiterSuspend-GKJJFZk, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m3667receiveCatchingOnNoWaiterSuspendGKJJFZk(ChannelSegment channelSegment, int i, long j, Continuation continuation) throws Throwable {
        BufferedChannel$receiveCatchingOnNoWaiterSuspend$1 bufferedChannel$receiveCatchingOnNoWaiterSuspend$1;
        ReceiveCatching receiveCatching;
        ChannelResult channelResultM3673boximpl;
        ChannelSegment channelSegment2;
        if (continuation instanceof BufferedChannel$receiveCatchingOnNoWaiterSuspend$1) {
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1 = (BufferedChannel$receiveCatchingOnNoWaiterSuspend$1) continuation;
            int i2 = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.label = i2 - Integer.MIN_VALUE;
            } else {
                bufferedChannel$receiveCatchingOnNoWaiterSuspend$1 = new BufferedChannel$receiveCatchingOnNoWaiterSuspend$1(this, continuation);
            }
        }
        Object result = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.label;
        if (i3 == 0) {
            ResultKt.throwOnFailure(result);
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.L$0 = this;
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.L$1 = channelSegment;
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.I$0 = i;
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.J$0 = j;
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.label = 1;
            CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt.intercepted(bufferedChannel$receiveCatchingOnNoWaiterSuspend$1));
            try {
                Intrinsics.checkNotNull(orCreateCancellableContinuation, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlinx.coroutines.channels.ChannelResult<E of kotlinx.coroutines.channels.BufferedChannel>>");
                receiveCatching = new ReceiveCatching(orCreateCancellableContinuation);
            } catch (Throwable th) {
                th = th;
            }
            try {
                Object objUpdateCellReceive = updateCellReceive(channelSegment, i, j, receiveCatching);
                if (objUpdateCellReceive != BufferedChannelKt.SUSPEND) {
                    KFunction kFunctionBindCancellationFunResult = null;
                    if (objUpdateCellReceive == BufferedChannelKt.FAILED) {
                        if (j < getSendersCounter$kotlinx_coroutines_core()) {
                            channelSegment.cleanPrev();
                        }
                        ChannelSegment channelSegment3 = (ChannelSegment) getReceiveSegment$volatile$FU().get(this);
                        while (true) {
                            if (isClosedForReceive()) {
                                onClosedReceiveCatchingOnNoWaiterSuspend(orCreateCancellableContinuation);
                                break;
                            }
                            long andIncrement = getReceivers$volatile$FU().getAndIncrement(this);
                            int i4 = BufferedChannelKt.SEGMENT_SIZE;
                            long j2 = andIncrement / ((long) i4);
                            int i5 = (int) (andIncrement % ((long) i4));
                            if (channelSegment3.f1546id != j2) {
                                ChannelSegment channelSegmentFindSegmentReceive = findSegmentReceive(j2, channelSegment3);
                                if (channelSegmentFindSegmentReceive != null) {
                                    channelSegment2 = channelSegmentFindSegmentReceive;
                                }
                            } else {
                                channelSegment2 = channelSegment3;
                            }
                            Object objUpdateCellReceive2 = updateCellReceive(channelSegment2, i5, andIncrement, receiveCatching);
                            ChannelSegment channelSegment4 = channelSegment2;
                            if (objUpdateCellReceive2 != BufferedChannelKt.SUSPEND) {
                                if (objUpdateCellReceive2 == BufferedChannelKt.FAILED) {
                                    if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                                        channelSegment4.cleanPrev();
                                    }
                                    channelSegment3 = channelSegment4;
                                } else {
                                    if (objUpdateCellReceive2 == BufferedChannelKt.SUSPEND_NO_WAITER) {
                                        throw new IllegalStateException("unexpected");
                                    }
                                    channelSegment4.cleanPrev();
                                    channelResultM3673boximpl = ChannelResult.m3673boximpl(ChannelResult.Companion.m3686successJP2dKIU(objUpdateCellReceive2));
                                    Function1 function1 = this.onUndeliveredElement;
                                    if (function1 != null) {
                                        kFunctionBindCancellationFunResult = bindCancellationFunResult(function1);
                                    }
                                }
                            } else {
                                prepareReceiverForSuspension(receiveCatching, channelSegment4, i5);
                                break;
                            }
                        }
                    } else {
                        channelSegment.cleanPrev();
                        channelResultM3673boximpl = ChannelResult.m3673boximpl(ChannelResult.Companion.m3686successJP2dKIU(objUpdateCellReceive));
                        Function1 function12 = this.onUndeliveredElement;
                        if (function12 != null) {
                            kFunctionBindCancellationFunResult = bindCancellationFunResult(function12);
                        }
                    }
                    orCreateCancellableContinuation.resume(channelResultM3673boximpl, (Function3) kFunctionBindCancellationFunResult);
                } else {
                    prepareReceiverForSuspension(receiveCatching, channelSegment, i);
                }
                result = orCreateCancellableContinuation.getResult();
                if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(bufferedChannel$receiveCatchingOnNoWaiterSuspend$1);
                }
                if (result == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } catch (Throwable th2) {
                th = th2;
                Throwable th3 = th;
                orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                throw th3;
            }
        } else {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(result);
        }
        return ((ChannelResult) result).m3683unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onClosedReceiveCatchingOnNoWaiterSuspend(CancellableContinuation cancellableContinuation) {
        Result.Companion companion = Result.Companion;
        cancellableContinuation.resumeWith(Result.m3604constructorimpl(ChannelResult.m3673boximpl(ChannelResult.Companion.m3684closedJP2dKIU(getCloseCause()))));
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    /* JADX INFO: renamed from: tryReceive-PtdJZtk, reason: not valid java name */
    public Object mo3669tryReceivePtdJZtk() {
        ChannelSegment channelSegmentFindSegmentReceive;
        long j = receivers$volatile$FU.get(this);
        long j2 = sendersAndCloseStatus$volatile$FU.get(this);
        if (isClosedForReceive0(j2)) {
            return ChannelResult.Companion.m3684closedJP2dKIU(getCloseCause());
        }
        if (j < (j2 & 1152921504606846975L)) {
            Object obj = BufferedChannelKt.INTERRUPTED_RCV;
            ChannelSegment channelSegment = (ChannelSegment) getReceiveSegment$volatile$FU().get(this);
            while (!isClosedForReceive()) {
                long andIncrement = getReceivers$volatile$FU().getAndIncrement(this);
                int i = BufferedChannelKt.SEGMENT_SIZE;
                long j3 = andIncrement / ((long) i);
                int i2 = (int) (andIncrement % ((long) i));
                if (channelSegment.f1546id != j3) {
                    channelSegmentFindSegmentReceive = findSegmentReceive(j3, channelSegment);
                    if (channelSegmentFindSegmentReceive == null) {
                        continue;
                    }
                } else {
                    channelSegmentFindSegmentReceive = channelSegment;
                }
                Object objUpdateCellReceive = updateCellReceive(channelSegmentFindSegmentReceive, i2, andIncrement, obj);
                if (objUpdateCellReceive != BufferedChannelKt.SUSPEND) {
                    if (objUpdateCellReceive != BufferedChannelKt.FAILED) {
                        if (objUpdateCellReceive == BufferedChannelKt.SUSPEND_NO_WAITER) {
                            throw new IllegalStateException("unexpected");
                        }
                        channelSegmentFindSegmentReceive.cleanPrev();
                        return ChannelResult.Companion.m3686successJP2dKIU(objUpdateCellReceive);
                    }
                    if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                        channelSegmentFindSegmentReceive.cleanPrev();
                    }
                    channelSegment = channelSegmentFindSegmentReceive;
                } else {
                    Waiter waiter = obj instanceof Waiter ? (Waiter) obj : null;
                    if (waiter != null) {
                        prepareReceiverForSuspension(waiter, channelSegmentFindSegmentReceive, i2);
                    }
                    waitExpandBufferCompletion$kotlinx_coroutines_core(andIncrement);
                    channelSegmentFindSegmentReceive.onSlotCleaned();
                    return ChannelResult.Companion.m3685failurePtdJZtk();
                }
            }
            return ChannelResult.Companion.m3684closedJP2dKIU(getCloseCause());
        }
        return ChannelResult.Companion.m3685failurePtdJZtk();
    }

    protected final void dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(long j) {
        ChannelSegment channelSegmentFindSegmentReceive;
        UndeliveredElementException undeliveredElementExceptionCallUndeliveredElementCatchingException$default;
        ChannelSegment channelSegment = (ChannelSegment) receiveSegment$volatile$FU.get(this);
        while (true) {
            long j2 = receivers$volatile$FU.get(this);
            if (j < Math.max(((long) this.capacity) + j2, getBufferEndCounter())) {
                return;
            }
            if (receivers$volatile$FU.compareAndSet(this, j2, 1 + j2)) {
                int i = BufferedChannelKt.SEGMENT_SIZE;
                long j3 = j2 / ((long) i);
                int i2 = (int) (j2 % ((long) i));
                if (channelSegment.f1546id != j3) {
                    channelSegmentFindSegmentReceive = findSegmentReceive(j3, channelSegment);
                    if (channelSegmentFindSegmentReceive == null) {
                        continue;
                    }
                } else {
                    channelSegmentFindSegmentReceive = channelSegment;
                }
                Object objUpdateCellReceive = updateCellReceive(channelSegmentFindSegmentReceive, i2, j2, null);
                if (objUpdateCellReceive != BufferedChannelKt.FAILED) {
                    channelSegmentFindSegmentReceive.cleanPrev();
                    Function1 function1 = this.onUndeliveredElement;
                    if (function1 != null && (undeliveredElementExceptionCallUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(function1, objUpdateCellReceive, null, 2, null)) != null) {
                        throw undeliveredElementExceptionCallUndeliveredElementCatchingException$default;
                    }
                } else if (j2 < getSendersCounter$kotlinx_coroutines_core()) {
                    channelSegmentFindSegmentReceive.cleanPrev();
                }
                channelSegment = channelSegmentFindSegmentReceive;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void registerSelectForReceive(SelectInstance selectInstance, Object obj) {
        ChannelSegment channelSegment;
        ChannelSegment channelSegment2 = (ChannelSegment) getReceiveSegment$volatile$FU().get(this);
        while (!isClosedForReceive()) {
            long andIncrement = getReceivers$volatile$FU().getAndIncrement(this);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j = andIncrement / ((long) i);
            int i2 = (int) (andIncrement % ((long) i));
            if (channelSegment2.f1546id != j) {
                ChannelSegment channelSegmentFindSegmentReceive = findSegmentReceive(j, channelSegment2);
                if (channelSegmentFindSegmentReceive == null) {
                    continue;
                } else {
                    channelSegment = channelSegmentFindSegmentReceive;
                }
            } else {
                channelSegment = channelSegment2;
            }
            SelectInstance selectInstance2 = selectInstance;
            Object objUpdateCellReceive = updateCellReceive(channelSegment, i2, andIncrement, selectInstance2);
            channelSegment2 = channelSegment;
            if (objUpdateCellReceive != BufferedChannelKt.SUSPEND) {
                if (objUpdateCellReceive != BufferedChannelKt.FAILED) {
                    if (objUpdateCellReceive == BufferedChannelKt.SUSPEND_NO_WAITER) {
                        throw new IllegalStateException("unexpected");
                    }
                    channelSegment2.cleanPrev();
                    selectInstance2.selectInRegistrationPhase(objUpdateCellReceive);
                    return;
                }
                if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                    channelSegment2.cleanPrev();
                }
                selectInstance = selectInstance2;
            } else {
                Waiter waiter = selectInstance2 instanceof Waiter ? (Waiter) selectInstance2 : null;
                if (waiter != null) {
                    prepareReceiverForSuspension(waiter, channelSegment2, i2);
                    return;
                }
                return;
            }
        }
        onClosedSelectOnReceive(selectInstance);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object updateCellReceive(ChannelSegment channelSegment, int i, long j, Object obj) {
        Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
        if (state$kotlinx_coroutines_core == null) {
            if (j >= (sendersAndCloseStatus$volatile$FU.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return BufferedChannelKt.SUSPEND_NO_WAITER;
                }
                if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, obj)) {
                    expandBuffer();
                    return BufferedChannelKt.SUSPEND;
                }
            }
        } else if (state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED && channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.DONE_RCV)) {
            expandBuffer();
            return channelSegment.retrieveElement$kotlinx_coroutines_core(i);
        }
        return updateCellReceiveSlow(channelSegment, i, j, obj);
    }

    private final Object updateCellReceiveSlow(ChannelSegment channelSegment, int i, long j, Object obj) {
        while (true) {
            Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
            if (state$kotlinx_coroutines_core == null || state$kotlinx_coroutines_core == BufferedChannelKt.IN_BUFFER) {
                if (j < (sendersAndCloseStatus$volatile$FU.get(this) & 1152921504606846975L)) {
                    if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.POISONED)) {
                        expandBuffer();
                        return BufferedChannelKt.FAILED;
                    }
                } else {
                    if (obj == null) {
                        return BufferedChannelKt.SUSPEND_NO_WAITER;
                    }
                    if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, obj)) {
                        expandBuffer();
                        return BufferedChannelKt.SUSPEND;
                    }
                }
            } else if (state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED) {
                if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.DONE_RCV)) {
                    expandBuffer();
                    return channelSegment.retrieveElement$kotlinx_coroutines_core(i);
                }
            } else {
                if (state$kotlinx_coroutines_core != BufferedChannelKt.INTERRUPTED_SEND && state$kotlinx_coroutines_core != BufferedChannelKt.POISONED) {
                    if (state$kotlinx_coroutines_core != BufferedChannelKt.getCHANNEL_CLOSED()) {
                        if (state$kotlinx_coroutines_core != BufferedChannelKt.RESUMING_BY_EB && channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.RESUMING_BY_RCV)) {
                            boolean z = state$kotlinx_coroutines_core instanceof WaiterEB;
                            if (z) {
                                state$kotlinx_coroutines_core = ((WaiterEB) state$kotlinx_coroutines_core).waiter;
                            }
                            if (tryResumeSender(state$kotlinx_coroutines_core, channelSegment, i)) {
                                channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.DONE_RCV);
                                expandBuffer();
                                return channelSegment.retrieveElement$kotlinx_coroutines_core(i);
                            }
                            channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.INTERRUPTED_SEND);
                            channelSegment.onCancelledRequest(i, false);
                            if (z) {
                                expandBuffer();
                            }
                            return BufferedChannelKt.FAILED;
                        }
                    } else {
                        expandBuffer();
                        return BufferedChannelKt.FAILED;
                    }
                }
                return BufferedChannelKt.FAILED;
            }
        }
    }

    private final boolean tryResumeSender(Object obj, ChannelSegment channelSegment, int i) {
        if (obj instanceof CancellableContinuation) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            return BufferedChannelKt.tryResume0$default((CancellableContinuation) obj, Unit.INSTANCE, null, 2, null);
        }
        if (obj instanceof SelectInstance) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
            TrySelectDetailedResult trySelectDetailedResultTrySelectDetailed = ((SelectImplementation) obj).trySelectDetailed(this, Unit.INSTANCE);
            if (trySelectDetailedResultTrySelectDetailed == TrySelectDetailedResult.REREGISTER) {
                channelSegment.cleanElement$kotlinx_coroutines_core(i);
            }
            return trySelectDetailedResultTrySelectDetailed == TrySelectDetailedResult.SUCCESSFUL;
        }
        throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
    }

    private final void expandBuffer() {
        if (isRendezvousOrUnlimited()) {
            return;
        }
        ChannelSegment channelSegment = (ChannelSegment) bufferEndSegment$volatile$FU.get(this);
        while (true) {
            long andIncrement = bufferEnd$volatile$FU.getAndIncrement(this);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j = andIncrement / ((long) i);
            if (getSendersCounter$kotlinx_coroutines_core() <= andIncrement) {
                if (channelSegment.f1546id < j && channelSegment.getNext() != null) {
                    moveSegmentBufferEndToSpecifiedOrLast(j, channelSegment);
                }
                incCompletedExpandBufferAttempts$default(this, 0L, 1, null);
                return;
            }
            if (channelSegment.f1546id != j) {
                ChannelSegment channelSegmentFindSegmentBufferEnd = findSegmentBufferEnd(j, channelSegment, andIncrement);
                if (channelSegmentFindSegmentBufferEnd == null) {
                    continue;
                } else {
                    channelSegment = channelSegmentFindSegmentBufferEnd;
                }
            }
            if (updateCellExpandBuffer(channelSegment, (int) (andIncrement % ((long) i)), andIncrement)) {
                incCompletedExpandBufferAttempts$default(this, 0L, 1, null);
                return;
            }
            incCompletedExpandBufferAttempts$default(this, 0L, 1, null);
        }
    }

    private final boolean updateCellExpandBuffer(ChannelSegment channelSegment, int i, long j) {
        Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
        if ((state$kotlinx_coroutines_core instanceof Waiter) && j >= receivers$volatile$FU.get(this) && channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.RESUMING_BY_EB)) {
            if (!tryResumeSender(state$kotlinx_coroutines_core, channelSegment, i)) {
                channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.INTERRUPTED_SEND);
                channelSegment.onCancelledRequest(i, false);
                return false;
            }
            channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.BUFFERED);
            return true;
        }
        return updateCellExpandBufferSlow(channelSegment, i, j);
    }

    private final boolean updateCellExpandBufferSlow(ChannelSegment channelSegment, int i, long j) {
        while (true) {
            Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
            if (state$kotlinx_coroutines_core instanceof Waiter) {
                if (j >= receivers$volatile$FU.get(this)) {
                    if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.RESUMING_BY_EB)) {
                        if (!tryResumeSender(state$kotlinx_coroutines_core, channelSegment, i)) {
                            channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.INTERRUPTED_SEND);
                            channelSegment.onCancelledRequest(i, false);
                            return false;
                        }
                        channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.BUFFERED);
                        return true;
                    }
                } else if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, new WaiterEB((Waiter) state$kotlinx_coroutines_core))) {
                    return true;
                }
            } else {
                if (state$kotlinx_coroutines_core == BufferedChannelKt.INTERRUPTED_SEND) {
                    return false;
                }
                if (state$kotlinx_coroutines_core == null) {
                    if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.IN_BUFFER)) {
                        return true;
                    }
                } else {
                    if (state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED || state$kotlinx_coroutines_core == BufferedChannelKt.POISONED || state$kotlinx_coroutines_core == BufferedChannelKt.DONE_RCV || state$kotlinx_coroutines_core == BufferedChannelKt.INTERRUPTED_RCV || state$kotlinx_coroutines_core == BufferedChannelKt.getCHANNEL_CLOSED()) {
                        return true;
                    }
                    if (state$kotlinx_coroutines_core != BufferedChannelKt.RESUMING_BY_RCV) {
                        throw new IllegalStateException(("Unexpected cell state: " + state$kotlinx_coroutines_core).toString());
                    }
                }
            }
        }
    }

    static /* synthetic */ void incCompletedExpandBufferAttempts$default(BufferedChannel bufferedChannel, long j, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts");
        }
        if ((i & 1) != 0) {
            j = 1;
        }
        bufferedChannel.incCompletedExpandBufferAttempts(j);
    }

    private final void incCompletedExpandBufferAttempts(long j) {
        if ((completedExpandBuffersAndPauseFlag$volatile$FU.addAndGet(this, j) & 4611686018427387904L) != 0) {
            while ((completedExpandBuffersAndPauseFlag$volatile$FU.get(this) & 4611686018427387904L) != 0) {
            }
        }
    }

    public final void waitExpandBufferCompletion$kotlinx_coroutines_core(long j) {
        BufferedChannel bufferedChannel = this;
        if (bufferedChannel.isRendezvousOrUnlimited()) {
            return;
        }
        while (bufferedChannel.getBufferEndCounter() <= j) {
            bufferedChannel = this;
        }
        int i = BufferedChannelKt.EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS;
        for (int i2 = 0; i2 < i; i2++) {
            long bufferEndCounter = bufferedChannel.getBufferEndCounter();
            if (bufferEndCounter == (4611686018427387903L & completedExpandBuffersAndPauseFlag$volatile$FU.get(bufferedChannel)) && bufferEndCounter == bufferedChannel.getBufferEndCounter()) {
                return;
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = completedExpandBuffersAndPauseFlag$volatile$FU;
        while (true) {
            long j2 = atomicLongFieldUpdater.get(bufferedChannel);
            if (atomicLongFieldUpdater.compareAndSet(bufferedChannel, j2, BufferedChannelKt.constructEBCompletedAndPauseFlag(j2 & 4611686018427387903L, true))) {
                break;
            } else {
                bufferedChannel = this;
            }
        }
        while (true) {
            long bufferEndCounter2 = bufferedChannel.getBufferEndCounter();
            long j3 = completedExpandBuffersAndPauseFlag$volatile$FU.get(bufferedChannel);
            long j4 = j3 & 4611686018427387903L;
            boolean z = (4611686018427387904L & j3) != 0;
            if (bufferEndCounter2 == j4 && bufferEndCounter2 == bufferedChannel.getBufferEndCounter()) {
                break;
            }
            if (z) {
                bufferedChannel = this;
            } else {
                bufferedChannel = this;
                completedExpandBuffersAndPauseFlag$volatile$FU.compareAndSet(bufferedChannel, j3, BufferedChannelKt.constructEBCompletedAndPauseFlag(j4, true));
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater2 = completedExpandBuffersAndPauseFlag$volatile$FU;
        while (true) {
            long j5 = atomicLongFieldUpdater2.get(bufferedChannel);
            boolean zCompareAndSet = atomicLongFieldUpdater2.compareAndSet(bufferedChannel, j5, BufferedChannelKt.constructEBCompletedAndPauseFlag(j5 & 4611686018427387903L, false));
            AtomicLongFieldUpdater atomicLongFieldUpdater3 = atomicLongFieldUpdater2;
            if (zCompareAndSet) {
                return;
            }
            atomicLongFieldUpdater2 = atomicLongFieldUpdater3;
            bufferedChannel = this;
        }
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public SelectClause1 getOnReceive() {
        BufferedChannel$onReceive$1 bufferedChannel$onReceive$1 = BufferedChannel$onReceive$1.INSTANCE;
        Intrinsics.checkNotNull(bufferedChannel$onReceive$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onReceive$1, 3);
        BufferedChannel$onReceive$2 bufferedChannel$onReceive$2 = BufferedChannel$onReceive$2.INSTANCE;
        Intrinsics.checkNotNull(bufferedChannel$onReceive$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new SelectClause1Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onReceive$2, 3), this.onUndeliveredElementReceiveCancellationConstructor);
    }

    private final void onClosedSelectOnReceive(SelectInstance selectInstance) {
        selectInstance.selectInRegistrationPhase(BufferedChannelKt.getCHANNEL_CLOSED());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object processResultSelectReceive(Object obj, Object obj2) throws Throwable {
        if (obj2 != BufferedChannelKt.getCHANNEL_CLOSED()) {
            return obj2;
        }
        throw getReceiveException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onUndeliveredElementReceiveCancellationConstructor$lambda$57$lambda$56 */
    public static final Function3 m1089xa189d599(final BufferedChannel bufferedChannel, final SelectInstance selectInstance, Object obj, final Object obj2) {
        return new Function3() { // from class: kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj3, Object obj4, Object obj5) {
                return BufferedChannel.m1090xc6272352(obj2, bufferedChannel, selectInstance, (Throwable) obj3, obj4, (CoroutineContext) obj5);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onUndeliveredElementReceiveCancellationConstructor$lambda$57$lambda$56$lambda$55 */
    public static final Unit m1090xc6272352(Object obj, BufferedChannel bufferedChannel, SelectInstance selectInstance, Throwable th, Object obj2, CoroutineContext coroutineContext) {
        if (obj != BufferedChannelKt.getCHANNEL_CLOSED()) {
            OnUndeliveredElementKt.callUndeliveredElement(bufferedChannel.onUndeliveredElement, obj, selectInstance.getContext());
        }
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public ChannelIterator iterator() {
        return new BufferedChannelIterator();
    }

    private final class BufferedChannelIterator implements ChannelIterator, Waiter {
        private CancellableContinuationImpl continuation;
        private Object receiveResult = BufferedChannelKt.NO_RECEIVE_RESULT;

        public BufferedChannelIterator() {
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public Object hasNext(Continuation continuation) throws Throwable {
            ChannelSegment channelSegmentFindSegmentReceive;
            boolean zOnClosedHasNext = true;
            if (this.receiveResult == BufferedChannelKt.NO_RECEIVE_RESULT || this.receiveResult == BufferedChannelKt.getCHANNEL_CLOSED()) {
                BufferedChannel bufferedChannel = BufferedChannel.this;
                ChannelSegment channelSegment = (ChannelSegment) BufferedChannel.getReceiveSegment$volatile$FU().get(bufferedChannel);
                while (!bufferedChannel.isClosedForReceive()) {
                    long andIncrement = BufferedChannel.getReceivers$volatile$FU().getAndIncrement(bufferedChannel);
                    int i = BufferedChannelKt.SEGMENT_SIZE;
                    long j = andIncrement / ((long) i);
                    int i2 = (int) (andIncrement % ((long) i));
                    if (channelSegment.f1546id != j) {
                        channelSegmentFindSegmentReceive = bufferedChannel.findSegmentReceive(j, channelSegment);
                        if (channelSegmentFindSegmentReceive == null) {
                            continue;
                        }
                    } else {
                        channelSegmentFindSegmentReceive = channelSegment;
                    }
                    Object objUpdateCellReceive = bufferedChannel.updateCellReceive(channelSegmentFindSegmentReceive, i2, andIncrement, null);
                    if (objUpdateCellReceive != BufferedChannelKt.SUSPEND) {
                        if (objUpdateCellReceive == BufferedChannelKt.FAILED) {
                            if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                                channelSegmentFindSegmentReceive.cleanPrev();
                            }
                            channelSegment = channelSegmentFindSegmentReceive;
                        } else if (objUpdateCellReceive != BufferedChannelKt.SUSPEND_NO_WAITER) {
                            channelSegmentFindSegmentReceive.cleanPrev();
                            this.receiveResult = objUpdateCellReceive;
                        } else {
                            return hasNextOnNoWaiterSuspend(channelSegmentFindSegmentReceive, i2, andIncrement, continuation);
                        }
                    } else {
                        throw new IllegalStateException("unreachable");
                    }
                }
                zOnClosedHasNext = onClosedHasNext();
            }
            return Boxing.boxBoolean(zOnClosedHasNext);
        }

        private final boolean onClosedHasNext() throws Throwable {
            this.receiveResult = BufferedChannelKt.getCHANNEL_CLOSED();
            Throwable closeCause = BufferedChannel.this.getCloseCause();
            if (closeCause == null) {
                return false;
            }
            throw StackTraceRecoveryKt.recoverStackTrace(closeCause);
        }

        private final Object hasNextOnNoWaiterSuspend(ChannelSegment channelSegment, int i, long j, Continuation continuation) throws Throwable {
            Boolean boolBoxBoolean;
            Function1 function1;
            ChannelSegment channelSegmentFindSegmentReceive;
            BufferedChannel bufferedChannel = BufferedChannel.this;
            CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt.intercepted(continuation));
            try {
                this.continuation = orCreateCancellableContinuation;
                try {
                    Object objUpdateCellReceive = bufferedChannel.updateCellReceive(channelSegment, i, j, this);
                    if (objUpdateCellReceive != BufferedChannelKt.SUSPEND) {
                        Function3 function3BindCancellationFun = null;
                        if (objUpdateCellReceive == BufferedChannelKt.FAILED) {
                            if (j < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                                channelSegment.cleanPrev();
                            }
                            ChannelSegment channelSegment2 = (ChannelSegment) BufferedChannel.getReceiveSegment$volatile$FU().get(bufferedChannel);
                            while (true) {
                                if (!bufferedChannel.isClosedForReceive()) {
                                    long andIncrement = BufferedChannel.getReceivers$volatile$FU().getAndIncrement(bufferedChannel);
                                    int i2 = BufferedChannelKt.SEGMENT_SIZE;
                                    long j2 = andIncrement / ((long) i2);
                                    int i3 = (int) (andIncrement % ((long) i2));
                                    if (channelSegment2.f1546id != j2) {
                                        channelSegmentFindSegmentReceive = bufferedChannel.findSegmentReceive(j2, channelSegment2);
                                        if (channelSegmentFindSegmentReceive == null) {
                                        }
                                    } else {
                                        channelSegmentFindSegmentReceive = channelSegment2;
                                    }
                                    objUpdateCellReceive = bufferedChannel.updateCellReceive(channelSegmentFindSegmentReceive, i3, andIncrement, this);
                                    if (objUpdateCellReceive != BufferedChannelKt.SUSPEND) {
                                        if (objUpdateCellReceive == BufferedChannelKt.FAILED) {
                                            if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                                                channelSegmentFindSegmentReceive.cleanPrev();
                                            }
                                            channelSegment2 = channelSegmentFindSegmentReceive;
                                        } else {
                                            if (objUpdateCellReceive == BufferedChannelKt.SUSPEND_NO_WAITER) {
                                                throw new IllegalStateException("unexpected");
                                            }
                                            channelSegmentFindSegmentReceive.cleanPrev();
                                            this.receiveResult = objUpdateCellReceive;
                                            this.continuation = null;
                                            boolBoxBoolean = Boxing.boxBoolean(true);
                                            function1 = bufferedChannel.onUndeliveredElement;
                                            if (function1 != null) {
                                            }
                                        }
                                    } else {
                                        bufferedChannel.prepareReceiverForSuspension(this, channelSegmentFindSegmentReceive, i3);
                                        break;
                                    }
                                } else {
                                    onClosedHasNextNoWaiterSuspend();
                                    break;
                                }
                            }
                            orCreateCancellableContinuation.resume(boolBoxBoolean, function3BindCancellationFun);
                        } else {
                            channelSegment.cleanPrev();
                            this.receiveResult = objUpdateCellReceive;
                            this.continuation = null;
                            boolBoxBoolean = Boxing.boxBoolean(true);
                            function1 = bufferedChannel.onUndeliveredElement;
                            if (function1 != null) {
                                function3BindCancellationFun = bufferedChannel.bindCancellationFun(function1, objUpdateCellReceive);
                            }
                            orCreateCancellableContinuation.resume(boolBoxBoolean, function3BindCancellationFun);
                        }
                    } else {
                        bufferedChannel.prepareReceiverForSuspension(this, channelSegment, i);
                    }
                    Object result = orCreateCancellableContinuation.getResult();
                    if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(continuation);
                    }
                    return result;
                } catch (Throwable th) {
                    th = th;
                    Throwable th2 = th;
                    orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                    throw th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }

        @Override // kotlinx.coroutines.Waiter
        public void invokeOnCancellation(Segment segment, int i) {
            CancellableContinuationImpl cancellableContinuationImpl = this.continuation;
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.invokeOnCancellation(segment, i);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void onClosedHasNextNoWaiterSuspend() {
            CancellableContinuationImpl cancellableContinuationImpl = this.continuation;
            Intrinsics.checkNotNull(cancellableContinuationImpl);
            this.continuation = null;
            this.receiveResult = BufferedChannelKt.getCHANNEL_CLOSED();
            Throwable closeCause = BufferedChannel.this.getCloseCause();
            if (closeCause == null) {
                Result.Companion companion = Result.Companion;
                cancellableContinuationImpl.resumeWith(Result.m3604constructorimpl(Boolean.FALSE));
            } else {
                Result.Companion companion2 = Result.Companion;
                cancellableContinuationImpl.resumeWith(Result.m3604constructorimpl(ResultKt.createFailure(closeCause)));
            }
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public Object next() throws Throwable {
            Object obj = this.receiveResult;
            if (obj != BufferedChannelKt.NO_RECEIVE_RESULT) {
                this.receiveResult = BufferedChannelKt.NO_RECEIVE_RESULT;
                if (obj != BufferedChannelKt.getCHANNEL_CLOSED()) {
                    return obj;
                }
                throw StackTraceRecoveryKt.recoverStackTrace(BufferedChannel.this.getReceiveException());
            }
            throw new IllegalStateException("`hasNext()` has not been invoked");
        }

        public final boolean tryResumeHasNext(Object obj) {
            CancellableContinuationImpl cancellableContinuationImpl = this.continuation;
            Intrinsics.checkNotNull(cancellableContinuationImpl);
            this.continuation = null;
            this.receiveResult = obj;
            Boolean bool = Boolean.TRUE;
            BufferedChannel bufferedChannel = BufferedChannel.this;
            Function1 function1 = bufferedChannel.onUndeliveredElement;
            return BufferedChannelKt.tryResume0(cancellableContinuationImpl, bool, function1 != null ? bufferedChannel.bindCancellationFun(function1, obj) : null);
        }

        public final void tryResumeHasNextOnClosedChannel() {
            CancellableContinuationImpl cancellableContinuationImpl = this.continuation;
            Intrinsics.checkNotNull(cancellableContinuationImpl);
            this.continuation = null;
            this.receiveResult = BufferedChannelKt.getCHANNEL_CLOSED();
            Throwable closeCause = BufferedChannel.this.getCloseCause();
            if (closeCause == null) {
                Result.Companion companion = Result.Companion;
                cancellableContinuationImpl.resumeWith(Result.m3604constructorimpl(Boolean.FALSE));
            } else {
                Result.Companion companion2 = Result.Companion;
                cancellableContinuationImpl.resumeWith(Result.m3604constructorimpl(ResultKt.createFailure(closeCause)));
            }
        }
    }

    protected final Throwable getCloseCause() {
        return (Throwable) _closeCause$volatile$FU.get(this);
    }

    protected final Throwable getSendException() {
        Throwable closeCause = getCloseCause();
        return closeCause == null ? new ClosedSendChannelException("Channel was closed") : closeCause;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Throwable getReceiveException() {
        Throwable closeCause = getCloseCause();
        return closeCause == null ? new ClosedReceiveChannelException("Channel was closed") : closeCause;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean close(Throwable th) {
        return closeOrCancelImpl(th, false);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final void cancel(CancellationException cancellationException) {
        cancelImpl$kotlinx_coroutines_core(cancellationException);
    }

    public boolean cancelImpl$kotlinx_coroutines_core(Throwable th) {
        if (th == null) {
            th = new CancellationException("Channel was cancelled");
        }
        return closeOrCancelImpl(th, true);
    }

    protected boolean closeOrCancelImpl(Throwable th, boolean z) {
        if (z) {
            markCancellationStarted();
        }
        boolean zM112m = AbstractC0329xc40028dd.m112m(_closeCause$volatile$FU, this, BufferedChannelKt.NO_CLOSE_CAUSE, th);
        if (z) {
            markCancelled();
        } else {
            markClosed();
        }
        completeCloseOrCancel();
        onClosedIdempotent();
        if (zM112m) {
            invokeCloseHandler();
        }
        return zM112m;
    }

    private final void invokeCloseHandler() {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = closeHandler$volatile$FU;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
        } while (!AbstractC0329xc40028dd.m112m(atomicReferenceFieldUpdater, this, obj, obj == null ? BufferedChannelKt.CLOSE_HANDLER_CLOSED : BufferedChannelKt.CLOSE_HANDLER_INVOKED));
        if (obj == null) {
            return;
        }
        ((Function1) obj).invoke(getCloseCause());
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public void invokeOnClose(Function1 function1) {
        if (AbstractC0329xc40028dd.m112m(closeHandler$volatile$FU, this, null, function1)) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = closeHandler$volatile$FU;
        do {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj != BufferedChannelKt.CLOSE_HANDLER_CLOSED) {
                if (obj == BufferedChannelKt.CLOSE_HANDLER_INVOKED) {
                    throw new IllegalStateException("Another handler was already registered and successfully invoked");
                }
                throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
            }
        } while (!AbstractC0329xc40028dd.m112m(closeHandler$volatile$FU, this, BufferedChannelKt.CLOSE_HANDLER_CLOSED, BufferedChannelKt.CLOSE_HANDLER_INVOKED));
        function1.invoke(getCloseCause());
    }

    private final void markClosed() {
        long j;
        long jConstructSendersAndCloseStatus;
        AtomicLongFieldUpdater atomicLongFieldUpdater = sendersAndCloseStatus$volatile$FU;
        do {
            j = atomicLongFieldUpdater.get(this);
            int i = (int) (j >> 60);
            if (i == 0) {
                jConstructSendersAndCloseStatus = BufferedChannelKt.constructSendersAndCloseStatus(1152921504606846975L & j, 2);
            } else if (i != 1) {
                return;
            } else {
                jConstructSendersAndCloseStatus = BufferedChannelKt.constructSendersAndCloseStatus(1152921504606846975L & j, 3);
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, jConstructSendersAndCloseStatus));
    }

    private final void markCancelled() {
        long j;
        AtomicLongFieldUpdater atomicLongFieldUpdater = sendersAndCloseStatus$volatile$FU;
        do {
            j = atomicLongFieldUpdater.get(this);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, BufferedChannelKt.constructSendersAndCloseStatus(1152921504606846975L & j, 3)));
    }

    private final void markCancellationStarted() {
        long j;
        AtomicLongFieldUpdater atomicLongFieldUpdater = sendersAndCloseStatus$volatile$FU;
        do {
            j = atomicLongFieldUpdater.get(this);
            if (((int) (j >> 60)) != 0) {
                return;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, BufferedChannelKt.constructSendersAndCloseStatus(1152921504606846975L & j, 1)));
    }

    private final void completeCloseOrCancel() {
        isClosedForSend();
    }

    private final ChannelSegment completeClose(long j) {
        ChannelSegment channelSegmentCloseLinkedList = closeLinkedList();
        if (isConflatedDropOldest()) {
            long jMarkAllEmptyCellsAsClosed = markAllEmptyCellsAsClosed(channelSegmentCloseLinkedList);
            if (jMarkAllEmptyCellsAsClosed != -1) {
                dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(jMarkAllEmptyCellsAsClosed);
            }
        }
        cancelSuspendedReceiveRequests(channelSegmentCloseLinkedList, j);
        return channelSegmentCloseLinkedList;
    }

    private final void completeCancel(long j) {
        removeUnprocessedElements(completeClose(j));
    }

    private final ChannelSegment closeLinkedList() {
        Object obj = bufferEndSegment$volatile$FU.get(this);
        ChannelSegment channelSegment = (ChannelSegment) sendSegment$volatile$FU.get(this);
        if (channelSegment.f1546id > ((ChannelSegment) obj).f1546id) {
            obj = channelSegment;
        }
        ChannelSegment channelSegment2 = (ChannelSegment) receiveSegment$volatile$FU.get(this);
        if (channelSegment2.f1546id > ((ChannelSegment) obj).f1546id) {
            obj = channelSegment2;
        }
        return (ChannelSegment) ConcurrentLinkedListKt.close((ConcurrentLinkedListNode) obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003c, code lost:
    
        r8 = (kotlinx.coroutines.channels.ChannelSegment) r8.getPrev();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final long markAllEmptyCellsAsClosed(ChannelSegment channelSegment) {
        do {
            int i = BufferedChannelKt.SEGMENT_SIZE;
            while (true) {
                i--;
                if (-1 >= i) {
                    break;
                }
                long j = (channelSegment.f1546id * ((long) BufferedChannelKt.SEGMENT_SIZE)) + ((long) i);
                if (j < getReceiversCounter$kotlinx_coroutines_core()) {
                    return -1L;
                }
                while (true) {
                    Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
                    if (state$kotlinx_coroutines_core == null || state$kotlinx_coroutines_core == BufferedChannelKt.IN_BUFFER) {
                        if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                            channelSegment.onSlotCleaned();
                            break;
                        }
                    } else if (state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED) {
                        return j;
                    }
                }
            }
        } while (channelSegment != null);
        return -1L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b3, code lost:
    
        r12 = (kotlinx.coroutines.channels.ChannelSegment) r12.getPrev();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void removeUnprocessedElements(ChannelSegment channelSegment) {
        Function1 function1 = this.onUndeliveredElement;
        UndeliveredElementException undeliveredElementExceptionCallUndeliveredElementCatchingException = null;
        Object objM3694constructorimpl$default = InlineList.m3694constructorimpl$default(null, 1, null);
        loop0: do {
            int i = BufferedChannelKt.SEGMENT_SIZE - 1;
            while (true) {
                if (-1 >= i) {
                    break;
                }
                long j = (channelSegment.f1546id * ((long) BufferedChannelKt.SEGMENT_SIZE)) + ((long) i);
                while (true) {
                    Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
                    if (state$kotlinx_coroutines_core == BufferedChannelKt.DONE_RCV) {
                        break loop0;
                    }
                    if (state$kotlinx_coroutines_core != BufferedChannelKt.BUFFERED) {
                        if (state$kotlinx_coroutines_core == BufferedChannelKt.IN_BUFFER || state$kotlinx_coroutines_core == null) {
                            if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                                channelSegment.onSlotCleaned();
                                break;
                            }
                        } else if (!(state$kotlinx_coroutines_core instanceof Waiter) && !(state$kotlinx_coroutines_core instanceof WaiterEB)) {
                            if (state$kotlinx_coroutines_core != BufferedChannelKt.RESUMING_BY_EB && state$kotlinx_coroutines_core != BufferedChannelKt.RESUMING_BY_RCV) {
                                if (state$kotlinx_coroutines_core != BufferedChannelKt.RESUMING_BY_EB) {
                                    break;
                                }
                            } else {
                                break loop0;
                            }
                        } else {
                            if (j < getReceiversCounter$kotlinx_coroutines_core()) {
                                break loop0;
                            }
                            Waiter waiter = state$kotlinx_coroutines_core instanceof WaiterEB ? ((WaiterEB) state$kotlinx_coroutines_core).waiter : (Waiter) state$kotlinx_coroutines_core;
                            if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                                if (function1 != null) {
                                    undeliveredElementExceptionCallUndeliveredElementCatchingException = OnUndeliveredElementKt.callUndeliveredElementCatchingException(function1, channelSegment.getElement$kotlinx_coroutines_core(i), undeliveredElementExceptionCallUndeliveredElementCatchingException);
                                }
                                objM3694constructorimpl$default = InlineList.m3695plusFjFbRPM(objM3694constructorimpl$default, waiter);
                                channelSegment.cleanElement$kotlinx_coroutines_core(i);
                                channelSegment.onSlotCleaned();
                            }
                        }
                    } else {
                        if (j < getReceiversCounter$kotlinx_coroutines_core()) {
                            break loop0;
                        }
                        if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                            if (function1 != null) {
                                undeliveredElementExceptionCallUndeliveredElementCatchingException = OnUndeliveredElementKt.callUndeliveredElementCatchingException(function1, channelSegment.getElement$kotlinx_coroutines_core(i), undeliveredElementExceptionCallUndeliveredElementCatchingException);
                            }
                            channelSegment.cleanElement$kotlinx_coroutines_core(i);
                            channelSegment.onSlotCleaned();
                        }
                    }
                }
                i--;
            }
        } while (channelSegment != null);
        if (objM3694constructorimpl$default != null) {
            if (objM3694constructorimpl$default instanceof ArrayList) {
                Intrinsics.checkNotNull(objM3694constructorimpl$default, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>");
                ArrayList arrayList = (ArrayList) objM3694constructorimpl$default;
                for (int size = arrayList.size() - 1; -1 < size; size--) {
                    resumeSenderOnCancelledChannel((Waiter) arrayList.get(size));
                }
            } else {
                resumeSenderOnCancelledChannel((Waiter) objM3694constructorimpl$default);
            }
        }
        if (undeliveredElementExceptionCallUndeliveredElementCatchingException != null) {
            throw undeliveredElementExceptionCallUndeliveredElementCatchingException;
        }
    }

    private final void cancelSuspendedReceiveRequests(ChannelSegment channelSegment, long j) {
        Object objM3694constructorimpl$default = InlineList.m3694constructorimpl$default(null, 1, null);
        loop0: while (channelSegment != null) {
            for (int i = BufferedChannelKt.SEGMENT_SIZE - 1; -1 < i; i--) {
                if ((channelSegment.f1546id * ((long) BufferedChannelKt.SEGMENT_SIZE)) + ((long) i) < j) {
                    break loop0;
                }
                while (true) {
                    Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
                    if (state$kotlinx_coroutines_core == null || state$kotlinx_coroutines_core == BufferedChannelKt.IN_BUFFER) {
                        if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                            channelSegment.onSlotCleaned();
                            break;
                        }
                    } else if (state$kotlinx_coroutines_core instanceof WaiterEB) {
                        if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                            objM3694constructorimpl$default = InlineList.m3695plusFjFbRPM(objM3694constructorimpl$default, ((WaiterEB) state$kotlinx_coroutines_core).waiter);
                            channelSegment.onCancelledRequest(i, true);
                            break;
                        }
                    } else {
                        if (!(state$kotlinx_coroutines_core instanceof Waiter)) {
                            break;
                        }
                        if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                            objM3694constructorimpl$default = InlineList.m3695plusFjFbRPM(objM3694constructorimpl$default, state$kotlinx_coroutines_core);
                            channelSegment.onCancelledRequest(i, true);
                            break;
                        }
                    }
                }
            }
            channelSegment = (ChannelSegment) channelSegment.getPrev();
        }
        if (objM3694constructorimpl$default != null) {
            if (objM3694constructorimpl$default instanceof ArrayList) {
                Intrinsics.checkNotNull(objM3694constructorimpl$default, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>");
                ArrayList arrayList = (ArrayList) objM3694constructorimpl$default;
                for (int size = arrayList.size() - 1; -1 < size; size--) {
                    resumeReceiverOnClosedChannel((Waiter) arrayList.get(size));
                }
                return;
            }
            resumeReceiverOnClosedChannel((Waiter) objM3694constructorimpl$default);
        }
    }

    private final void resumeReceiverOnClosedChannel(Waiter waiter) {
        resumeWaiterOnClosedChannel(waiter, true);
    }

    private final void resumeSenderOnCancelledChannel(Waiter waiter) {
        resumeWaiterOnClosedChannel(waiter, false);
    }

    private final void resumeWaiterOnClosedChannel(Waiter waiter, boolean z) {
        if (waiter instanceof CancellableContinuation) {
            Continuation continuation = (Continuation) waiter;
            Result.Companion companion = Result.Companion;
            continuation.resumeWith(Result.m3604constructorimpl(ResultKt.createFailure(z ? getReceiveException() : getSendException())));
        } else if (waiter instanceof ReceiveCatching) {
            CancellableContinuationImpl cancellableContinuationImpl = ((ReceiveCatching) waiter).cont;
            Result.Companion companion2 = Result.Companion;
            cancellableContinuationImpl.resumeWith(Result.m3604constructorimpl(ChannelResult.m3673boximpl(ChannelResult.Companion.m3684closedJP2dKIU(getCloseCause()))));
        } else if (waiter instanceof BufferedChannelIterator) {
            ((BufferedChannelIterator) waiter).tryResumeHasNextOnClosedChannel();
        } else {
            if (waiter instanceof SelectInstance) {
                ((SelectInstance) waiter).trySelect(this, BufferedChannelKt.getCHANNEL_CLOSED());
                return;
            }
            throw new IllegalStateException(("Unexpected waiter: " + waiter).toString());
        }
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean isClosedForSend() {
        return isClosedForSend0(sendersAndCloseStatus$volatile$FU.get(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isClosedForSend0(long j) {
        return isClosed(j, false);
    }

    public boolean isClosedForReceive() {
        return isClosedForReceive0(sendersAndCloseStatus$volatile$FU.get(this));
    }

    private final boolean isClosedForReceive0(long j) {
        return isClosed(j, true);
    }

    private final boolean isClosed(long j, boolean z) {
        int i = (int) (j >> 60);
        if (i == 0 || i == 1) {
            return false;
        }
        if (i == 2) {
            completeClose(j & 1152921504606846975L);
            return (z && hasElements$kotlinx_coroutines_core()) ? false : true;
        }
        if (i == 3) {
            completeCancel(j & 1152921504606846975L);
            return true;
        }
        throw new IllegalStateException(("unexpected close status: " + i).toString());
    }

    public final boolean hasElements$kotlinx_coroutines_core() {
        while (true) {
            ChannelSegment channelSegmentFindSegmentReceive = (ChannelSegment) receiveSegment$volatile$FU.get(this);
            long receiversCounter$kotlinx_coroutines_core = getReceiversCounter$kotlinx_coroutines_core();
            if (getSendersCounter$kotlinx_coroutines_core() <= receiversCounter$kotlinx_coroutines_core) {
                return false;
            }
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j = receiversCounter$kotlinx_coroutines_core / ((long) i);
            if (channelSegmentFindSegmentReceive.f1546id == j || (channelSegmentFindSegmentReceive = findSegmentReceive(j, channelSegmentFindSegmentReceive)) != null) {
                channelSegmentFindSegmentReceive.cleanPrev();
                if (isCellNonEmpty(channelSegmentFindSegmentReceive, (int) (receiversCounter$kotlinx_coroutines_core % ((long) i)), receiversCounter$kotlinx_coroutines_core)) {
                    return true;
                }
                receivers$volatile$FU.compareAndSet(this, receiversCounter$kotlinx_coroutines_core, 1 + receiversCounter$kotlinx_coroutines_core);
            } else if (((ChannelSegment) receiveSegment$volatile$FU.get(this)).f1546id < j) {
                return false;
            }
        }
    }

    private final boolean isCellNonEmpty(ChannelSegment channelSegment, int i, long j) {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
            if (state$kotlinx_coroutines_core != null && state$kotlinx_coroutines_core != BufferedChannelKt.IN_BUFFER) {
                if (state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED) {
                    return true;
                }
                if (state$kotlinx_coroutines_core == BufferedChannelKt.INTERRUPTED_SEND || state$kotlinx_coroutines_core == BufferedChannelKt.getCHANNEL_CLOSED() || state$kotlinx_coroutines_core == BufferedChannelKt.DONE_RCV || state$kotlinx_coroutines_core == BufferedChannelKt.POISONED) {
                    return false;
                }
                if (state$kotlinx_coroutines_core == BufferedChannelKt.RESUMING_BY_EB) {
                    return true;
                }
                return state$kotlinx_coroutines_core != BufferedChannelKt.RESUMING_BY_RCV && j == getReceiversCounter$kotlinx_coroutines_core();
            }
        } while (!channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.POISONED));
        expandBuffer();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ChannelSegment findSegmentSend(long j, ChannelSegment channelSegment) {
        Object objFindSegmentInternal;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = sendSegment$volatile$FU;
        Function2 function2 = (Function2) BufferedChannelKt.createSegmentFunction();
        loop0: while (true) {
            objFindSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(channelSegment, j, function2);
            if (!SegmentOrClosed.m3698isClosedimpl(objFindSegmentInternal)) {
                Segment segmentM3697getSegmentimpl = SegmentOrClosed.m3697getSegmentimpl(objFindSegmentInternal);
                while (true) {
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    if (segment.f1546id >= segmentM3697getSegmentimpl.f1546id) {
                        break loop0;
                    }
                    if (!segmentM3697getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    if (AbstractC0329xc40028dd.m112m(atomicReferenceFieldUpdater, this, segment, segmentM3697getSegmentimpl)) {
                        if (segment.decPointers$kotlinx_coroutines_core()) {
                            segment.remove();
                        }
                    } else if (segmentM3697getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                        segmentM3697getSegmentimpl.remove();
                    }
                }
            } else {
                break;
            }
        }
        if (SegmentOrClosed.m3698isClosedimpl(objFindSegmentInternal)) {
            completeCloseOrCancel();
            if (channelSegment.f1546id * ((long) BufferedChannelKt.SEGMENT_SIZE) < getReceiversCounter$kotlinx_coroutines_core()) {
                channelSegment.cleanPrev();
            }
            return null;
        }
        ChannelSegment channelSegment2 = (ChannelSegment) SegmentOrClosed.m3697getSegmentimpl(objFindSegmentInternal);
        long j2 = channelSegment2.f1546id;
        if (j2 <= j) {
            return channelSegment2;
        }
        int i = BufferedChannelKt.SEGMENT_SIZE;
        updateSendersCounterIfLower(j2 * ((long) i));
        if (channelSegment2.f1546id * ((long) i) < getReceiversCounter$kotlinx_coroutines_core()) {
            channelSegment2.cleanPrev();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ChannelSegment findSegmentReceive(long j, ChannelSegment channelSegment) {
        Object objFindSegmentInternal;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = receiveSegment$volatile$FU;
        Function2 function2 = (Function2) BufferedChannelKt.createSegmentFunction();
        loop0: while (true) {
            objFindSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(channelSegment, j, function2);
            if (!SegmentOrClosed.m3698isClosedimpl(objFindSegmentInternal)) {
                Segment segmentM3697getSegmentimpl = SegmentOrClosed.m3697getSegmentimpl(objFindSegmentInternal);
                while (true) {
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    if (segment.f1546id >= segmentM3697getSegmentimpl.f1546id) {
                        break loop0;
                    }
                    if (!segmentM3697getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    if (AbstractC0329xc40028dd.m112m(atomicReferenceFieldUpdater, this, segment, segmentM3697getSegmentimpl)) {
                        if (segment.decPointers$kotlinx_coroutines_core()) {
                            segment.remove();
                        }
                    } else if (segmentM3697getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                        segmentM3697getSegmentimpl.remove();
                    }
                }
            } else {
                break;
            }
        }
        if (SegmentOrClosed.m3698isClosedimpl(objFindSegmentInternal)) {
            completeCloseOrCancel();
            if (channelSegment.f1546id * ((long) BufferedChannelKt.SEGMENT_SIZE) < getSendersCounter$kotlinx_coroutines_core()) {
                channelSegment.cleanPrev();
            }
            return null;
        }
        ChannelSegment channelSegment2 = (ChannelSegment) SegmentOrClosed.m3697getSegmentimpl(objFindSegmentInternal);
        if (!isRendezvousOrUnlimited() && j <= getBufferEndCounter() / ((long) BufferedChannelKt.SEGMENT_SIZE)) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = bufferEndSegment$volatile$FU;
            while (true) {
                Segment segment2 = (Segment) atomicReferenceFieldUpdater2.get(this);
                if (segment2.f1546id >= channelSegment2.f1546id || !channelSegment2.tryIncPointers$kotlinx_coroutines_core()) {
                    break;
                }
                if (AbstractC0329xc40028dd.m112m(atomicReferenceFieldUpdater2, this, segment2, channelSegment2)) {
                    if (segment2.decPointers$kotlinx_coroutines_core()) {
                        segment2.remove();
                    }
                } else if (channelSegment2.decPointers$kotlinx_coroutines_core()) {
                    channelSegment2.remove();
                }
            }
        }
        long j2 = channelSegment2.f1546id;
        if (j2 <= j) {
            return channelSegment2;
        }
        int i = BufferedChannelKt.SEGMENT_SIZE;
        updateReceiversCounterIfLower(j2 * ((long) i));
        if (channelSegment2.f1546id * ((long) i) < getSendersCounter$kotlinx_coroutines_core()) {
            channelSegment2.cleanPrev();
        }
        return null;
    }

    private final ChannelSegment findSegmentBufferEnd(long j, ChannelSegment channelSegment, long j2) {
        Object objFindSegmentInternal;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = bufferEndSegment$volatile$FU;
        Function2 function2 = (Function2) BufferedChannelKt.createSegmentFunction();
        loop0: while (true) {
            objFindSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(channelSegment, j, function2);
            if (!SegmentOrClosed.m3698isClosedimpl(objFindSegmentInternal)) {
                Segment segmentM3697getSegmentimpl = SegmentOrClosed.m3697getSegmentimpl(objFindSegmentInternal);
                while (true) {
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    if (segment.f1546id >= segmentM3697getSegmentimpl.f1546id) {
                        break loop0;
                    }
                    if (!segmentM3697getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    if (AbstractC0329xc40028dd.m112m(atomicReferenceFieldUpdater, this, segment, segmentM3697getSegmentimpl)) {
                        if (segment.decPointers$kotlinx_coroutines_core()) {
                            segment.remove();
                        }
                    } else if (segmentM3697getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                        segmentM3697getSegmentimpl.remove();
                    }
                }
            } else {
                break;
            }
        }
        if (SegmentOrClosed.m3698isClosedimpl(objFindSegmentInternal)) {
            completeCloseOrCancel();
            moveSegmentBufferEndToSpecifiedOrLast(j, channelSegment);
            incCompletedExpandBufferAttempts$default(this, 0L, 1, null);
            return null;
        }
        ChannelSegment channelSegment2 = (ChannelSegment) SegmentOrClosed.m3697getSegmentimpl(objFindSegmentInternal);
        if (channelSegment2.f1546id <= j) {
            return channelSegment2;
        }
        long j3 = channelSegment2.f1546id;
        int i = BufferedChannelKt.SEGMENT_SIZE;
        if (bufferEnd$volatile$FU.compareAndSet(this, j2 + 1, j3 * ((long) i))) {
            incCompletedExpandBufferAttempts((channelSegment2.f1546id * ((long) i)) - j2);
        } else {
            incCompletedExpandBufferAttempts$default(this, 0L, 1, null);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0011, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void moveSegmentBufferEndToSpecifiedOrLast(long j, ChannelSegment channelSegment) {
        ChannelSegment channelSegment2;
        ChannelSegment channelSegment3;
        while (channelSegment.f1546id < j && (channelSegment3 = (ChannelSegment) channelSegment.getNext()) != null) {
            channelSegment = channelSegment3;
        }
        while (true) {
            if (!channelSegment.isRemoved() || (channelSegment2 = (ChannelSegment) channelSegment.getNext()) == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = bufferEndSegment$volatile$FU;
                while (true) {
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    if (segment.f1546id >= channelSegment.f1546id) {
                        return;
                    }
                    if (!channelSegment.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    if (AbstractC0329xc40028dd.m112m(atomicReferenceFieldUpdater, this, segment, channelSegment)) {
                        if (segment.decPointers$kotlinx_coroutines_core()) {
                            segment.remove();
                            return;
                        }
                        return;
                    } else if (channelSegment.decPointers$kotlinx_coroutines_core()) {
                        channelSegment.remove();
                    }
                }
            } else {
                channelSegment = channelSegment2;
            }
        }
    }

    private final void updateSendersCounterIfLower(long j) {
        long j2;
        long j3;
        AtomicLongFieldUpdater atomicLongFieldUpdater = sendersAndCloseStatus$volatile$FU;
        do {
            j2 = atomicLongFieldUpdater.get(this);
            j3 = 1152921504606846975L & j2;
            if (j3 >= j) {
                return;
            }
        } while (!sendersAndCloseStatus$volatile$FU.compareAndSet(this, j2, BufferedChannelKt.constructSendersAndCloseStatus(j3, (int) (j2 >> 60))));
    }

    private final void updateReceiversCounterIfLower(long j) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = receivers$volatile$FU;
        while (true) {
            long j2 = atomicLongFieldUpdater.get(this);
            if (j2 >= j) {
                return;
            }
            long j3 = j;
            if (receivers$volatile$FU.compareAndSet(this, j2, j3)) {
                return;
            } else {
                j = j3;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x01de, code lost:
    
        r16 = r7;
        r3 = (kotlinx.coroutines.channels.ChannelSegment) r3.getNext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01e7, code lost:
    
        if (r3 != null) goto L92;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String toString() {
        boolean z;
        String string;
        StringBuilder sb = new StringBuilder();
        int i = (int) (sendersAndCloseStatus$volatile$FU.get(this) >> 60);
        if (i == 2) {
            sb.append("closed,");
        } else if (i == 3) {
            sb.append("cancelled,");
        }
        sb.append("capacity=" + this.capacity + ',');
        sb.append("data=[");
        int i2 = 0;
        boolean z2 = true;
        List listListOf = CollectionsKt.listOf((Object[]) new ChannelSegment[]{receiveSegment$volatile$FU.get(this), sendSegment$volatile$FU.get(this), bufferEndSegment$volatile$FU.get(this)});
        ArrayList arrayList = new ArrayList();
        for (Object obj : listListOf) {
            if (((ChannelSegment) obj) != BufferedChannelKt.NULL_SEGMENT) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it.next();
        if (it.hasNext()) {
            long j = ((ChannelSegment) next).f1546id;
            do {
                Object next2 = it.next();
                long j2 = ((ChannelSegment) next2).f1546id;
                if (j > j2) {
                    next = next2;
                    j = j2;
                }
            } while (it.hasNext());
        }
        ChannelSegment channelSegment = (ChannelSegment) next;
        long receiversCounter$kotlinx_coroutines_core = getReceiversCounter$kotlinx_coroutines_core();
        long sendersCounter$kotlinx_coroutines_core = getSendersCounter$kotlinx_coroutines_core();
        loop2: while (true) {
            int i3 = BufferedChannelKt.SEGMENT_SIZE;
            int i4 = i2;
            while (true) {
                if (i4 >= i3) {
                    break;
                }
                long j3 = (channelSegment.f1546id * ((long) BufferedChannelKt.SEGMENT_SIZE)) + ((long) i4);
                if (j3 >= sendersCounter$kotlinx_coroutines_core && j3 >= receiversCounter$kotlinx_coroutines_core) {
                    break loop2;
                }
                Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i4);
                Object element$kotlinx_coroutines_core = channelSegment.getElement$kotlinx_coroutines_core(i4);
                boolean z3 = z2;
                if (state$kotlinx_coroutines_core instanceof CancellableContinuation) {
                    if (j3 < receiversCounter$kotlinx_coroutines_core && j3 >= sendersCounter$kotlinx_coroutines_core) {
                        string = "receive";
                    } else if (j3 < sendersCounter$kotlinx_coroutines_core && j3 >= receiversCounter$kotlinx_coroutines_core) {
                        string = "send";
                    } else {
                        string = "cont";
                    }
                } else if (state$kotlinx_coroutines_core instanceof SelectInstance) {
                    if (j3 < receiversCounter$kotlinx_coroutines_core && j3 >= sendersCounter$kotlinx_coroutines_core) {
                        string = "onReceive";
                    } else if (j3 < sendersCounter$kotlinx_coroutines_core && j3 >= receiversCounter$kotlinx_coroutines_core) {
                        string = "onSend";
                    } else {
                        string = "select";
                    }
                } else if (state$kotlinx_coroutines_core instanceof ReceiveCatching) {
                    string = "receiveCatching";
                } else if (state$kotlinx_coroutines_core instanceof WaiterEB) {
                    string = "EB(" + state$kotlinx_coroutines_core + ')';
                } else if (!Intrinsics.areEqual(state$kotlinx_coroutines_core, BufferedChannelKt.RESUMING_BY_RCV) && !Intrinsics.areEqual(state$kotlinx_coroutines_core, BufferedChannelKt.RESUMING_BY_EB)) {
                    if (state$kotlinx_coroutines_core == null || Intrinsics.areEqual(state$kotlinx_coroutines_core, BufferedChannelKt.IN_BUFFER) || Intrinsics.areEqual(state$kotlinx_coroutines_core, BufferedChannelKt.DONE_RCV) || Intrinsics.areEqual(state$kotlinx_coroutines_core, BufferedChannelKt.POISONED) || Intrinsics.areEqual(state$kotlinx_coroutines_core, BufferedChannelKt.INTERRUPTED_RCV) || Intrinsics.areEqual(state$kotlinx_coroutines_core, BufferedChannelKt.INTERRUPTED_SEND) || Intrinsics.areEqual(state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                        i4++;
                        z2 = z3;
                    } else {
                        string = state$kotlinx_coroutines_core.toString();
                    }
                } else {
                    string = "resuming_sender";
                }
                if (element$kotlinx_coroutines_core != null) {
                    sb.append('(' + string + ',' + element$kotlinx_coroutines_core + "),");
                } else {
                    sb.append(string + ',');
                }
                i4++;
                z2 = z3;
            }
            z2 = z;
            i2 = 0;
        }
        if (StringsKt.last(sb) == ',') {
            Intrinsics.checkNotNullExpressionValue(sb.deleteCharAt(sb.length() - 1), "deleteCharAt(...)");
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.BufferedChannel$bindCancellationFunResult$1 */
    /* JADX INFO: loaded from: classes5.dex */
    /* synthetic */ class C26101 extends FunctionReferenceImpl implements Function3 {
        C26101(Object obj) {
            super(3, obj, BufferedChannel.class, "onCancellationChannelResultImplDoNotCall", "onCancellationChannelResultImplDoNotCall-5_sEAP8(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            m3672invoke5_sEAP8((Throwable) obj, ((ChannelResult) obj2).m3683unboximpl(), (CoroutineContext) obj3);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke-5_sEAP8, reason: not valid java name */
        public final void m3672invoke5_sEAP8(Throwable th, Object obj, CoroutineContext coroutineContext) {
            ((BufferedChannel) this.receiver).m3665onCancellationChannelResultImplDoNotCall5_sEAP8(th, obj, coroutineContext);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final KFunction bindCancellationFunResult(Function1 function1) {
        return new C26101(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onCancellationChannelResultImplDoNotCall-5_sEAP8, reason: not valid java name */
    public final void m3665onCancellationChannelResultImplDoNotCall5_sEAP8(Throwable th, Object obj, CoroutineContext coroutineContext) {
        Function1 function1 = this.onUndeliveredElement;
        Intrinsics.checkNotNull(function1);
        Object objM3677getOrNullimpl = ChannelResult.m3677getOrNullimpl(obj);
        Intrinsics.checkNotNull(objM3677getOrNullimpl);
        OnUndeliveredElementKt.callUndeliveredElement(function1, objM3677getOrNullimpl, coroutineContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Function3 bindCancellationFun(final Function1 function1, final Object obj) {
        return new Function3() { // from class: kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj2, Object obj3, Object obj4) {
                return BufferedChannel.bindCancellationFun$lambda$89(function1, obj, (Throwable) obj2, obj3, (CoroutineContext) obj4);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit bindCancellationFun$lambda$89(Function1 function1, Object obj, Throwable th, Object obj2, CoroutineContext coroutineContext) {
        OnUndeliveredElementKt.callUndeliveredElement(function1, obj, coroutineContext);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.BufferedChannel$bindCancellationFun$2 */
    /* JADX INFO: loaded from: classes5.dex */
    /* synthetic */ class C26092 extends FunctionReferenceImpl implements Function3 {
        C26092(Object obj) {
            super(3, obj, BufferedChannel.class, "onCancellationImplDoNotCall", "onCancellationImplDoNotCall(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((Throwable) obj, obj2, (CoroutineContext) obj3);
            return Unit.INSTANCE;
        }

        public final void invoke(Throwable th, Object obj, CoroutineContext coroutineContext) {
            ((BufferedChannel) this.receiver).onCancellationImplDoNotCall(th, obj, coroutineContext);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final KFunction bindCancellationFun(Function1 function1) {
        return new C26092(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onCancellationImplDoNotCall(Throwable th, Object obj, CoroutineContext coroutineContext) {
        Function1 function1 = this.onUndeliveredElement;
        Intrinsics.checkNotNull(function1);
        OnUndeliveredElementKt.callUndeliveredElement(function1, obj, coroutineContext);
    }
}
