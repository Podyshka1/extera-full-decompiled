package kotlinx.coroutines.internal;

/* JADX INFO: loaded from: classes5.dex */
public interface ThreadSafeHeapNode {
    ThreadSafeHeap getHeap();

    int getIndex();

    void setHeap(ThreadSafeHeap threadSafeHeap);

    void setIndex(int i);
}
