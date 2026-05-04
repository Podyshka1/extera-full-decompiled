package com.android.p003dx.rop.cst;

/* JADX INFO: loaded from: classes4.dex */
public final class CstMethodRef extends CstBaseMethodRef {
    public CstMethodRef(CstType cstType, CstNat cstNat) {
        super(cstType, cstNat);
    }

    @Override // com.android.p003dx.rop.cst.Constant
    public String typeName() {
        return "method";
    }
}
