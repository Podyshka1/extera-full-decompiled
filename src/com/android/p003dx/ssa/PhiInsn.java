package com.android.p003dx.ssa;

import com.android.p003dx.rop.code.Insn;
import com.android.p003dx.rop.code.LocalItem;
import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.code.Rop;
import com.android.p003dx.rop.code.SourcePosition;
import com.android.p003dx.rop.type.Type;
import com.android.p003dx.rop.type.TypeBearer;
import com.android.p003dx.ssa.SsaInsn;
import com.android.p003dx.util.Hex;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class PhiInsn extends SsaInsn {
    private final ArrayList<Operand> operands;
    private final int ropResultReg;
    private RegisterSpecList sources;

    public interface Visitor {
        void visitPhiInsn(PhiInsn phiInsn);
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public boolean canThrow() {
        return false;
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public Rop getOpcode() {
        return null;
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public Insn getOriginalRopInsn() {
        return null;
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public boolean isPhiOrMove() {
        return true;
    }

    public PhiInsn(RegisterSpec registerSpec, SsaBasicBlock ssaBasicBlock) {
        super(registerSpec, ssaBasicBlock);
        this.operands = new ArrayList<>();
        this.ropResultReg = registerSpec.getReg();
    }

    public PhiInsn(int i, SsaBasicBlock ssaBasicBlock) {
        super(RegisterSpec.make(i, Type.VOID), ssaBasicBlock);
        this.operands = new ArrayList<>();
        this.ropResultReg = i;
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    /* JADX INFO: renamed from: clone */
    public PhiInsn mo2217clone() {
        throw new UnsupportedOperationException("can't clone phi");
    }

    public void updateSourcesToDefinitions(SsaMethod ssaMethod) {
        ArrayList<Operand> arrayList = this.operands;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Operand operand = arrayList.get(i);
            i++;
            Operand operand2 = operand;
            operand2.regSpec = operand2.regSpec.withType(ssaMethod.getDefinitionForRegister(operand2.regSpec.getReg()).getResult().getType());
        }
        this.sources = null;
    }

    public void changeResultType(TypeBearer typeBearer, LocalItem localItem) {
        setResult(RegisterSpec.makeLocalOptional(getResult().getReg(), typeBearer, localItem));
    }

    public int getRopResultReg() {
        return this.ropResultReg;
    }

    public void addPhiOperand(RegisterSpec registerSpec, SsaBasicBlock ssaBasicBlock) {
        this.operands.add(new Operand(registerSpec, ssaBasicBlock.getIndex(), ssaBasicBlock.getRopLabel()));
        this.sources = null;
    }

    public void removePhiRegister(RegisterSpec registerSpec) {
        ArrayList arrayList = new ArrayList();
        ArrayList<Operand> arrayList2 = this.operands;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Operand operand = arrayList2.get(i);
            i++;
            Operand operand2 = operand;
            if (operand2.regSpec.getReg() == registerSpec.getReg()) {
                arrayList.add(operand2);
            }
        }
        this.operands.removeAll(arrayList);
        this.sources = null;
    }

    public int predBlockIndexForSourcesIndex(int i) {
        return this.operands.get(i).blockIndex;
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public RegisterSpecList getSources() {
        RegisterSpecList registerSpecList = this.sources;
        if (registerSpecList != null) {
            return registerSpecList;
        }
        if (this.operands.size() == 0) {
            return RegisterSpecList.EMPTY;
        }
        int size = this.operands.size();
        this.sources = new RegisterSpecList(size);
        for (int i = 0; i < size; i++) {
            this.sources.set(i, this.operands.get(i).regSpec);
        }
        this.sources.setImmutable();
        return this.sources;
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public boolean isRegASource(int i) {
        ArrayList<Operand> arrayList = this.operands;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Operand operand = arrayList.get(i2);
            i2++;
            if (operand.regSpec.getReg() == i) {
                return true;
            }
        }
        return false;
    }

    public boolean areAllOperandsEqual() {
        if (this.operands.size() == 0) {
            return true;
        }
        int reg = this.operands.get(0).regSpec.getReg();
        ArrayList<Operand> arrayList = this.operands;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Operand operand = arrayList.get(i);
            i++;
            if (reg != operand.regSpec.getReg()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public final void mapSourceRegisters(RegisterMapper registerMapper) {
        ArrayList<Operand> arrayList = this.operands;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Operand operand = arrayList.get(i);
            i++;
            Operand operand2 = operand;
            RegisterSpec registerSpec = operand2.regSpec;
            RegisterSpec map = registerMapper.map(registerSpec);
            operand2.regSpec = map;
            if (registerSpec != map) {
                getBlock().getParent().onSourceChanged(this, registerSpec, operand2.regSpec);
            }
        }
        this.sources = null;
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public Insn toRopInsn() {
        throw new IllegalArgumentException("Cannot convert phi insns to rop form");
    }

    public List<SsaBasicBlock> predBlocksForReg(int i, SsaMethod ssaMethod) {
        ArrayList arrayList = new ArrayList();
        ArrayList<Operand> arrayList2 = this.operands;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            Operand operand = arrayList2.get(i2);
            i2++;
            Operand operand2 = operand;
            if (operand2.regSpec.getReg() == i) {
                arrayList.add(ssaMethod.getBlocks().get(operand2.blockIndex));
            }
        }
        return arrayList;
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public boolean hasSideEffect() {
        return Optimizer.getPreserveLocals() && getLocalAssignment() != null;
    }

    @Override // com.android.p003dx.ssa.SsaInsn
    public void accept(SsaInsn.Visitor visitor) {
        visitor.visitPhiInsn(this);
    }

    @Override // com.android.p003dx.util.ToHuman
    public String toHuman() {
        return toHumanWithInline(null);
    }

    protected final String toHumanWithInline(String str) {
        StringBuilder sb = new StringBuilder(80);
        sb.append(SourcePosition.NO_INFO);
        sb.append(": phi");
        if (str != null) {
            sb.append("(");
            sb.append(str);
            sb.append(")");
        }
        RegisterSpec result = getResult();
        if (result == null) {
            sb.append(" .");
        } else {
            sb.append(" ");
            sb.append(result.toHuman());
        }
        sb.append(" <-");
        int size = getSources().size();
        if (size == 0) {
            sb.append(" .");
        } else {
            for (int i = 0; i < size; i++) {
                sb.append(" ");
                sb.append(this.sources.get(i).toHuman() + "[b=" + Hex.m212u2(this.operands.get(i).ropLabel) + "]");
            }
        }
        return sb.toString();
    }

    private static class Operand {
        public final int blockIndex;
        public RegisterSpec regSpec;
        public final int ropLabel;

        public Operand(RegisterSpec registerSpec, int i, int i2) {
            this.regSpec = registerSpec;
            this.blockIndex = i;
            this.ropLabel = i2;
        }
    }
}
