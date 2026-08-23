package androidx.camera.core.internal.utils;

import androidx.camera.core.internal.utils.RingBuffer;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes4.dex */
public class ArrayRingBuffer implements RingBuffer {
    private final ArrayDeque mBuffer;
    private final Object mLock;
    final RingBuffer.OnRemoveCallback mOnRemoveCallback;
    private final int mRingBufferCapacity;

    public ArrayRingBuffer(int i) {
        this(i, null);
    }

    public ArrayRingBuffer(int i, RingBuffer.OnRemoveCallback onRemoveCallback) {
        this.mLock = new Object();
        this.mRingBufferCapacity = i;
        this.mBuffer = new ArrayDeque(i);
        this.mOnRemoveCallback = onRemoveCallback;
    }

    public void enqueue(Object obj) {
        Object objDequeue;
        synchronized (this.mLock) {
            try {
                objDequeue = this.mBuffer.size() >= this.mRingBufferCapacity ? dequeue() : null;
                this.mBuffer.addFirst(obj);
            } catch (Throwable th) {
                throw th;
            }
        }
        RingBuffer.OnRemoveCallback onRemoveCallback = this.mOnRemoveCallback;
        if (onRemoveCallback == null || objDequeue == null) {
            return;
        }
        onRemoveCallback.onRemove(objDequeue);
    }

    @Override // androidx.camera.core.internal.utils.RingBuffer
    public Object dequeue() {
        Object objRemoveLast;
        synchronized (this.mLock) {
            objRemoveLast = this.mBuffer.removeLast();
        }
        return objRemoveLast;
    }

    @Override // androidx.camera.core.internal.utils.RingBuffer
    public boolean isEmpty() {
        boolean zIsEmpty;
        synchronized (this.mLock) {
            zIsEmpty = this.mBuffer.isEmpty();
        }
        return zIsEmpty;
    }
}
