package com.android.p003dx.rop.cst;

/* JADX INFO: loaded from: classes4.dex */
public final class CstInterfaceMethodRef extends CstBaseMethodRef {
    private CstMethodRef methodRef;

    public CstInterfaceMethodRef(CstType cstType, CstNat cstNat) {
        super(cstType, cstNat);
        this.methodRef = null;
    }

    @Override // com.android.p003dx.rop.cst.Constant
    public String typeName() {
        return "ifaceMethod";
    }

    public CstMethodRef toMethodRef() {
        if (this.methodRef == null) {
            this.methodRef = new CstMethodRef(getDefiningClass(), getNat());
        }
        return this.methodRef;
    }
}
