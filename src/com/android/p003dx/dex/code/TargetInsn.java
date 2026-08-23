package com.android.p003dx.dex.code;

import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.code.SourcePosition;

/* JADX INFO: loaded from: classes4.dex */
public final class TargetInsn extends FixedSizeInsn {
    private CodeAddress target;

    public TargetInsn(Dop dop, SourcePosition sourcePosition, RegisterSpecList registerSpecList, CodeAddress codeAddress) {
        super(dop, sourcePosition, registerSpecList);
        if (codeAddress == null) {
            throw new NullPointerException("target == null");
        }
        this.target = codeAddress;
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    public DalvInsn withOpcode(Dop dop) {
        return new TargetInsn(dop, getPosition(), getRegisters(), this.target);
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    public DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        return new TargetInsn(getOpcode(), getPosition(), registerSpecList, this.target);
    }

    public TargetInsn withNewTargetAndReversed(CodeAddress codeAddress) {
        return new TargetInsn(getOpcode().getOppositeTest(), getPosition(), getRegisters(), codeAddress);
    }

    public CodeAddress getTarget() {
        return this.target;
    }

    public int getTargetAddress() {
        return this.target.getAddress();
    }

    public int getTargetOffset() {
        return this.target.getAddress() - getAddress();
    }

    public boolean hasTargetOffset() {
        return hasAddress() && this.target.hasAddress();
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    protected String argString() {
        CodeAddress codeAddress = this.target;
        if (codeAddress == null) {
            return "????";
        }
        return codeAddress.identifierString();
    }
}
