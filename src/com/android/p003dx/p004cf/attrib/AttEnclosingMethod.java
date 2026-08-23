package com.android.p003dx.p004cf.attrib;

import com.android.p003dx.rop.cst.CstNat;
import com.android.p003dx.rop.cst.CstType;

/* JADX INFO: loaded from: classes4.dex */
public final class AttEnclosingMethod extends BaseAttribute {
    public static final String ATTRIBUTE_NAME = "EnclosingMethod";
    private final CstNat method;
    private final CstType type;

    @Override // com.android.p003dx.p004cf.iface.Attribute
    public int byteLength() {
        return 10;
    }

    public AttEnclosingMethod(CstType cstType, CstNat cstNat) {
        super(ATTRIBUTE_NAME);
        if (cstType == null) {
            throw new NullPointerException("type == null");
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
