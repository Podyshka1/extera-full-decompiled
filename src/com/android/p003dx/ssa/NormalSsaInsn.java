package com.android.p003dx.ssa;

import com.android.p003dx.rop.code.Insn;
import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.code.Rop;
import com.android.p003dx.ssa.SsaInsn;

/* JADX INFO: loaded from: classes4.dex */
public final class NormalSsaInsn extends SsaInsn implements Cloneable {
    private Insn insn;

    NormalSsaInsn(Insn insn, SsaBasicBlock ssaBasicBlock) {
        super(insn.getResult(), ssaBasicBlock);
        this.insn = insn;
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public final void mapSourceRegisters(RegisterMapper registerMapper) {
        RegisterSpecList sources = this.insn.getSources();
        RegisterSpecList map = registerMapper.map(sources);
        if (map != sources) {
            this.insn = this.insn.withNewRegisters(getResult(), map);
            getBlock().getParent().onSourcesChanged(this, sources);
        }
    }

    public final void changeOneSource(int i, RegisterSpec registerSpec) {
        RegisterSpecList sources = this.insn.getSources();
        int size = sources.size();
        RegisterSpecList registerSpecList = new RegisterSpecList(size);
        int i2 = 0;
        while (i2 < size) {
            registerSpecList.set(i2, i2 == i ? registerSpec : sources.get(i2));
            i2++;
        }
        registerSpecList.setImmutable();
        RegisterSpec registerSpec2 = sources.get(i);
        if (registerSpec2.getReg() != registerSpec.getReg()) {
            getBlock().getParent().onSourceChanged(this, registerSpec2, registerSpec);
        }
        this.insn = this.insn.withNewRegisters(getResult(), registerSpecList);
    }

    public final void setNewSources(RegisterSpecList registerSpecList) {
        if (this.insn.getSources().size() != registerSpecList.size()) {
            throw new RuntimeException("Sources counts don't match");
        }
        this.insn = this.insn.withNewRegisters(getResult(), registerSpecList);
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public NormalSsaInsn mo2217clone() {
        return (NormalSsaInsn) super.mo2217clone();
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public RegisterSpecList getSources() {
        return this.insn.getSources();
    }

    @Override // com.android.p003dx.util.ToHuman
    public String toHuman() {
        return toRopInsn().toHuman();
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public Insn toRopInsn() {
        return this.insn.withNewRegisters(getResult(), this.insn.getSources());
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public Rop getOpcode() {
        return this.insn.getOpcode();
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public Insn getOriginalRopInsn() {
        return this.insn;
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public RegisterSpec getLocalAssignment() {
        RegisterSpec result;
        if (this.insn.getOpcode().getOpcode() == 54) {
            result = this.insn.getSources().get(0);
        } else {
            result = getResult();
        }
        if (result == null || result.getLocalItem() == null) {
            return null;
        }
        return result;
    }

    public void upgradeToLiteral() {
        RegisterSpecList sources = this.insn.getSources();
        this.insn = this.insn.withSourceLiteral();
        getBlock().getParent().onSourcesChanged(this, sources);
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public boolean isNormalMoveInsn() {
        return this.insn.getOpcode().getOpcode() == 2;
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public boolean isMoveException() {
        return this.insn.getOpcode().getOpcode() == 4;
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public boolean canThrow() {
        return this.insn.canThrow();
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public void accept(SsaInsn.Visitor visitor) {
        if (isNormalMoveInsn()) {
            visitor.visitMoveInsn(this);
        } else {
            visitor.visitNonMoveInsn(this);
        }
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public boolean isPhiOrMove() {
        return isNormalMoveInsn();
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public boolean hasSideEffect() {
        Rop opcode = getOpcode();
        if (opcode.getBranchingness() != 1) {
            return true;
        }
        boolean z = Optimizer.getPreserveLocals() && getLocalAssignment() != null;
        int opcode2 = opcode.getOpcode();
        if (opcode2 == 2 || opcode2 == 5 || opcode2 == 55) {
            return z;
        }
        return true;
    }
}
