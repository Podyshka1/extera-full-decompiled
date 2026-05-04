package com.android.p003dx.p004cf.code;

import com.android.p003dx.rop.type.Type;
import com.android.p003dx.rop.type.TypeBearer;
import com.android.p003dx.util.Hex;

/* JADX INFO: loaded from: classes4.dex */
public final class ReturnAddress implements TypeBearer {
    private final int subroutineAddress;

    @Override // com.android.p003dx.rop.type.TypeBearer
    public TypeBearer getFrameType() {
        return this;
    }

    @Override // com.android.p003dx.rop.type.TypeBearer
    public boolean isConstant() {
        return false;
    }

    public ReturnAddress(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("subroutineAddress < 0");
        }
        this.subroutineAddress = i;
    }

    public String toString() {
        return "<addr:" + Hex.m212u2(this.subroutineAddress) + ">";
    }

    @Override // com.android.p003dx.util.ToHuman
    public String toHuman() {
        return toString();
    }

    @Override // com.android.p003dx.rop.type.TypeBearer
    public Type getType() {
        return Type.RETURN_ADDRESS;
    }

    @Override // com.android.p003dx.rop.type.TypeBearer
    public int getBasicType() {
        return Type.RETURN_ADDRESS.getBasicType();
    }

    @Override // com.android.p003dx.rop.type.TypeBearer
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
