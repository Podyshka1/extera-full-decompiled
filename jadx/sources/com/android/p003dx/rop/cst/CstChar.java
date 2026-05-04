package com.android.p003dx.rop.cst;

import com.android.p003dx.rop.type.Type;
import com.android.p003dx.util.Hex;

/* JADX INFO: loaded from: classes4.dex */
public final class CstChar extends CstLiteral32 {
    public static final CstChar VALUE_0 = make((char) 0);

    public static CstChar make(char c) {
        return new CstChar(c);
    }

    public static CstChar make(int i) {
        char c = (char) i;
        if (c != i) {
            throw new IllegalArgumentException("bogus char value: " + i);
        }
        return make(c);
    }

    private CstChar(char c) {
        super(c);
    }

    public String toString() {
        int intBits = getIntBits();
        return "char{0x" + Hex.m212u2(intBits) + " / " + intBits + '}';
    }

    @Override // com.android.p003dx.rop.type.TypeBearer
    public Type getType() {
        return Type.CHAR;
    }

    @Override // com.android.p003dx.rop.cst.Constant
    public String typeName() {
        return "char";
    }

    @Override // com.android.p003dx.util.ToHuman
    public String toHuman() {
        return Integer.toString(getIntBits());
    }

    public char getValue() {
        return (char) getIntBits();
    }
}
