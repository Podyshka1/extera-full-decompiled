package com.android.dx.cf.code;

import com.android.dex.Dex$$ExternalSyntheticBUOutline1;
import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import com.android.dx.util.LabeledItem;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public final class ByteBlock implements LabeledItem {
    private final ByteCatchList catches;
    private final int end;
    private final int label;
    private final int start;
    private final IntList successors;

    public ByteBlock(int i, int i2, int i3, IntList intList, ByteCatchList byteCatchList) {
        if (i < 0) {
            f$$ExternalSyntheticBUOutline1.m215m("label < 0");
            throw null;
        }
        if (i2 < 0) {
            f$$ExternalSyntheticBUOutline1.m215m("start < 0");
            throw null;
        }
        if (i3 <= i2) {
            f$$ExternalSyntheticBUOutline1.m215m("end <= start");
            throw null;
        }
        if (intList == null) {
            f$$ExternalSyntheticBUOutline2.m216m("targets == null");
            throw null;
        }
        int size = intList.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (intList.get(i4) < 0) {
                Dex$$ExternalSyntheticBUOutline1.m219m("successors[", i4, "] == ", intList.get(i4));
                throw null;
            }
        }
        if (byteCatchList == null) {
            f$$ExternalSyntheticBUOutline2.m216m("catches == null");
            throw null;
        }
        this.label = i;
        this.start = i2;
        this.end = i3;
        this.successors = intList;
        this.catches = byteCatchList;
    }

    public String toString() {
        return "{" + Hex.u2(this.label) + ": " + Hex.u2(this.start) + ".." + Hex.u2(this.end) + '}';
    }

    @Override // com.android.dx.util.LabeledItem
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
