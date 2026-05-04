package com.android.p003dx.p004cf.code;

import com.android.p003dx.util.Hex;
import com.android.p003dx.util.IntList;
import com.android.p003dx.util.LabeledItem;

/* JADX INFO: loaded from: classes4.dex */
public final class ByteBlock implements LabeledItem {
    private final ByteCatchList catches;
    private final int end;
    private final int label;
    private final int start;
    private final IntList successors;

    public ByteBlock(int i, int i2, int i3, IntList intList, ByteCatchList byteCatchList) {
        if (i < 0) {
            throw new IllegalArgumentException("label < 0");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("start < 0");
        }
        if (i3 <= i2) {
            throw new IllegalArgumentException("end <= start");
        }
        if (intList == null) {
            throw new NullPointerException("targets == null");
        }
        int size = intList.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (intList.get(i4) < 0) {
                throw new IllegalArgumentException("successors[" + i4 + "] == " + intList.get(i4));
            }
        }
        if (byteCatchList == null) {
            throw new NullPointerException("catches == null");
        }
        this.label = i;
        this.start = i2;
        this.end = i3;
        this.successors = intList;
        this.catches = byteCatchList;
    }

    public String toString() {
        return '{' + Hex.m212u2(this.label) + ": " + Hex.m212u2(this.start) + ".." + Hex.m212u2(this.end) + '}';
    }

    @Override // com.android.p003dx.util.LabeledItem
    public int getLabel() {
        return this.label;
    }

    public int getStart() {
        return this.start;
    }

    public int getEnd() {
        return this.end;
    }

    public IntList getSuccessors() {
        return this.successors;
    }

    public ByteCatchList getCatches() {
        return this.catches;
    }
}
