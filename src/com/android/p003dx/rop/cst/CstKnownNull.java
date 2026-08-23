package com.android.p003dx.rop.cst;

import com.android.p003dx.rop.type.Type;

/* JADX INFO: loaded from: classes4.dex */
public final class CstKnownNull extends CstLiteralBits {
    public static final CstKnownNull THE_ONE = new CstKnownNull();

    @Override // com.android.p003dx.rop.cst.Constant
    protected int compareTo0(Constant constant) {
        return 0;
    }

    @Override // com.android.p003dx.rop.cst.CstLiteralBits
    public boolean fitsInInt() {
        return true;
    }

    @Override // com.android.p003dx.rop.cst.CstLiteralBits
    public int getIntBits() {
        return 0;
    }

    @Override // com.android.p003dx.rop.cst.CstLiteralBits
    public long getLongBits() {
        return 0L;
    }

    public int hashCode() {
        return 1147565434;
    }

    @Override // com.android.p003dx.rop.cst.Constant
    public boolean isCategory2() {
        return false;
    }

    private CstKnownNull() {
    }

    public boolean equals(Object obj) {
        return obj instanceof CstKnownNull;
    }

    public String toString() {
        return "known-null";
    }

    @Override // com.android.p003dx.rop.type.TypeBearer
    public Type getType() {
        return Type.KNOWN_NULL;
    }

    @Override // com.android.p003dx.rop.cst.Constant
    public String typeName() {
        return "known-null";
    }

    @Override // com.android.p003dx.util.ToHuman
    public String toHuman() {
        return "null";
    }
}
