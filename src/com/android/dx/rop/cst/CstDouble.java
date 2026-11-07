package com.android.dx.rop.cst;

import com.android.dx.rop.type.Type;
import com.android.dx.util.Hex;

/* JADX INFO: loaded from: classes4.dex */
public final class CstDouble extends CstLiteral64 {
    public static final CstDouble VALUE_0 = new CstDouble(Double.doubleToLongBits(0.0d));
    public static final CstDouble VALUE_1 = new CstDouble(Double.doubleToLongBits(1.0d));

    public static CstDouble make(long j) {
        return new CstDouble(j);
    }

    private CstDouble(long j) {
        super(j);
    }

    public String toString() {
        long longBits = getLongBits();
        return "double{0x" + Hex.u8(longBits) + " / " + Double.longBitsToDouble(longBits) + '}';
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public Type getType() {
        return Type.DOUBLE;
    }

    @Override // com.android.dx.rop.cst.Constant
    public String typeName() {
        return "double";
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        return Double.toString(Double.longBitsToDouble(getLongBits()));
    }

    public double getValue() {
        return Double.longBitsToDouble(getLongBits());
    }
}
