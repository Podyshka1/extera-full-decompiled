package com.android.p003dx.p004cf.code;

import com.android.p003dx.util.Hex;
import com.android.p003dx.util.LabeledItem;
import com.android.p003dx.util.LabeledList;

/* JADX INFO: loaded from: classes4.dex */
public final class ByteBlockList extends LabeledList {
    public ByteBlockList(int i) {
        super(i);
    }

    public ByteBlock get(int i) {
        return (ByteBlock) get0(i);
    }

    public ByteBlock labelToBlock(int i) {
        int iIndexOfLabel = indexOfLabel(i);
        if (iIndexOfLabel < 0) {
            throw new IllegalArgumentException("no such label: " + Hex.m212u2(i));
        }
        return get(iIndexOfLabel);
    }

    public void set(int i, ByteBlock byteBlock) {
        super.set(i, (LabeledItem) byteBlock);
    }
}
