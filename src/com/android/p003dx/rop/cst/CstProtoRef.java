package com.android.p003dx.rop.cst;

import com.android.p003dx.rop.type.Prototype;
import com.android.p003dx.rop.type.Type;

/* JADX INFO: loaded from: classes4.dex */
public final class CstProtoRef extends TypedConstant {
    private final Prototype prototype;

    @Override // com.android.p003dx.rop.cst.Constant
    public boolean isCategory2() {
        return false;
    }

    public CstProtoRef(Prototype prototype) {
        this.prototype = prototype;
    }

    public static CstProtoRef make(CstString cstString) {
        return new CstProtoRef(Prototype.fromDescriptor(cstString.getString()));
    }

    public boolean equals(Object obj) {
        if (obj instanceof CstProtoRef) {
            return getPrototype().equals(((CstProtoRef) obj).getPrototype());
        }
        return false;
    }

    public int hashCode() {
        return this.prototype.hashCode();
    }

    @Override // com.android.p003dx.rop.cst.Constant
    public String typeName() {
        return "proto";
    }

    @Override // com.android.p003dx.rop.cst.Constant
    protected int compareTo0(Constant constant) {
        return this.prototype.compareTo(((CstProtoRef) constant).getPrototype());
    }

    @Override // com.android.p003dx.util.ToHuman
    public String toHuman() {
        return this.prototype.getDescriptor();
    }

    public final String toString() {
        return typeName() + "{" + toHuman() + '}';
    }

    public Prototype getPrototype() {
        return this.prototype;
    }

    @Override // com.android.p003dx.rop.type.TypeBearer
    public Type getType() {
        return Type.METHOD_TYPE;
    }
}
