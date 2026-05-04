package com.android.p003dx.p004cf.attrib;

import com.android.p003dx.rop.cst.CstString;

/* JADX INFO: loaded from: classes4.dex */
public final class AttSignature extends BaseAttribute {
    public static final String ATTRIBUTE_NAME = "Signature";
    private final CstString signature;

    @Override // com.android.p003dx.p004cf.iface.Attribute
    public int byteLength() {
        return 8;
    }

    public AttSignature(CstString cstString) {
        super(ATTRIBUTE_NAME);
        if (cstString == null) {
            throw new NullPointerException("signature == null");
        }
        this.signature = cstString;
    }

    public CstString getSignature() {
        return this.signature;
    }
}
