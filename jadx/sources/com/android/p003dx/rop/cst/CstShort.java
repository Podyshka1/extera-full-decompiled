package com.android.p003dx.rop.cst;

import com.android.p003dx.rop.type.Type;
import com.android.p003dx.util.Hex;

/* JADX INFO: loaded from: classes4.dex */
public final class CstShort extends CstLiteral32 {
    public static final CstShort VALUE_0 = make((short) 0);

    public static CstShort make(short s) {
        return new CstShort(s);
    }

    public static CstShort make(int i) {
        short s = (short) i;
        if (s != i) {
            throw new IllegalArgumentException("bogus short value: " + i);
        }
        return make(s);
    }

    private CstShort(short s) {
        super(s);
    }

    public String toString() {
        int intBits = getIntBits();
        return "short{0x" + Hex.m212u2(intBits) + " / " + intBits + '}';
    }

    @Override // com.android.p003dx.rop.type.TypeBearer
    public Type getType() {
        return Type.SHORT;
    }

    @Override // com.android.p003dx.rop.cst.Constant
    public String typeName() {
        return "short";
    }

    @Override // com.android.p003dx.util.ToHuman
    public String toHuman() {
        return Integer.toString(getIntBits());
    }

    public short getValue() {
        return (short) getIntBits();
    }
}
