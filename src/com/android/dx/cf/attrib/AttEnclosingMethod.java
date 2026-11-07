package com.android.dx.cf.attrib;

import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstType;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public final class AttEnclosingMethod extends BaseAttribute {
    public static final String ATTRIBUTE_NAME = "EnclosingMethod";
    private final CstNat method;
    private final CstType type;

    @Override // com.android.dx.cf.iface.Attribute
    public int byteLength() {
        return 10;
    }

    public AttEnclosingMethod(CstType cstType, CstNat cstNat) {
        super(ATTRIBUTE_NAME);
        if (cstType == null) {
            f$$ExternalSyntheticBUOutline2.m213m("type == null");
            throw null;
        }
        this.type = cstType;
        this.method = cstNat;
    }

    public CstType getEnclosingClass() {
        return this.type;
    }

    public CstNat getMethod() {
        return this.method;
    }
}
