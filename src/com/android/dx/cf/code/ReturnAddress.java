package com.android.dx.cf.code;

import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.util.Hex;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class ReturnAddress implements TypeBearer {
    private final int subroutineAddress;

    @Override // com.android.dx.rop.type.TypeBearer
    public TypeBearer getFrameType() {
        return this;
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public boolean isConstant() {
        return false;
    }

    public ReturnAddress(int i) {
        if (i < 0) {
            f$$ExternalSyntheticBUOutline1.m212m("subroutineAddress < 0");
            throw null;
        }
        this.subroutineAddress = i;
    }

    public String toString() {
        return "<addr:" + Hex.u2(this.subroutineAddress) + ">";
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        return toString();
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public Type getType() {
        return Type.RETURN_ADDRESS;
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public int getBasicType() {
        return Type.RETURN_ADDRESS.getBasicType();
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public int getBasicFrameType() {
        return Type.RETURN_ADDRESS.getBasicFrameType();
    }

    public boolean equals(Object obj) {
        return (obj instanceof ReturnAddress) && this.subroutineAddress == ((ReturnAddress) obj).subroutineAddress;
    }

    public int hashCode() {
        return this.subroutineAddress;
    }

    public int getSubroutineAddress() {
        return this.subroutineAddress;
    }
}
