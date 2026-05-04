package com.android.dx.cf.code;

import com.android.dx.util.Hex;
import com.android.dx.util.LabeledItem;
import com.android.dx.util.LabeledList;

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
            throw new IllegalArgumentException("no such label: " + Hex.u2(i));
        }
        return get(iIndexOfLabel);
    }

    public void set(int i, ByteBlock byteBlock) {
        super.set(i, (LabeledItem) byteBlock);
    }
}
