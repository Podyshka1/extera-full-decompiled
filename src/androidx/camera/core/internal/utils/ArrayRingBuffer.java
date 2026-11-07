package androidx.camera.core.internal.utils;

import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ArrayRingBuffer<T> {
    private final ArrayDeque<T> mBuffer;
    private final Object mLock = new Object();
    final RingBuffer$OnRemoveCallback<T> mOnRemoveCallback;
    private final int mRingBufferCapacity;

    public ArrayRingBuffer(int i, RingBuffer$OnRemoveCallback<T> ringBuffer$OnRemoveCallback) {
        this.mRingBufferCapacity = i;
        this.mBuffer = new ArrayDeque<>(i);
        this.mOnRemoveCallback = ringBuffer$OnRemoveCallback;
    }

    public void enqueue(T t) {
        T tDequeue;
        synchronized (this.mLock) {
            try {
                tDequeue = this.mBuffer.size() >= this.mRingBufferCapacity ? dequeue() : null;
                this.mBuffer.addFirst(t);
            } catch (Throwable th) {
                throw th;
            }
        }
        RingBuffer$OnRemoveCallback<T> ringBuffer$OnRemoveCallback = this.mOnRemoveCallback;
        if (ringBuffer$OnRemoveCallback == null || tDequeue == null) {
            return;
        }
        ringBuffer$OnRemoveCallback.onRemove(tDequeue);
    }

    public T dequeue() {
        T tRemoveLast;
        synchronized (this.mLock) {
            tRemoveLast = this.mBuffer.removeLast();
        }
        return tRemoveLast;
    }

    public boolean isEmpty() {
        boolean zIsEmpty;
        synchronized (this.mLock) {
            zIsEmpty = this.mBuffer.isEmpty();
        }
        return zIsEmpty;
    }
}
