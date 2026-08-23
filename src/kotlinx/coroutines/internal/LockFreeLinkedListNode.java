package kotlinx.coroutines.internal;

import androidx.concurrent.futures.AbstractC0329xc40028dd;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlinx.coroutines.DebugStringsKt;

/* JADX INFO: loaded from: classes.dex */
public class LockFreeLinkedListNode {
    private static final /* synthetic */ AtomicReferenceFieldUpdater _next$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_next$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater _prev$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_prev$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater _removedRef$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_removedRef$volatile");
    private volatile /* synthetic */ Object _next$volatile = this;
    private volatile /* synthetic */ Object _prev$volatile = this;
    private volatile /* synthetic */ Object _removedRef$volatile;

    private final Removed removed() {
        Removed removed = (Removed) _removedRef$volatile$FU.get(this);
        if (removed != null) {
            return removed;
        }
        Removed removed2 = new Removed(this);
        _removedRef$volatile$FU.set(this, removed2);
        return removed2;
    }

    public boolean isRemoved() {
        return getNext() instanceof Removed;
    }

    public final Object getNext() {
        return _next$volatile$FU.get(this);
    }

    public final LockFreeLinkedListNode getNextNode() {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        Object next = getNext();
        Removed removed = next instanceof Removed ? (Removed) next : null;
        if (removed != null && (lockFreeLinkedListNode = removed.ref) != null) {
            return lockFreeLinkedListNode;
        }
        Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        return (LockFreeLinkedListNode) next;
    }

    public final LockFreeLinkedListNode getPrevNode() {
        LockFreeLinkedListNode lockFreeLinkedListNodeCorrectPrev = correctPrev();
        return lockFreeLinkedListNodeCorrectPrev == null ? findPrevNonRemoved((LockFreeLinkedListNode) _prev$volatile$FU.get(this)) : lockFreeLinkedListNodeCorrectPrev;
    }

    private final LockFreeLinkedListNode findPrevNonRemoved(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.isRemoved()) {
            lockFreeLinkedListNode = (LockFreeLinkedListNode) _prev$volatile$FU.get(lockFreeLinkedListNode);
        }
        return lockFreeLinkedListNode;
    }

    public final boolean addOneIfEmpty(LockFreeLinkedListNode lockFreeLinkedListNode) {
        _prev$volatile$FU.set(lockFreeLinkedListNode, this);
        _next$volatile$FU.set(lockFreeLinkedListNode, this);
        while (getNext() == this) {
            if (AbstractC0329xc40028dd.m112m(_next$volatile$FU, this, this, lockFreeLinkedListNode)) {
                lockFreeLinkedListNode.finishAdd(this);
                return true;
            }
        }
        return false;
    }

    public final boolean addLast(LockFreeLinkedListNode lockFreeLinkedListNode, int i) {
        LockFreeLinkedListNode prevNode;
        do {
            prevNode = getPrevNode();
            if (prevNode instanceof ListClosed) {
                return (((ListClosed) prevNode).forbiddenElementsBitmask & i) == 0 && prevNode.addLast(lockFreeLinkedListNode, i);
            }
        } while (!prevNode.addNext(lockFreeLinkedListNode, this));
        return true;
    }

    public final void close(int i) {
        addLast(new ListClosed(i), i);
    }

    public final boolean addNext(LockFreeLinkedListNode lockFreeLinkedListNode, LockFreeLinkedListNode lockFreeLinkedListNode2) {
        _prev$volatile$FU.set(lockFreeLinkedListNode, this);
        _next$volatile$FU.set(lockFreeLinkedListNode, lockFreeLinkedListNode2);
        if (!AbstractC0329xc40028dd.m112m(_next$volatile$FU, this, lockFreeLinkedListNode2, lockFreeLinkedListNode)) {
            return false;
        }
        lockFreeLinkedListNode.finishAdd(lockFreeLinkedListNode2);
        return true;
    }

    public boolean remove() {
        return removeOrNext() == null;
    }

    public final LockFreeLinkedListNode removeOrNext() {
        Object next;
        LockFreeLinkedListNode lockFreeLinkedListNode;
        do {
            next = getNext();
            if (next instanceof Removed) {
                return ((Removed) next).ref;
            }
            if (next == this) {
                return (LockFreeLinkedListNode) next;
            }
            Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
            lockFreeLinkedListNode = (LockFreeLinkedListNode) next;
        } while (!AbstractC0329xc40028dd.m112m(_next$volatile$FU, this, next, lockFreeLinkedListNode.removed()));
        lockFreeLinkedListNode.correctPrev();
        return null;
    }

    private final void finishAdd(LockFreeLinkedListNode lockFreeLinkedListNode) {
        LockFreeLinkedListNode lockFreeLinkedListNode2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _prev$volatile$FU;
        do {
            lockFreeLinkedListNode2 = (LockFreeLinkedListNode) atomicReferenceFieldUpdater.get(lockFreeLinkedListNode);
            if (getNext() != lockFreeLinkedListNode) {
                return;
            }
        } while (!AbstractC0329xc40028dd.m112m(_prev$volatile$FU, lockFreeLinkedListNode, lockFreeLinkedListNode2, this));
        if (isRemoved()) {
            lockFreeLinkedListNode.correctPrev();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0025, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003f, code lost:
    
        if (androidx.concurrent.futures.AbstractC0329xc40028dd.m112m(kotlinx.coroutines.internal.LockFreeLinkedListNode._next$volatile$FU, r3, r2, ((kotlinx.coroutines.internal.Removed) r4).ref) != false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final LockFreeLinkedListNode correctPrev() {
        while (true) {
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) _prev$volatile$FU.get(this);
            LockFreeLinkedListNode lockFreeLinkedListNode2 = lockFreeLinkedListNode;
            while (true) {
                LockFreeLinkedListNode lockFreeLinkedListNode3 = null;
                while (true) {
                    Object obj = _next$volatile$FU.get(lockFreeLinkedListNode2);
                    if (obj == this) {
                        if (lockFreeLinkedListNode == lockFreeLinkedListNode2 || AbstractC0329xc40028dd.m112m(_prev$volatile$FU, this, lockFreeLinkedListNode, lockFreeLinkedListNode2)) {
                            break;
                        }
                    } else {
                        if (isRemoved()) {
                            return null;
                        }
                        if (!(obj instanceof Removed)) {
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
                            lockFreeLinkedListNode3 = lockFreeLinkedListNode2;
                            lockFreeLinkedListNode2 = (LockFreeLinkedListNode) obj;
                        } else {
                            if (lockFreeLinkedListNode3 != null) {
                                break;
                            }
                            lockFreeLinkedListNode2 = (LockFreeLinkedListNode) _prev$volatile$FU.get(lockFreeLinkedListNode2);
                        }
                    }
                }
                lockFreeLinkedListNode2 = lockFreeLinkedListNode3;
            }
        }
    }

    public String toString() {
        return new PropertyReference0Impl(this) { // from class: kotlinx.coroutines.internal.LockFreeLinkedListNode.toString.1
            @Override // kotlin.reflect.KProperty0
            public Object get() {
                return DebugStringsKt.getClassSimpleName(this.receiver);
            }
        } + '@' + DebugStringsKt.getHexAddress(this);
    }
}
