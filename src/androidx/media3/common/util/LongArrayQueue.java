package androidx.media3.common.util;

import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
public final class LongArrayQueue {
    private long[] data;
    private int headIndex;
    private int size;
    private int tailIndex;
    private int wrapAroundMask;

    public LongArrayQueue() {
        this(16);
    }

    public LongArrayQueue(int i) {
        Assertions.checkArgument(i >= 0 && i <= 1073741824);
        i = i == 0 ? 1 : i;
        i = Integer.bitCount(i) != 1 ? Integer.highestOneBit(i - 1) << 1 : i;
        this.headIndex = 0;
        this.tailIndex = -1;
        this.size = 0;
        long[] jArr = new long[i];
        this.data = jArr;
        this.wrapAroundMask = jArr.length - 1;
    }

    public void add(long j) {
        if (this.size == this.data.length) {
            doubleArraySize();
        }
        int i = (this.tailIndex + 1) & this.wrapAroundMask;
        this.tailIndex = i;
        this.data[i] = j;
        this.size++;
    }

    public long remove() {
        int i = this.size;
        if (i == 0) {
            Utils$$ExternalSyntheticBUOutline0.m1068m();
            return 0L;
        }
        long[] jArr = this.data;
        int i2 = this.headIndex;
        long j = jArr[i2];
        this.headIndex = this.wrapAroundMask & (i2 + 1);
        this.size = i - 1;
        return j;
    }

    public long element() {
        if (this.size == 0) {
            Utils$$ExternalSyntheticBUOutline0.m1068m();
            return 0L;
        }
        return this.data[this.headIndex];
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public void clear() {
        this.headIndex = 0;
        this.tailIndex = -1;
        this.size = 0;
    }

    private void doubleArraySize() {
        long[] jArr = this.data;
        int length = jArr.length << 1;
        if (length < 0) {
            MethodWriter$$ExternalSyntheticBUOutline0.m959m();
            return;
        }
        long[] jArr2 = new long[length];
        int length2 = jArr.length;
        int i = this.headIndex;
        int i2 = length2 - i;
        System.arraycopy(jArr, i, jArr2, 0, i2);
        System.arraycopy(this.data, 0, jArr2, i2, i);
        this.headIndex = 0;
        this.tailIndex = this.size - 1;
        this.data = jArr2;
        this.wrapAroundMask = jArr2.length - 1;
    }
}
