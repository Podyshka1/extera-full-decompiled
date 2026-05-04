package com.android.dx.rop.cst;

import com.android.dx.rop.type.Type;

/* JADX INFO: loaded from: classes4.dex */
public final class CstEnumRef extends CstMemberRef {
    private CstFieldRef fieldRef;

    public CstEnumRef(CstNat cstNat) {
        super(new CstType(cstNat.getFieldType()), cstNat);
        this.fieldRef = null;
    }

    @Override // com.android.dx.rop.cst.Constant
    public String typeName() {
        return "enum";
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public Type getType() {
        return getDefiningClass().getClassType();
    }

    public CstFieldRef getFieldRef() {
        if (this.fieldRef == null) {
            this.fieldRef = new CstFieldRef(getDefiningClass(), getNat());
        }
        return this.fieldRef;
    }
}
