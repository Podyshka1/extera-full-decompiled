package okio;

import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class PriorityQueue {
    public AsyncTimeout[] array = new AsyncTimeout[8];
    public int size;

    public final AsyncTimeout first() {
        return this.array[1];
    }

    public final void add(AsyncTimeout node) {
        Intrinsics.checkNotNullParameter(node, "node");
        int i = this.size + 1;
        this.size = i;
        AsyncTimeout[] asyncTimeoutArr = this.array;
        if (i == asyncTimeoutArr.length) {
            AsyncTimeout[] asyncTimeoutArr2 = new AsyncTimeout[i * 2];
            ArraysKt.copyInto$default(asyncTimeoutArr, asyncTimeoutArr2, 0, 0, 0, 14, (Object) null);
            this.array = asyncTimeoutArr2;
        }
        heapifyUp(i, node);
    }

    public final void remove(AsyncTimeout node) {
        Intrinsics.checkNotNullParameter(node, "node");
        int i = node.index;
        if (i == -1) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        int i2 = this.size;
        AsyncTimeout asyncTimeout = this.array[i2];
        Intrinsics.checkNotNull(asyncTimeout);
        node.index = -1;
        this.array[i2] = null;
        this.size = i2 - 1;
        if (node == asyncTimeout) {
            return;
        }
        int iCompare = Intrinsics.compare(0L, asyncTimeout.getTimeoutAt$okio() - node.getTimeoutAt$okio());
        if (iCompare == 0) {
            this.array[i] = asyncTimeout;
            asyncTimeout.index = i;
        } else if (iCompare < 0) {
            heapifyDown(i, asyncTimeout);
        } else {
            heapifyUp(i, asyncTimeout);
        }
    }

    private final void heapifyUp(int i, AsyncTimeout asyncTimeout) {
        while (true) {
            int i2 = i >> 1;
            if (i2 == 0) {
                break;
            }
            AsyncTimeout asyncTimeout2 = this.array[i2];
            Intrinsics.checkNotNull(asyncTimeout2);
            if (Intrinsics.compare(0L, asyncTimeout.getTimeoutAt$okio() - asyncTimeout2.getTimeoutAt$okio()) <= 0) {
                break;
            }
            asyncTimeout2.index = i;
            this.array[i] = asyncTimeout2;
            i = i2;
        }
        this.array[i] = asyncTimeout;
        asyncTimeout.index = i;
    }

    private final void heapifyDown(int i, AsyncTimeout asyncTimeout) {
        AsyncTimeout asyncTimeout2;
        while (true) {
            int i2 = i << 1;
            int i3 = i2 + 1;
            int i4 = this.size;
            if (i3 > i4) {
                if (i2 > i4) {
                    break;
                }
                asyncTimeout2 = this.array[i2];
                Intrinsics.checkNotNull(asyncTimeout2);
            } else {
                asyncTimeout2 = this.array[i2];
                Intrinsics.checkNotNull(asyncTimeout2);
                AsyncTimeout asyncTimeout3 = this.array[i3];
                Intrinsics.checkNotNull(asyncTimeout3);
                if (Intrinsics.compare(0L, asyncTimeout3.getTimeoutAt$okio() - asyncTimeout2.getTimeoutAt$okio()) >= 0) {
                    asyncTimeout2 = asyncTimeout3;
                }
            }
            if (Intrinsics.compare(0L, asyncTimeout2.getTimeoutAt$okio() - asyncTimeout.getTimeoutAt$okio()) <= 0) {
                break;
            }
            int i5 = asyncTimeout2.index;
            asyncTimeout2.index = i;
            this.array[i] = asyncTimeout2;
            i = i5;
        }
        this.array[i] = asyncTimeout;
        asyncTimeout.index = i;
    }
}
