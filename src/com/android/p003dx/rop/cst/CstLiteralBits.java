package com.android.p003dx.rop.cst;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CstLiteralBits extends TypedConstant {
    public abstract boolean fitsInInt();

    public abstract int getIntBits();

    public abstract long getLongBits();

    public boolean fitsIn16Bits() {
        if (!fitsInInt()) {
            return false;
        }
        int intBits = getIntBits();
        return ((short) intBits) == intBits;
    }

    public boolean fitsIn8Bits() {
        if (!fitsInInt()) {
            return false;
        }
        int intBits = getIntBits();
        return ((byte) intBits) == intBits;
    }
}
