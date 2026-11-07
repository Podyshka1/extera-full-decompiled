package com.android.dx.cf.attrib;

import com.android.dx.rop.cst.CstString;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public final class AttSignature extends BaseAttribute {
    public static final String ATTRIBUTE_NAME = "Signature";
    private final CstString signature;

    @Override // com.android.dx.cf.iface.Attribute
    public int byteLength() {
        return 8;
    }

    public AttSignature(CstString cstString) {
        super(ATTRIBUTE_NAME);
        if (cstString == null) {
            f$$ExternalSyntheticBUOutline2.m216m("signature == null");
            throw null;
        }
        this.signature = cstString;
    }

    public CstString getSignature() {
        return this.signature;
    }
}
