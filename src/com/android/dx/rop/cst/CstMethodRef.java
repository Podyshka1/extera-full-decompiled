package com.android.dx.rop.cst;

/* JADX INFO: loaded from: classes.dex */
public final class CstMethodRef extends CstBaseMethodRef {
    public CstMethodRef(CstType cstType, CstNat cstNat) {
        super(cstType, cstNat);
    }

    @Override // com.android.dx.rop.cst.Constant
    public String typeName() {
        return "method";
    }
}
