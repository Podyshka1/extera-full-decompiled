package com.android.p003dx.p004cf.iface;

import com.android.p003dx.util.FixedSizeList;

/* JADX INFO: loaded from: classes4.dex */
public final class StdAttributeList extends FixedSizeList implements AttributeList {
    public StdAttributeList(int i) {
        super(i);
    }

    @Override // com.android.p003dx.p004cf.iface.AttributeList
    public Attribute get(int i) {
        return (Attribute) get0(i);
    }

    @Override // com.android.p003dx.p004cf.iface.AttributeList
    public int byteLength() {
        int size = size();
        int iByteLength = 2;
        for (int i = 0; i < size; i++) {
            iByteLength += get(i).byteLength();
        }
        return iByteLength;
    }

    @Override // com.android.p003dx.p004cf.iface.AttributeList
    public Attribute findFirst(String str) {
        int size = size();
        for (int i = 0; i < size; i++) {
            Attribute attribute = get(i);
            if (attribute.getName().equals(str)) {
                return attribute;
            }
        }
        return null;
    }

    @Override // com.android.p003dx.p004cf.iface.AttributeList
    public Attribute findNext(Attribute attribute) {
        Attribute attribute2;
        int size = size();
        int i = 0;
        while (i < size) {
            if (get(i) == attribute) {
                String name = attribute.getName();
                do {
                    i++;
                    if (i >= size) {
                        return null;
                    }
                    attribute2 = get(i);
                } while (!attribute2.getName().equals(name));
                return attribute2;
            }
            i++;
        }
        return null;
    }

    public void set(int i, Attribute attribute) {
        set0(i, attribute);
    }
}
