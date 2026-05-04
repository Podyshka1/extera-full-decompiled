package com.android.p003dx.rop.code;

import com.android.p003dx.rop.code.Insn;
import com.android.p003dx.rop.type.StdTypeList;
import com.android.p003dx.util.Hex;
import com.android.p003dx.util.IntList;
import com.android.p003dx.util.LabeledItem;
import com.android.p003dx.util.LabeledList;

/* JADX INFO: loaded from: classes4.dex */
public final class BasicBlockList extends LabeledList {
    private int regCount;

    public BasicBlockList(int i) {
        super(i);
        this.regCount = -1;
    }

    private BasicBlockList(BasicBlockList basicBlockList) {
        super(basicBlockList);
        this.regCount = basicBlockList.regCount;
    }

    public BasicBlock get(int i) {
        return (BasicBlock) get0(i);
    }

    public void set(int i, BasicBlock basicBlock) {
        super.set(i, (LabeledItem) basicBlock);
        this.regCount = -1;
    }

    public int getRegCount() {
        if (this.regCount == -1) {
            RegCountVisitor regCountVisitor = new RegCountVisitor();
            forEachInsn(regCountVisitor);
            this.regCount = regCountVisitor.getRegCount();
        }
        return this.regCount;
    }

    public int getInstructionCount() {
        int size = size();
        int size2 = 0;
        for (int i = 0; i < size; i++) {
            BasicBlock basicBlock = (BasicBlock) getOrNull0(i);
            if (basicBlock != null) {
                size2 += basicBlock.getInsns().size();
            }
        }
        return size2;
    }

    public int getEffectiveInstructionCount() {
        int size = size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            BasicBlock basicBlock = (BasicBlock) getOrNull0(i2);
            if (basicBlock != null) {
                InsnList insns = basicBlock.getInsns();
                int size2 = insns.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    if (insns.get(i3).getOpcode().getOpcode() != 54) {
                        i++;
                    }
                }
            }
        }
        return i;
    }

    public BasicBlock labelToBlock(int i) {
        int iIndexOfLabel = indexOfLabel(i);
        if (iIndexOfLabel < 0) {
            throw new IllegalArgumentException("no such label: " + Hex.m212u2(i));
        }
        return get(iIndexOfLabel);
    }

    public void forEachInsn(Insn.Visitor visitor) {
        int size = size();
        for (int i = 0; i < size; i++) {
            get(i).getInsns().forEach(visitor);
        }
    }

    public BasicBlockList withRegisterOffset(int i) {
        int size = size();
        BasicBlockList basicBlockList = new BasicBlockList(size);
        for (int i2 = 0; i2 < size; i2++) {
            BasicBlock basicBlock = (BasicBlock) get0(i2);
            if (basicBlock != null) {
                basicBlockList.set(i2, basicBlock.withRegisterOffset(i));
            }
        }
        if (isImmutable()) {
            basicBlockList.setImmutable();
        }
        return basicBlockList;
    }

    public BasicBlockList getMutableCopy() {
        return new BasicBlockList(this);
    }

    public BasicBlock preferredSuccessorOf(BasicBlock basicBlock) {
        int primarySuccessor = basicBlock.getPrimarySuccessor();
        IntList successors = basicBlock.getSuccessors();
        int size = successors.size();
        if (size == 0) {
            return null;
        }
        if (size == 1) {
            return labelToBlock(successors.get(0));
        }
        if (primarySuccessor != -1) {
            return labelToBlock(primarySuccessor);
        }
        return labelToBlock(successors.get(0));
    }

    public boolean catchesEqual(BasicBlock basicBlock, BasicBlock basicBlock2) {
        if (!StdTypeList.equalContents(basicBlock.getExceptionHandlerTypes(), basicBlock2.getExceptionHandlerTypes())) {
            return false;
        }
        IntList successors = basicBlock.getSuccessors();
        IntList successors2 = basicBlock2.getSuccessors();
        int size = successors.size();
        int primarySuccessor = basicBlock.getPrimarySuccessor();
        int primarySuccessor2 = basicBlock2.getPrimarySuccessor();
        if ((primarySuccessor == -1 || primarySuccessor2 == -1) && primarySuccessor != primarySuccessor2) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            int i2 = successors.get(i);
            int i3 = successors2.get(i);
            if (i2 == primarySuccessor) {
                if (i3 != primarySuccessor2) {
                    return false;
                }
            } else if (i2 != i3) {
                return false;
            }
        }
        return true;
    }

    private static class RegCountVisitor implements Insn.Visitor {
        private int regCount = 0;

        public int getRegCount() {
            return this.regCount;
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitPlainInsn(PlainInsn plainInsn) {
            visit(plainInsn);
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitPlainCstInsn(PlainCstInsn plainCstInsn) {
            visit(plainCstInsn);
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitSwitchInsn(SwitchInsn switchInsn) {
            visit(switchInsn);
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitThrowingCstInsn(ThrowingCstInsn throwingCstInsn) {
            visit(throwingCstInsn);
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitThrowingInsn(ThrowingInsn throwingInsn) {
            visit(throwingInsn);
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitFillArrayDataInsn(FillArrayDataInsn fillArrayDataInsn) {
            visit(fillArrayDataInsn);
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitInvokePolymorphicInsn(InvokePolymorphicInsn invokePolymorphicInsn) {
            visit(invokePolymorphicInsn);
        }

        private void visit(Insn insn) {
            RegisterSpec result = insn.getResult();
            if (result != null) {
                processReg(result);
            }
            RegisterSpecList sources = insn.getSources();
            int size = sources.size();
            for (int i = 0; i < size; i++) {
                processReg(sources.get(i));
            }
        }

        private void processReg(RegisterSpec registerSpec) {
            int nextReg = registerSpec.getNextReg();
            if (nextReg > this.regCount) {
                this.regCount = nextReg;
            }
        }
    }
}
