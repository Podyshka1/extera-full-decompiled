package com.android.p003dx.rop.cst;

import com.android.p003dx.p004cf.code.BootstrapMethodArgumentsList;
import com.android.p003dx.rop.cst.CstArray;
import com.android.p003dx.rop.type.Prototype;

/* JADX INFO: loaded from: classes4.dex */
public final class CstCallSite extends CstArray {
    @Override // com.android.p003dx.rop.cst.CstArray, com.android.p003dx.rop.cst.Constant
    public boolean isCategory2() {
        return false;
    }

    public static CstCallSite make(CstMethodHandle cstMethodHandle, CstNat cstNat, BootstrapMethodArgumentsList bootstrapMethodArgumentsList) {
        if (cstMethodHandle == null) {
            throw new NullPointerException("bootstrapMethodHandle == null");
        }
        if (cstNat == null) {
            throw new NullPointerException("nat == null");
        }
        CstArray.List list = new CstArray.List(bootstrapMethodArgumentsList.size() + 3);
        list.set(0, cstMethodHandle);
        list.set(1, cstNat.getName());
        list.set(2, new CstProtoRef(Prototype.fromDescriptor(cstNat.getDescriptor().getString())));
        for (int i = 0; i < bootstrapMethodArgumentsList.size(); i++) {
            list.set(i + 3, bootstrapMethodArgumentsList.get(i));
        }
        list.setImmutable();
        return new CstCallSite(list);
    }

    private CstCallSite(CstArray.List list) {
        super(list);
    }

    @Override // com.android.p003dx.rop.cst.CstArray
    public boolean equals(Object obj) {
        if (obj instanceof CstCallSite) {
            return getList().equals(((CstCallSite) obj).getList());
        }
        return false;
    }

    @Override // com.android.p003dx.rop.cst.CstArray
    public int hashCode() {
        return getList().hashCode();
    }

    @Override // com.android.p003dx.rop.cst.CstArray, com.android.p003dx.rop.cst.Constant
    protected int compareTo0(Constant constant) {
        return getList().compareTo(((CstCallSite) constant).getList());
    }

    @Override // com.android.p003dx.rop.cst.CstArray
    public String toString() {
        return getList().toString("call site{", ", ", "}");
    }

    @Override // com.android.p003dx.rop.cst.CstArray, com.android.p003dx.rop.cst.Constant
    public String typeName() {
        return "call site";
    }

    @Override // com.android.p003dx.rop.cst.CstArray, com.android.p003dx.util.ToHuman
    public String toHuman() {
        return getList().toHuman("{", ", ", "}");
    }
}
