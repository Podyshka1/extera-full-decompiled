package com.android.p003dx.rop.cst;

import com.android.p003dx.rop.type.Type;
import com.android.p003dx.util.Hex;

/* JADX INFO: loaded from: classes4.dex */
public final class CstLong extends CstLiteral64 {
    public static final CstLong VALUE_0 = make(0);
    public static final CstLong VALUE_1 = make(1);

    public static CstLong make(long j) {
        return new CstLong(j);
    }

    private CstLong(long j) {
        super(j);
    }

    public String toString() {
        long longBits = getLongBits();
        return "long{0x" + Hex.m215u8(longBits) + " / " + longBits + '}';
    }

    @Override // com.android.p003dx.rop.type.TypeBearer
    public Type getType() {
        return Type.LONG;
    }

    @Override // com.android.p003dx.rop.cst.Constant
    public String typeName() {
        return "long";
    }

    @Override // com.android.p003dx.util.ToHuman
    public String toHuman() {
        return Long.toString(getLongBits());
    }

    public long getValue() {
        return getLongBits();
    }
}
