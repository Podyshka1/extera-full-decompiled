package com.android.dx.rop.cst;

import com.android.dx.rop.type.Type;

/* JADX INFO: loaded from: classes.dex */
public final class CstFieldRef extends CstMemberRef {
    public static CstFieldRef forPrimitiveType(Type type) {
        return new CstFieldRef(CstType.forBoxedPrimitiveType(type), CstNat.PRIMITIVE_TYPE_NAT);
    }

    public CstFieldRef(CstType cstType, CstNat cstNat) {
        super(cstType, cstNat);
    }

    @Override // com.android.dx.rop.cst.Constant
    public String typeName() {
        return "field";
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public Type getType() {
        return getNat().getFieldType();
    }

    @Override // com.android.dx.rop.cst.CstMemberRef, com.android.dx.rop.cst.Constant
    public int compareTo0(Constant constant) {
        int iCompareTo0 = super.compareTo0(constant);
        return iCompareTo0 != 0 ? iCompareTo0 : getNat().getDescriptor().compareTo((Constant) ((CstFieldRef) constant).getNat().getDescriptor());
    }
}
