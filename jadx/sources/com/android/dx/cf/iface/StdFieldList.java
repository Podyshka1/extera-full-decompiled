package com.android.dx.cf.iface;

import com.android.dx.util.FixedSizeList;

/* JADX INFO: loaded from: classes4.dex */
public final class StdFieldList extends FixedSizeList implements FieldList {
    public StdFieldList(int i) {
        super(i);
    }

    @Override // com.android.dx.cf.iface.FieldList
    public Field get(int i) {
        return (Field) get0(i);
    }

    public void set(int i, Field field) {
        set0(i, field);
    }
}
