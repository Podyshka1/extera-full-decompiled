package kotlinx.coroutines.channels;

import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.android.gms.internal.measurement.zzpo$$ExternalSyntheticBackportWithForwarding0;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.DurationKt$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.Segment;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00000\u0002B7\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00028\u0000H\u0000¢\u0006\u0004\b\u0013\u0010\u0011J\u0017\u0010\u0017\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\bH\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\bH\u0000¢\u0006\u0004\b\u0018\u0010\u0016J\u0017\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\bH\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001e\u001a\u0004\u0018\u00010\r2\u0006\u0010\f\u001a\u00020\bH\u0000¢\u0006\u0004\b\u001d\u0010\u0016J!\u0010 \u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0000¢\u0006\u0004\b\u001f\u0010\u0011J+\u0010&\u001a\u00020#2\u0006\u0010\f\u001a\u00020\b2\b\u0010!\u001a\u0004\u0018\u00010\r2\b\u0010\"\u001a\u0004\u0018\u00010\rH\u0000¢\u0006\u0004\b$\u0010%J#\u0010*\u001a\u0004\u0018\u00010\r2\u0006\u0010\f\u001a\u00020\b2\b\u0010'\u001a\u0004\u0018\u00010\rH\u0000¢\u0006\u0004\b(\u0010)J)\u0010/\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\b2\b\u0010,\u001a\u0004\u0018\u00010+2\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b/\u00100J\u001d\u00102\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\b2\u0006\u00101\u001a\u00020#¢\u0006\u0004\b2\u00103R\u001c\u00104\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00068F¢\u0006\u0006\u001a\u0004\b6\u00107R\u0014\u0010:\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b8\u00109R\u0013\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\r8\u0002X\u0082\u0004¨\u0006<"}, d2 = {"Lkotlinx/coroutines/channels/ChannelSegment;", "E", "Lkotlinx/coroutines/internal/Segment;", _UrlKt.FRAGMENT_ENCODE_SET, "id", "prev", "Lkotlinx/coroutines/channels/BufferedChannel;", "channel", _UrlKt.FRAGMENT_ENCODE_SET, "pointers", "<init>", "(JLkotlinx/coroutines/channels/ChannelSegment;Lkotlinx/coroutines/channels/BufferedChannel;I)V", "index", _UrlKt.FRAGMENT_ENCODE_SET, "value", _UrlKt.FRAGMENT_ENCODE_SET, "setElementLazy", "(ILjava/lang/Object;)V", "element", "storeElement$kotlinx_coroutines_core", "storeElement", "getElement$kotlinx_coroutines_core", "(I)Ljava/lang/Object;", "getElement", "retrieveElement$kotlinx_coroutines_core", "retrieveElement", "cleanElement$kotlinx_coroutines_core", "(I)V", "cleanElement", "getState$kotlinx_coroutines_core", "getState", "setState$kotlinx_coroutines_core", "setState", "from", "to", _UrlKt.FRAGMENT_ENCODE_SET, "casState$kotlinx_coroutines_core", "(ILjava/lang/Object;Ljava/lang/Object;)Z", "casState", PluginsConstants.UPDATE, "getAndSetState$kotlinx_coroutines_core", "(ILjava/lang/Object;)Ljava/lang/Object;", "getAndSetState", _UrlKt.FRAGMENT_ENCODE_SET, "cause", "Lkotlin/coroutines/CoroutineContext;", "context", "onCancellation", "(ILjava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V", "receiver", "onCancelledRequest", "(IZ)V", "_channel", "Lkotlinx/coroutines/channels/BufferedChannel;", "getChannel", "()Lkotlinx/coroutines/channels/BufferedChannel;", "getNumberOfSlots", "()I", "numberOfSlots", "data", "kotlinx-coroutines-core"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/ChannelSegment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3092:1\n1#2:3093\n*E\n"})
public final class ChannelSegment<E> extends Segment<ChannelSegment<E>> {
    private final BufferedChannel<E> _channel;
    private final /* synthetic */ AtomicReferenceArray data;

    private final /* synthetic */ AtomicReferenceArray getData() {
        return this.data;
    }

    public ChannelSegment(long j, ChannelSegment<E> channelSegment, BufferedChannel<E> bufferedChannel, int i) {
        super(j, channelSegment, i);
        this._channel = bufferedChannel;
        this.data = new AtomicReferenceArray(BufferedChannelKt.SEGMENT_SIZE * 2);
    }

