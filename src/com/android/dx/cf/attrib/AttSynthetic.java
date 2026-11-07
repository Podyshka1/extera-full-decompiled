package com.android.dx.cf.attrib;

/* JADX INFO: loaded from: classes4.dex */
public final class AttSynthetic extends BaseAttribute {
    public static final String ATTRIBUTE_NAME = "Synthetic";

    @Override // com.android.dx.cf.iface.Attribute
    public int byteLength() {
        return 6;
    }

    public AttSynthetic() {
        super(ATTRIBUTE_NAME);
    }
}
