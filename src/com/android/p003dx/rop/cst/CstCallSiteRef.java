package com.android.p003dx.rop.cst;

import com.android.p003dx.rop.type.Prototype;
import com.android.p003dx.rop.type.Type;

/* JADX INFO: loaded from: classes4.dex */
public class CstCallSiteRef extends Constant {

    /* JADX INFO: renamed from: id */
    private final int f109id;
    private final CstInvokeDynamic invokeDynamic;

    @Override // com.android.p003dx.rop.cst.Constant
    public boolean isCategory2() {
        return false;
    }

    CstCallSiteRef(CstInvokeDynamic cstInvokeDynamic, int i) {
        if (cstInvokeDynamic == null) {
            throw new NullPointerException("invokeDynamic == null");
        }
        this.invokeDynamic = cstInvokeDynamic;
        this.f109id = i;
    }

    @Override // com.android.p003dx.rop.cst.Constant
    public String typeName() {
        return "CallSiteRef";
    }

    @Override // com.android.p003dx.rop.cst.Constant
    protected int compareTo0(Constant constant) {
        CstCallSiteRef cstCallSiteRef = (CstCallSiteRef) constant;
        int iCompareTo = this.invokeDynamic.compareTo((Constant) cstCallSiteRef.invokeDynamic);
        return iCompareTo != 0 ? iCompareTo : Integer.compare(this.f109id, cstCallSiteRef.f109id);
    }

    @Override // com.android.p003dx.util.ToHuman
    public String toHuman() {
        return getCallSite().toHuman();
    }

    public String toString() {
        return getCallSite().toString();
    }

    public Prototype getPrototype() {
        return this.invokeDynamic.getPrototype();
    }

    public Type getReturnType() {
        return this.invokeDynamic.getReturnType();
    }

    public CstCallSite getCallSite() {
        return this.invokeDynamic.getCallSite();
    }
}
