package kotlinx.coroutines.channels;

import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.UndeliveredElementException;
import okhttp3.Request$Builder$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import okio.SegmentedByteString$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B;\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\"\b\u0002\u0010\n\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\t¢\u0006\u0004\b\u000b\u0010\fJ%\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\u00102\u0006\u0010\r\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J%\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\b0\u00102\u0006\u0010\r\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0014\u0010\u0012J\u001d\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\b0\u00102\u0006\u0010\r\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0018\u0010\u0019\u001a\u00020\b2\u0006\u0010\r\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\u0019\u0010\u001aJ\u001d\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\b0\u00102\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001b\u0010\u0017R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u001dR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\u000e8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Lkotlinx/coroutines/channels/ConflatedBufferedChannel;", "E", "Lkotlinx/coroutines/channels/BufferedChannel;", _UrlKt.FRAGMENT_ENCODE_SET, "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "onUndeliveredElement", "<init>", "(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V", "element", _UrlKt.FRAGMENT_ENCODE_SET, "isSendOp", "Lkotlinx/coroutines/channels/ChannelResult;", "trySendImpl-Mj0NB7M", "(Ljava/lang/Object;Z)Ljava/lang/Object;", "trySendImpl", "trySendDropLatest-Mj0NB7M", "trySendDropLatest", "trySendDropOldest-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "trySendDropOldest", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "trySend-JP2dKIU", "trySend", "I", "Lkotlinx/coroutines/channels/BufferOverflow;", "isConflatedDropOldest", "()Z", "kotlinx-coroutines-core"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConflatedBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConflatedBufferedChannel.kt\nkotlinx/coroutines/channels/ConflatedBufferedChannel\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannelKt\n+ 5 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n*L\n1#1,112:1\n1049#2,2:113\n1011#2,2:115\n1011#2,2:198\n1049#2,2:200\n241#3:117\n266#3,10:118\n277#3,68:129\n3075#4:128\n266#5:197\n*S KotlinDebug\n*F\n+ 1 ConflatedBufferedChannel.kt\nkotlinx/coroutines/channels/ConflatedBufferedChannel\n*L\n34#1:113,2\n46#1:115,2\n99#1:198,2\n102#1:200,2\n73#1:117\n73#1:118,10\n73#1:129,68\n73#1:128\n73#1:197\n*E\n"})
public class ConflatedBufferedChannel<E> extends BufferedChannel<E> {
    private final int capacity;
    private final BufferOverflow onBufferOverflow;

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public Object send(E e, Continuation<? super Unit> continuation) {
        return send$suspendImpl((ConflatedBufferedChannel) this, (Object) e, continuation);
    }

    public ConflatedBufferedChannel(int i, BufferOverflow bufferOverflow, Function1<? super E, Unit> function1) {
        super(i, function1);
        this.capacity = i;
        this.onBufferOverflow = bufferOverflow;
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            Request$Builder$$ExternalSyntheticBUOutline0.m904m("This implementation does not support suspension for senders, use ", Reflection.getOrCreateKotlinClass(BufferedChannel.class).getSimpleName(), " instead");
            throw null;
        }
        if (i >= 1) {
            return;
        }
        SegmentedByteString$$ExternalSyntheticBUOutline0.m926m("Buffered channel capacity must be at least 1, but ", i, " was specified");
        throw null;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public boolean isConflatedDropOldest() {
        return this.onBufferOverflow == BufferOverflow.DROP_OLDEST;
    }

    public static /* synthetic */ <E> Object send$suspendImpl(ConflatedBufferedChannel<E> conflatedBufferedChannel, E e, Continuation<? super Unit> continuation) throws Throwable {
        UndeliveredElementException undeliveredElementExceptionCallUndeliveredElementCatchingException$default;
        Object objM4619trySendImplMj0NB7M = conflatedBufferedChannel.m4619trySendImplMj0NB7M(e, true);
        if (objM4619trySendImplMj0NB7M instanceof ChannelResult.Closed) {
            ChannelResult.m4606exceptionOrNullimpl(objM4619trySendImplMj0NB7M);
            Function1<E, Unit> function1 = conflatedBufferedChannel.onUndeliveredElement;
            if (function1 != null && (undeliveredElementExceptionCallUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(function1, e, null, 2, null)) != null) {
                ExceptionsKt.addSuppressed(undeliveredElementExceptionCallUndeliveredElementCatchingException$default, conflatedBufferedChannel.getSendException());
                throw undeliveredElementExceptionCallUndeliveredElementCatchingException$default;
            }
            throw conflatedBufferedChannel.getSendException();
        }
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    /* JADX INFO: renamed from: trySend-JP2dKIU */
    public Object mo4601trySendJP2dKIU(E element) {
        return m4619trySendImplMj0NB7M(element, false);
    }

    /* JADX INFO: renamed from: trySendImpl-Mj0NB7M, reason: not valid java name */
    private final Object m4619trySendImplMj0NB7M(E element, boolean isSendOp) {
        return this.onBufferOverflow == BufferOverflow.DROP_LATEST ? m4617trySendDropLatestMj0NB7M(element, isSendOp) : m4618trySendDropOldestJP2dKIU(element);
    }

    /* JADX INFO: renamed from: trySendDropLatest-Mj0NB7M, reason: not valid java name */
    private final Object m4617trySendDropLatestMj0NB7M(E element, boolean isSendOp) {
        Function1<E, Unit> function1;
        UndeliveredElementException undeliveredElementExceptionCallUndeliveredElementCatchingException$default;
        Object objMo4601trySendJP2dKIU = super.mo4601trySendJP2dKIU(element);
        if (ChannelResult.m4611isSuccessimpl(objMo4601trySendJP2dKIU) || ChannelResult.m4610isClosedimpl(objMo4601trySendJP2dKIU)) {
            return objMo4601trySendJP2dKIU;
        }
        if (isSendOp && (function1 = this.onUndeliveredElement) != null && (undeliveredElementExceptionCallUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(function1, element, null, 2, null)) != null) {
            throw undeliveredElementExceptionCallUndeliveredElementCatchingException$default;
        }
        return ChannelResult.INSTANCE.m4616successJP2dKIU(Unit.INSTANCE);
    }

    /* JADX INFO: renamed from: trySendDropOldest-JP2dKIU, reason: not valid java name */
    private final Object m4618trySendDropOldestJP2dKIU(E element) {
        ChannelSegment channelSegmentFindSegmentSend;
        int i;
        ConflatedBufferedChannel<E> conflatedBufferedChannel;
        Object obj = BufferedChannelKt.BUFFERED;
        ChannelSegment channelSegment = (ChannelSegment) BufferedChannel.sendSegment$volatile$FU.get(this);
        while (true) {
            long andIncrement = BufferedChannel.sendersAndCloseStatus$volatile$FU.getAndIncrement(this);
            long j = andIncrement & 1152921504606846975L;
            boolean zIsClosedForSend0 = this.isClosedForSend0(andIncrement);
            int i2 = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = j / ((long) i2);
            int i3 = (int) (j % ((long) i2));
            if (channelSegment.id != j2) {
                channelSegmentFindSegmentSend = this.findSegmentSend(j2, channelSegment);
                if (channelSegmentFindSegmentSend != null) {
                    conflatedBufferedChannel = this;
                    i = i3;
                } else if (zIsClosedForSend0) {
                    return ChannelResult.INSTANCE.m4614closedJP2dKIU(this.getSendException());
                }
            } else {
                channelSegmentFindSegmentSend = channelSegment;
                i = i3;
                conflatedBufferedChannel = this;
            }
            E e = element;
            int iUpdateCellSend = conflatedBufferedChannel.updateCellSend(channelSegmentFindSegmentSend, i, e, j, obj, zIsClosedForSend0);
            ConflatedBufferedChannel<E> conflatedBufferedChannel2 = conflatedBufferedChannel;
            channelSegment = channelSegmentFindSegmentSend;
            if (iUpdateCellSend == 0) {
                channelSegment.cleanPrev();
                return ChannelResult.INSTANCE.m4616successJP2dKIU(Unit.INSTANCE);
            }
            if (iUpdateCellSend == 1) {
                return ChannelResult.INSTANCE.m4616successJP2dKIU(Unit.INSTANCE);
            }
            if (iUpdateCellSend == 2) {
                if (zIsClosedForSend0) {
                    channelSegment.onSlotCleaned();
                    return ChannelResult.INSTANCE.m4614closedJP2dKIU(conflatedBufferedChannel2.getSendException());
                }
                Waiter waiter = obj instanceof Waiter ? (Waiter) obj : null;
                if (waiter != null) {
                    conflatedBufferedChannel2.prepareSenderForSuspension(waiter, channelSegment, i);
                }
                conflatedBufferedChannel2.dropFirstElementUntilTheSpecifiedCellIsInTheBuffer((channelSegment.id * ((long) i2)) + ((long) i));
                return ChannelResult.INSTANCE.m4616successJP2dKIU(Unit.INSTANCE);
            }
            if (iUpdateCellSend == 3) {
                Segment$$ExternalSyntheticBUOutline1.m925m("unexpected");
                return null;
            }
            if (iUpdateCellSend == 4) {
                if (j < conflatedBufferedChannel2.getReceiversCounter$kotlinx_coroutines_core()) {
                    channelSegment.cleanPrev();
                }
                return ChannelResult.INSTANCE.m4614closedJP2dKIU(conflatedBufferedChannel2.getSendException());
            }
            if (iUpdateCellSend == 5) {
                channelSegment.cleanPrev();
            }
            this = conflatedBufferedChannel2;
            element = e;
        }
    }
}
