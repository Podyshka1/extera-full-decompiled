package kotlinx.coroutines.channels;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.Segment;

/* JADX INFO: loaded from: classes.dex */
public final class ChannelSegment extends Segment {
    private final BufferedChannel _channel;
    private final /* synthetic */ AtomicReferenceArray data;

    private final /* synthetic */ AtomicReferenceArray getData() {
        return this.data;
    }

    public ChannelSegment(long j, ChannelSegment channelSegment, BufferedChannel bufferedChannel, int i) {
        super(j, channelSegment, i);
        this._channel = bufferedChannel;
        this.data = new AtomicReferenceArray(BufferedChannelKt.SEGMENT_SIZE * 2);
    }

    public final BufferedChannel getChannel() {
        BufferedChannel bufferedChannel = this._channel;
        Intrinsics.checkNotNull(bufferedChannel);
        return bufferedChannel;
    }

    @Override // kotlinx.coroutines.internal.Segment
    public int getNumberOfSlots() {
        return BufferedChannelKt.SEGMENT_SIZE;
    }

    public final void storeElement$kotlinx_coroutines_core(int i, Object obj) {
        setElementLazy(i, obj);
    }

    public final Object getElement$kotlinx_coroutines_core(int i) {
        return getData().get(i * 2);
    }

    public final Object retrieveElement$kotlinx_coroutines_core(int i) {
        Object element$kotlinx_coroutines_core = getElement$kotlinx_coroutines_core(i);
        cleanElement$kotlinx_coroutines_core(i);
        return element$kotlinx_coroutines_core;
    }

    public final void cleanElement$kotlinx_coroutines_core(int i) {
        setElementLazy(i, null);
    }

    private final void setElementLazy(int i, Object obj) {
        getData().set(i * 2, obj);
    }

    public final Object getState$kotlinx_coroutines_core(int i) {
        return getData().get((i * 2) + 1);
    }

    public final void setState$kotlinx_coroutines_core(int i, Object obj) {
        getData().set((i * 2) + 1, obj);
    }

    public final boolean casState$kotlinx_coroutines_core(int i, Object obj, Object obj2) {
        return ChannelSegment$$ExternalSyntheticBackportWithForwarding0.m1091m(getData(), (i * 2) + 1, obj, obj2);
    }

    public final Object getAndSetState$kotlinx_coroutines_core(int i, Object obj) {
        return getData().getAndSet((i * 2) + 1, obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0063, code lost:
    
        cleanElement$kotlinx_coroutines_core(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0066, code lost:
    
        if (r0 == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0068, code lost:
    
        r4 = getChannel().onUndeliveredElement;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x006e, code lost:
    
        if (r4 == null) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0070, code lost:
    
        kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElement(r4, r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0073, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:?, code lost:
    
        return;
     */
    @Override // kotlinx.coroutines.internal.Segment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onCancellation(int i, Throwable th, CoroutineContext coroutineContext) {
        Function1 function1;
        int i2 = BufferedChannelKt.SEGMENT_SIZE;
        boolean z = i >= i2;
        if (z) {
            i -= i2;
        }
        Object element$kotlinx_coroutines_core = getElement$kotlinx_coroutines_core(i);
        while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core(i);
            if (!(state$kotlinx_coroutines_core instanceof Waiter) && !(state$kotlinx_coroutines_core instanceof WaiterEB)) {
                if (state$kotlinx_coroutines_core == BufferedChannelKt.INTERRUPTED_SEND || state$kotlinx_coroutines_core == BufferedChannelKt.INTERRUPTED_RCV) {
                    break;
                }
                if (state$kotlinx_coroutines_core != BufferedChannelKt.RESUMING_BY_EB && state$kotlinx_coroutines_core != BufferedChannelKt.RESUMING_BY_RCV) {
                    if (state$kotlinx_coroutines_core == BufferedChannelKt.DONE_RCV || state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED || state$kotlinx_coroutines_core == BufferedChannelKt.getCHANNEL_CLOSED()) {
                        return;
                    }
                    throw new IllegalStateException(("unexpected state: " + state$kotlinx_coroutines_core).toString());
                }
            } else {
                if (casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, z ? BufferedChannelKt.INTERRUPTED_SEND : BufferedChannelKt.INTERRUPTED_RCV)) {
                    cleanElement$kotlinx_coroutines_core(i);
                    onCancelledRequest(i, !z);
                    if (!z || (function1 = getChannel().onUndeliveredElement) == null) {
                        return;
                    }
                    OnUndeliveredElementKt.callUndeliveredElement(function1, element$kotlinx_coroutines_core, coroutineContext);
                    return;
                }
            }
        }
    }

    public final void onCancelledRequest(int i, boolean z) {
        if (z) {
            getChannel().waitExpandBufferCompletion$kotlinx_coroutines_core((this.f1546id * ((long) BufferedChannelKt.SEGMENT_SIZE)) + ((long) i));
        }
        onSlotCleaned();
    }
}
