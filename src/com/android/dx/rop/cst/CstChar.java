package com.android.dx.rop.cst;

import com.android.dx.rop.type.Type;
import com.android.dx.util.Hex;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public final class CstChar extends CstLiteral32 {
    public static final CstChar VALUE_0 = make((char) 0);

    public static CstChar make(char c2) {
        return new CstChar(c2);
    }

    public static CstChar make(int i) {
        char c2 = (char) i;
        if (c2 != i) {
            CharCodeKt$$ExternalSyntheticBUOutline0.m860m("bogus char value: ", i);
            return null;
        }
        return make(c2);
    }

    private CstChar(char c2) {
        super(c2);
    }

    public String toString() {
        int intBits = getIntBits();
        return "char{0x" + Hex.u2(intBits) + " / " + intBits + '}';
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public Type getType() {
        return Type.CHAR;
    }

    @Override // com.android.dx.rop.cst.Constant
    public String typeName() {
        return "char";
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        return Integer.toString(getIntBits());
    }

    public char getValue() {
        return (char) getIntBits();
    }
}
