package androidx.media3.common.util;

import java.util.Arrays;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
public final class LongArray {
    private int size;
    private long[] values;

    public LongArray() {
        this(32);
    }

    public LongArray(int i) {
        this.values = new long[i];
    }

    public void add(long j) {
        int i = this.size;
        long[] jArr = this.values;
        if (i == jArr.length) {
            this.values = Arrays.copyOf(jArr, i * 2);
        }
        long[] jArr2 = this.values;
        int i2 = this.size;
        this.size = i2 + 1;
        jArr2[i2] = j;
    }

    public void addAll(long[] jArr) {
        int length = this.size + jArr.length;
        long[] jArr2 = this.values;
        if (length > jArr2.length) {
            this.values = Arrays.copyOf(jArr2, Math.max(jArr2.length * 2, length));
        }
        System.arraycopy(jArr, 0, this.values, this.size, jArr.length);
        this.size = length;
    }

    public long get(int i) {
        if (i < 0 || i >= this.size) {
            Regex$$ExternalSyntheticBUOutline0.m889m("Invalid index ", i, ", size is ", this.size);
            return 0L;
        }
        return this.values[i];
    }

    public int size() {
        return this.size;
    }
}
