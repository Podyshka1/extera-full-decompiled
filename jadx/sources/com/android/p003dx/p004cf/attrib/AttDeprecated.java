package com.android.p003dx.p004cf.attrib;

/* JADX INFO: loaded from: classes4.dex */
public final class AttDeprecated extends BaseAttribute {
    public static final String ATTRIBUTE_NAME = "Deprecated";

    @Override // com.android.p003dx.p004cf.iface.Attribute
    public int byteLength() {
        return 6;
    }

    public AttDeprecated() {
        super(ATTRIBUTE_NAME);
    }
}
