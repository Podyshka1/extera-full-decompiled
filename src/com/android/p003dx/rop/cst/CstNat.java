package com.android.p003dx.rop.cst;

import com.android.p003dx.rop.type.Type;

/* JADX INFO: loaded from: classes4.dex */
public final class CstNat extends Constant {
    public static final CstNat PRIMITIVE_TYPE_NAT = new CstNat(new CstString("TYPE"), new CstString("Ljava/lang/Class;"));
    private final CstString descriptor;
    private final CstString name;

    @Override // com.android.p003dx.rop.cst.Constant
    public boolean isCategory2() {
        return false;
    }

    public CstNat(CstString cstString, CstString cstString2) {
        if (cstString == null) {
            throw new NullPointerException("name == null");
        }
        if (cstString2 == null) {
            throw new NullPointerException("descriptor == null");
        }
        this.name = cstString;
        this.descriptor = cstString2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CstNat)) {
            return false;
        }
        CstNat cstNat = (CstNat) obj;
        return this.name.equals(cstNat.name) && this.descriptor.equals(cstNat.descriptor);
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) ^ this.descriptor.hashCode();
    }

    @Override // com.android.p003dx.rop.cst.Constant
    protected int compareTo0(Constant constant) {
        CstNat cstNat = (CstNat) constant;
        int iCompareTo = this.name.compareTo((Constant) cstNat.name);
        return iCompareTo != 0 ? iCompareTo : this.descriptor.compareTo((Constant) cstNat.descriptor);
    }

    public String toString() {
        return "nat{" + toHuman() + '}';
    }

    @Override // com.android.p003dx.rop.cst.Constant
    public String typeName() {
        return "nat";
    }

    public CstString getName() {
        return this.name;
    }

    public CstString getDescriptor() {
        return this.descriptor;
    }

    @Override // com.android.p003dx.util.ToHuman
    public String toHuman() {
        return this.name.toHuman() + ':' + this.descriptor.toHuman();
    }

    public Type getFieldType() {
        return Type.intern(this.descriptor.getString());
    }

    public final boolean isInstanceInit() {
        return this.name.getString().equals("<init>");
    }

    public final boolean isClassInit() {
        return this.name.getString().equals("<clinit>");
    }
}
