package com.android.p003dx.ssa;

import com.android.p003dx.rop.code.Insn;
import com.android.p003dx.rop.code.LocalItem;
import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.code.Rop;
import com.android.p003dx.util.ToHuman;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SsaInsn implements ToHuman, Cloneable {
    private final SsaBasicBlock block;
    private RegisterSpec result;

    public interface Visitor {
        void visitMoveInsn(NormalSsaInsn normalSsaInsn);

        void visitNonMoveInsn(NormalSsaInsn normalSsaInsn);

        void visitPhiInsn(PhiInsn phiInsn);
    }

    public abstract void accept(Visitor visitor);

    public abstract boolean canThrow();

    public abstract Rop getOpcode();

    public abstract Insn getOriginalRopInsn();

    public abstract RegisterSpecList getSources();

    public abstract boolean hasSideEffect();

    public boolean isMoveException() {
        return false;
    }

    public boolean isNormalMoveInsn() {
        return false;
    }

    public abstract boolean isPhiOrMove();

    public abstract void mapSourceRegisters(RegisterMapper registerMapper);

    public abstract Insn toRopInsn();

    protected SsaInsn(RegisterSpec registerSpec, SsaBasicBlock ssaBasicBlock) {
        if (ssaBasicBlock == null) {
            throw new NullPointerException("block == null");
        }
        this.block = ssaBasicBlock;
        this.result = registerSpec;
    }

    public static SsaInsn makeFromRop(Insn insn, SsaBasicBlock ssaBasicBlock) {
        return new NormalSsaInsn(insn, ssaBasicBlock);
    }

    @Override // 
    /* JADX INFO: renamed from: clone */
    public SsaInsn mo2217clone() {
        try {
            return (SsaInsn) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException("unexpected", e);
        }
    }

    public RegisterSpec getResult() {
        return this.result;
    }

    protected void setResult(RegisterSpec registerSpec) {
        if (registerSpec == null) {
            throw new NullPointerException("result == null");
        }
        this.result = registerSpec;
    }

    public SsaBasicBlock getBlock() {
        return this.block;
    }

    public boolean isResultReg(int i) {
        RegisterSpec registerSpec = this.result;
        return registerSpec != null && registerSpec.getReg() == i;
    }

    public void changeResultReg(int i) {
        RegisterSpec registerSpec = this.result;
        if (registerSpec != null) {
            this.result = registerSpec.withReg(i);
        }
    }

    public final void setResultLocal(LocalItem localItem) {
        if (localItem != this.result.getLocalItem()) {
            if (localItem == null || !localItem.equals(this.result.getLocalItem())) {
                this.result = RegisterSpec.makeLocalOptional(this.result.getReg(), this.result.getType(), localItem);
            }
        }
    }

    public final void mapRegisters(RegisterMapper registerMapper) {
        RegisterSpec registerSpec = this.result;
        this.result = registerMapper.map(registerSpec);
        this.block.getParent().updateOneDefinition(this, registerSpec);
        mapSourceRegisters(registerMapper);
    }

    public RegisterSpec getLocalAssignment() {
        RegisterSpec registerSpec = this.result;
        if (registerSpec == null || registerSpec.getLocalItem() == null) {
            return null;
        }
        return this.result;
    }

    public boolean isRegASource(int i) {
        return getSources().specForRegister(i) != null;
    }
}
