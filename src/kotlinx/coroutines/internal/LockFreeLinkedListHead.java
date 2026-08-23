package kotlinx.coroutines.internal;

/* JADX INFO: loaded from: classes.dex */
public abstract class LockFreeLinkedListHead extends LockFreeLinkedListNode {
    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public boolean isRemoved() {
        return false;
    }
}
