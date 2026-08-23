package kotlinx.coroutines.internal;

/* JADX INFO: loaded from: classes.dex */
final class ListClosed extends LockFreeLinkedListNode {
    public final int forbiddenElementsBitmask;

    public ListClosed(int i) {
        this.forbiddenElementsBitmask = i;
    }
}
