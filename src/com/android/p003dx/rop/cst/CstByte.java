package com.android.p003dx.rop.cst;

import com.android.p003dx.rop.type.Type;
import com.android.p003dx.util.Hex;

/* JADX INFO: loaded from: classes4.dex */
public final class CstByte extends CstLiteral32 {
    public static final CstByte VALUE_0 = make((byte) 0);

    public static CstByte make(byte b) {
        return new CstByte(b);
    }

    public static CstByte make(int i) {
        byte b = (byte) i;
        if (b != i) {
            throw new IllegalArgumentException("bogus byte value: " + i);
        }
        return make(b);
    }

    private CstByte(byte b) {
        super(b);
    }

    public String toString() {
        int intBits = getIntBits();
        return "byte{0x" + Hex.m211u1(intBits) + " / " + intBits + '}';
    }

    @Override // com.android.p003dx.rop.type.TypeBearer
    public Type getType() {
        return Type.BYTE;
    }

    @Override // com.android.p003dx.rop.cst.Constant
    public String typeName() {
        return "byte";
    }

    @Override // com.android.p003dx.util.ToHuman
    public String toHuman() {
        return Integer.toString(getIntBits());
    }

    public byte getValue() {
        return (byte) getIntBits();
    }
}
