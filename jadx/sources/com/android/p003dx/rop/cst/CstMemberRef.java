package com.android.p003dx.rop.cst;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CstMemberRef extends TypedConstant {
    private final CstType definingClass;
    private final CstNat nat;

    @Override // com.android.p003dx.rop.cst.Constant
    public final boolean isCategory2() {
        return false;
    }

    CstMemberRef(CstType cstType, CstNat cstNat) {
        if (cstType == null) {
            throw new NullPointerException("definingClass == null");
        }
        if (cstNat == null) {
            throw new NullPointerException("nat == null");
        }
        this.definingClass = cstType;
        this.nat = cstNat;
    }

    public final boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            CstMemberRef cstMemberRef = (CstMemberRef) obj;
            if (this.definingClass.equals(cstMemberRef.definingClass) && this.nat.equals(cstMemberRef.nat)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.definingClass.hashCode() * 31) ^ this.nat.hashCode();
    }

    @Override // com.android.p003dx.rop.cst.Constant
    protected int compareTo0(Constant constant) {
        CstMemberRef cstMemberRef = (CstMemberRef) constant;
        int iCompareTo = this.definingClass.compareTo((Constant) cstMemberRef.definingClass);
        return iCompareTo != 0 ? iCompareTo : this.nat.getName().compareTo((Constant) cstMemberRef.nat.getName());
    }

    public final String toString() {
        return typeName() + '{' + toHuman() + '}';
    }

    @Override // com.android.p003dx.util.ToHuman
    public final String toHuman() {
        return this.definingClass.toHuman() + '.' + this.nat.toHuman();
    }

    public final CstType getDefiningClass() {
        return this.definingClass;
    }

    public final CstNat getNat() {
        return this.nat;
    }
}
