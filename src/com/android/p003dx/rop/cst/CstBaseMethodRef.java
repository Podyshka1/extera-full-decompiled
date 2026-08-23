package com.android.p003dx.rop.cst;

import com.android.p003dx.rop.type.Prototype;
import com.android.p003dx.rop.type.Type;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CstBaseMethodRef extends CstMemberRef {
    private Prototype instancePrototype;
    private final Prototype prototype;

    CstBaseMethodRef(CstType cstType, CstNat cstNat) {
        super(cstType, cstNat);
        String string = getNat().getDescriptor().getString();
        if (isSignaturePolymorphic()) {
            this.prototype = Prototype.fromDescriptor(string);
        } else {
            this.prototype = Prototype.intern(string);
        }
        this.instancePrototype = null;
    }

    public final Prototype getPrototype() {
        return this.prototype;
    }

    public final Prototype getPrototype(boolean z) {
        if (z) {
            return this.prototype;
        }
        if (this.instancePrototype == null) {
            this.instancePrototype = this.prototype.withFirstParameter(getDefiningClass().getClassType());
        }
        return this.instancePrototype;
    }

    @Override // com.android.p003dx.rop.cst.CstMemberRef, com.android.p003dx.rop.cst.Constant
    protected final int compareTo0(Constant constant) {
        int iCompareTo0 = super.compareTo0(constant);
        return iCompareTo0 != 0 ? iCompareTo0 : this.prototype.compareTo(((CstBaseMethodRef) constant).prototype);
    }

    @Override // com.android.p003dx.rop.type.TypeBearer
    public final Type getType() {
        return this.prototype.getReturnType();
    }

    public final int getParameterWordCount(boolean z) {
        return getPrototype(z).getParameterTypes().getWordCount();
    }

    public final boolean isInstanceInit() {
        return getNat().isInstanceInit();
    }

    public final boolean isClassInit() {
        return getNat().isClassInit();
    }

    public final boolean isSignaturePolymorphic() {
        CstType definingClass = getDefiningClass();
        if (definingClass.equals(CstType.METHOD_HANDLE)) {
            String string = getNat().getName().getString();
            string.getClass();
            if (string.equals("invoke") || string.equals("invokeExact")) {
                return true;
            }
        } else if (definingClass.equals(CstType.VAR_HANDLE)) {
            String string2 = getNat().getName().getString();
            string2.getClass();
            switch (string2) {
            }
            return true;
        }
        return false;
    }
}
