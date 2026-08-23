package kotlinx.coroutines.internal;

import androidx.concurrent.futures.AbstractC0324xc40028dd;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 -*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001:\u0002.-B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ3\u0010\f\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\f\u0010\rJ3\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u000b2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J'\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0000j\b\u0012\u0004\u0012\u00028\u0000`\u000b2\u0006\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J'\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0000j\b\u0012\u0004\u0012\u00028\u0000`\u000b2\u0006\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0018\u0010\u0017J\r\u0010\u0019\u001a\u00020\u0005¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00028\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u001d\u0010\u001eJ\u0013\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000¢\u0006\u0004\b\u001f\u0010 R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010!R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\"R\u0014\u0010#\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010!R\u0011\u0010$\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b$\u0010\u001aR\u0011\u0010'\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b%\u0010&R%\u0010)\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u000b0(8\u0002X\u0082\u0004R\u000b\u0010+\u001a\u00020*8\u0002X\u0082\u0004R\u0013\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00018\u0002X\u0082\u0004¨\u0006/"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", _UrlKt.FRAGMENT_ENCODE_SET, "E", _UrlKt.FRAGMENT_ENCODE_SET, "capacity", _UrlKt.FRAGMENT_ENCODE_SET, "singleConsumer", "<init>", "(IZ)V", "index", "element", "Lkotlinx/coroutines/internal/Core;", "fillPlaceholder", "(ILjava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "oldHead", "newHead", "removeSlowPath", "(II)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", _UrlKt.FRAGMENT_ENCODE_SET, "markFrozen", "()J", "state", "allocateOrGetNextCopy", "(J)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "allocateNextCopy", "close", "()Z", "addLast", "(Ljava/lang/Object;)I", "removeFirstOrNull", "()Ljava/lang/Object;", "next", "()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "I", "Z", "mask", "isEmpty", "getSize", "()I", "size", "Lkotlinx/atomicfu/AtomicRef;", "_next", "Lkotlinx/atomicfu/AtomicLong;", "_state", "array", "Companion", "Placeholder", "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLockFreeTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore\n+ 2 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,304:1\n295#2,3:305\n295#2,3:308\n295#2,3:311\n295#2,3:314\n295#2,3:317\n295#2,3:321\n295#2,3:324\n1#3:320\n*S KotlinDebug\n*F\n+ 1 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore\n*L\n87#1:305,3\n88#1:308,3\n103#1:311,3\n163#1:314,3\n196#1:317,3\n227#1:321,3\n243#1:324,3\n*E\n"})
public final class LockFreeTaskQueueCore<E> {
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ long _state$volatile;
    private final /* synthetic */ AtomicReferenceArray array;
    private final int capacity;
    private final int mask;
    private final boolean singleConsumer;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final /* synthetic */ AtomicReferenceFieldUpdater _next$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(LockFreeTaskQueueCore.class, Object.class, "_next$volatile");
    private static final /* synthetic */ AtomicLongFieldUpdater _state$volatile$FU = AtomicLongFieldUpdater.newUpdater(LockFreeTaskQueueCore.class, "_state$volatile");

    @JvmField
    public static final Symbol REMOVE_FROZEN = new Symbol("REMOVE_FROZEN");

    private final /* synthetic */ AtomicReferenceArray getArray() {
        return this.array;
    }

    public LockFreeTaskQueueCore(int i, boolean z) {
        this.capacity = i;
        this.singleConsumer = z;
        int i2 = i - 1;
        this.mask = i2;
        this.array = new AtomicReferenceArray(i);
        if (i2 > 1073741823) {
            Segment$$ExternalSyntheticBUOutline1.m848m("Check failed.");
            throw null;
        }
        if ((i & i2) == 0) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("Check failed.");
        throw null;
    }

    public final boolean isEmpty() {
        long j = _state$volatile$FU.get(this);
        return ((int) (1073741823 & j)) == ((int) ((j & 1152921503533105152L) >> 30));
    }

    public final int getSize() {
        long j = _state$volatile$FU.get(this);
        return 1073741823 & (((int) ((j & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j)));
    }

    public final boolean close() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = _state$volatile$FU;
        while (true) {
            long j = atomicLongFieldUpdater.get(this);
            if ((j & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j) != 0) {
                return false;
            }
            LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = this;
            if (atomicLongFieldUpdater.compareAndSet(lockFreeTaskQueueCore, j, 2305843009213693952L | j)) {
                return true;
            }
            this = lockFreeTaskQueueCore;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
    
        return 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int addLast(E element) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = _state$volatile$FU;
        while (true) {
            long j = atomicLongFieldUpdater.get(this);
            if ((3458764513820540928L & j) != 0) {
                return INSTANCE.addFailReason(j);
            }
            int i = (int) (1073741823 & j);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            int i3 = this.mask;
            if (((i2 + 2) & i3) == (i & i3)) {
                return 1;
            }
            if (!this.singleConsumer && this.getArray().get(i2 & i3) != null) {
                int i4 = this.capacity;
                if (i4 < 1024 || ((i2 - i) & 1073741823) > (i4 >> 1)) {
                    break;
                }
            } else {
                LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = this;
                if (_state$volatile$FU.compareAndSet(lockFreeTaskQueueCore, j, INSTANCE.updateTail(j, (i2 + 1) & 1073741823))) {
                    lockFreeTaskQueueCore.getArray().set(i2 & i3, element);
                    LockFreeTaskQueueCore<E> lockFreeTaskQueueCoreFillPlaceholder = lockFreeTaskQueueCore;
                    while ((_state$volatile$FU.get(lockFreeTaskQueueCoreFillPlaceholder) & 1152921504606846976L) != 0 && (lockFreeTaskQueueCoreFillPlaceholder = lockFreeTaskQueueCoreFillPlaceholder.next().fillPlaceholder(i2, element)) != null) {
                    }
                    return 0;
                }
                this = lockFreeTaskQueueCore;
            }
        }
    }

    private final LockFreeTaskQueueCore<E> fillPlaceholder(int index, E element) {
        Object obj = getArray().get(this.mask & index);
        if (!(obj instanceof Placeholder) || ((Placeholder) obj).index != index) {
            return null;
        }
        getArray().set(index & this.mask, element);
        return this;
    }

    public final Object removeFirstOrNull() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = _state$volatile$FU;
        while (true) {
            long j = atomicLongFieldUpdater.get(this);
            if ((1152921504606846976L & j) != 0) {
                return REMOVE_FROZEN;
            }
            int i = (int) (1073741823 & j);
            int i2 = this.mask;
            if ((((int) ((1152921503533105152L & j) >> 30)) & i2) == (i2 & i)) {
                return null;
            }
            Object obj = this.getArray().get(this.mask & i);
            if (obj == null) {
                if (this.singleConsumer) {
                    return null;
                }
            } else {
                if (obj instanceof Placeholder) {
                    return null;
                }
                int i3 = (i + 1) & 1073741823;
                LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = this;
                if (_state$volatile$FU.compareAndSet(lockFreeTaskQueueCore, j, INSTANCE.updateHead(j, i3))) {
                    lockFreeTaskQueueCore.getArray().set(lockFreeTaskQueueCore.mask & i, null);
                    return obj;
                }
                if (lockFreeTaskQueueCore.singleConsumer) {
                    LockFreeTaskQueueCore<E> lockFreeTaskQueueCoreRemoveSlowPath = lockFreeTaskQueueCore;
                    do {
                        lockFreeTaskQueueCoreRemoveSlowPath = lockFreeTaskQueueCoreRemoveSlowPath.removeSlowPath(i, i3);
                    } while (lockFreeTaskQueueCoreRemoveSlowPath != null);
                    return obj;
                }
                this = lockFreeTaskQueueCore;
            }
        }
    }

    private final LockFreeTaskQueueCore<E> removeSlowPath(int oldHead, int newHead) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = _state$volatile$FU;
        while (true) {
            long j = atomicLongFieldUpdater.get(this);
            int i = (int) (1073741823 & j);
            if ((1152921504606846976L & j) != 0) {
                return this.next();
            }
            LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = this;
            if (_state$volatile$FU.compareAndSet(lockFreeTaskQueueCore, j, INSTANCE.updateHead(j, newHead))) {
                lockFreeTaskQueueCore.getArray().set(lockFreeTaskQueueCore.mask & i, null);
                return null;
            }
            this = lockFreeTaskQueueCore;
        }
    }

    public final LockFreeTaskQueueCore<E> next() {
        return allocateOrGetNextCopy(markFrozen());
    }

    private final long markFrozen() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = _state$volatile$FU;
        while (true) {
            long j = atomicLongFieldUpdater.get(this);
            if ((j & 1152921504606846976L) != 0) {
                return j;
            }
            long j2 = 1152921504606846976L | j;
            LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = this;
            if (atomicLongFieldUpdater.compareAndSet(lockFreeTaskQueueCore, j, j2)) {
                return j2;
            }
            this = lockFreeTaskQueueCore;
        }
    }

    private final LockFreeTaskQueueCore<E> allocateOrGetNextCopy(long state) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _next$volatile$FU;
        while (true) {
            LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = (LockFreeTaskQueueCore) atomicReferenceFieldUpdater.get(this);
            if (lockFreeTaskQueueCore != null) {
                return lockFreeTaskQueueCore;
            }
            AbstractC0324xc40028dd.m87m(_next$volatile$FU, this, null, allocateNextCopy(state));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final LockFreeTaskQueueCore<E> allocateNextCopy(long state) {
        LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = new LockFreeTaskQueueCore<>(this.capacity * 2, this.singleConsumer);
        int i = (int) (1073741823 & state);
        int i2 = (int) ((1152921503533105152L & state) >> 30);
        while (true) {
            int i3 = this.mask;
            if ((i & i3) != (i3 & i2)) {
                Object placeholder = getArray().get(this.mask & i);
                if (placeholder == null) {
                    placeholder = new Placeholder(i);
                }
                lockFreeTaskQueueCore.getArray().set(lockFreeTaskQueueCore.mask & i, placeholder);
                i++;
            } else {
                _state$volatile$FU.set(lockFreeTaskQueueCore, INSTANCE.wo(state, 1152921504606846976L));
                return lockFreeTaskQueueCore;
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;", _UrlKt.FRAGMENT_ENCODE_SET, "index", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(I)V", "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Placeholder {

        @JvmField
        public final int index;

        public Placeholder(int i) {
            this.index = i;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0006\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0086\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\n\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\r\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\f\u001a\u00020\b¢\u0006\u0004\b\r\u0010\u000bJ\u0011\u0010\u000e\u001a\u00020\b*\u00020\u0004¢\u0006\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0011R\u0014\u0010\u0018\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0011R\u0014\u0010\u001a\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0011R\u0014\u0010\u001c\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001c\u0010\u0016R\u0014\u0010\u001d\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001d\u0010\u0011R\u0014\u0010\u001f\u001a\u00020\u001e8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010!\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b!\u0010\u0011R\u0014\u0010\"\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\"\u0010\u0011R\u0014\u0010#\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b#\u0010\u0011¨\u0006$"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "other", "wo", "(JJ)J", _UrlKt.FRAGMENT_ENCODE_SET, "newHead", "updateHead", "(JI)J", "newTail", "updateTail", "addFailReason", "(J)I", "INITIAL_CAPACITY", "I", "CAPACITY_BITS", "MAX_CAPACITY_MASK", "HEAD_SHIFT", "HEAD_MASK", "J", "TAIL_SHIFT", "TAIL_MASK", "FROZEN_SHIFT", "FROZEN_MASK", "CLOSED_SHIFT", "CLOSED_MASK", "MIN_ADD_SPIN_CAPACITY", "Lkotlinx/coroutines/internal/Symbol;", "REMOVE_FROZEN", "Lkotlinx/coroutines/internal/Symbol;", "ADD_SUCCESS", "ADD_FROZEN", "ADD_CLOSED", "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int addFailReason(long j) {
            return (j & 2305843009213693952L) != 0 ? 2 : 1;
        }

        public final long wo(long j, long j2) {
            return j & (~j2);
        }

        private Companion() {
        }

        public final long updateHead(long j, int i) {
            return wo(j, 1073741823L) | ((long) i);
        }

        public final long updateTail(long j, int i) {
            return wo(j, 1152921503533105152L) | (((long) i) << 30);
        }
    }
}