    public final BufferedChannel<E> getChannel() {
        return this._channel;
    }

    @Override // kotlinx.coroutines.internal.Segment
    public int getNumberOfSlots() {
        return BufferedChannelKt.SEGMENT_SIZE;
    }

    public final void storeElement$kotlinx_coroutines_core(int index, E element) {
        setElementLazy(index, element);
    }

    public final E getElement$kotlinx_coroutines_core(int index) {
        return (E) getData().get(index * 2);
    }

    public final E retrieveElement$kotlinx_coroutines_core(int index) {
        E element$kotlinx_coroutines_core = getElement$kotlinx_coroutines_core(index);
        cleanElement$kotlinx_coroutines_core(index);
        return element$kotlinx_coroutines_core;
    }

    public final void cleanElement$kotlinx_coroutines_core(int index) {
        setElementLazy(index, null);
    }

    private final void setElementLazy(int index, Object value) {
        getData().set(index * 2, value);
    }

    public final Object getState$kotlinx_coroutines_core(int index) {
        return getData().get((index * 2) + 1);
    }

    public final void setState$kotlinx_coroutines_core(int index, Object value) {
        getData().set((index * 2) + 1, value);
    }

    public final boolean casState$kotlinx_coroutines_core(int index, Object from, Object to) {
        return zzpo$$ExternalSyntheticBackportWithForwarding0.m327m(getData(), (index * 2) + 1, from, to);
    }

    public final Object getAndSetState$kotlinx_coroutines_core(int index, Object update) {
        return getData().getAndSet((index * 2) + 1, update);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004e, code lost:
    
        cleanElement$kotlinx_coroutines_core(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0051, code lost:
    
        if (r0 == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0053, code lost:
    
        r3 = getChannel().onUndeliveredElement;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0059, code lost:
    
        if (r3 == null) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x005b, code lost:
    
        kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElement(r3, r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x005e, code lost:
    
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
    public void onCancellation(int index, Throwable cause, CoroutineContext context) {
        Function1<E, Unit> function1;
        int i = BufferedChannelKt.SEGMENT_SIZE;
        boolean z = index >= i;
        if (z) {
            index -= i;
        }
        E element$kotlinx_coroutines_core = getElement$kotlinx_coroutines_core(index);
        while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core(index);
            if (!(state$kotlinx_coroutines_core instanceof Waiter) && !(state$kotlinx_coroutines_core instanceof WaiterEB)) {
                if (state$kotlinx_coroutines_core == BufferedChannelKt.INTERRUPTED_SEND || state$kotlinx_coroutines_core == BufferedChannelKt.INTERRUPTED_RCV) {
                    break;
                }
                if (state$kotlinx_coroutines_core != BufferedChannelKt.RESUMING_BY_EB && state$kotlinx_coroutines_core != BufferedChannelKt.RESUMING_BY_RCV) {
                    if (state$kotlinx_coroutines_core == BufferedChannelKt.DONE_RCV || state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED || state$kotlinx_coroutines_core == BufferedChannelKt.getCHANNEL_CLOSED()) {
                        return;
                    }
                    DurationKt$$ExternalSyntheticBUOutline0.m893m("unexpected state: ", state$kotlinx_coroutines_core);
                    return;
                }
            } else {
                if (casState$kotlinx_coroutines_core(index, state$kotlinx_coroutines_core, z ? BufferedChannelKt.INTERRUPTED_SEND : BufferedChannelKt.INTERRUPTED_RCV)) {
                    cleanElement$kotlinx_coroutines_core(index);
                    onCancelledRequest(index, !z);
                    if (!z || (function1 = getChannel().onUndeliveredElement) == null) {
                        return;
                    }
                    OnUndeliveredElementKt.callUndeliveredElement(function1, element$kotlinx_coroutines_core, context);
                    return;
                }
            }
        }
    }

    public final void onCancelledRequest(int index, boolean receiver) {
        if (receiver) {
            getChannel().waitExpandBufferCompletion$kotlinx_coroutines_core((this.id * ((long) BufferedChannelKt.SEGMENT_SIZE)) + ((long) index));
        }
        onSlotCleaned();
    }
}
