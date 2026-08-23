package com.android.p003dx.dex.code;

import com.android.p003dx.dex.DexOptions;
import com.android.p003dx.rop.code.BasicBlock;
import com.android.p003dx.rop.code.BasicBlockList;
import com.android.p003dx.rop.code.FillArrayDataInsn;
import com.android.p003dx.rop.code.Insn;
import com.android.p003dx.rop.code.InvokePolymorphicInsn;
import com.android.p003dx.rop.code.LocalVariableInfo;
import com.android.p003dx.rop.code.PlainCstInsn;
import com.android.p003dx.rop.code.PlainInsn;
import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.code.Rop;
import com.android.p003dx.rop.code.RopMethod;
import com.android.p003dx.rop.code.SourcePosition;
import com.android.p003dx.rop.code.SwitchInsn;
import com.android.p003dx.rop.code.ThrowingCstInsn;
import com.android.p003dx.rop.code.ThrowingInsn;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstInteger;
import com.android.p003dx.util.Bits;
import com.android.p003dx.util.IntList;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class RopTranslator {
    private final BlockAddresses addresses;
    private final DexOptions dexOptions;
    private final LocalVariableInfo locals;
    private final RopMethod method;
    private int[] order = null;
    private final OutputCollector output;
    private final int paramSize;
    private final boolean paramsAreInOrder;
    private final int positionInfo;
    private final int regCount;
    private final TranslationVisitor translationVisitor;

    public static DalvCode translate(RopMethod ropMethod, int i, LocalVariableInfo localVariableInfo, int i2, DexOptions dexOptions) {
        return new RopTranslator(ropMethod, i, localVariableInfo, i2, dexOptions).translateAndGetResult();
    }

    private RopTranslator(RopMethod ropMethod, int i, LocalVariableInfo localVariableInfo, int i2, DexOptions dexOptions) {
        this.dexOptions = dexOptions;
        this.method = ropMethod;
        this.positionInfo = i;
        this.locals = localVariableInfo;
        this.addresses = new BlockAddresses(ropMethod);
        this.paramSize = i2;
        boolean zCalculateParamsAreInOrder = calculateParamsAreInOrder(ropMethod, i2);
        this.paramsAreInOrder = zCalculateParamsAreInOrder;
        BasicBlockList blocks = ropMethod.getBlocks();
        int size = blocks.size();
        int i3 = size * 3;
        int instructionCount = blocks.getInstructionCount() + i3;
        int assignmentCount = localVariableInfo != null ? instructionCount + size + localVariableInfo.getAssignmentCount() : instructionCount;
        int regCount = blocks.getRegCount() + (zCalculateParamsAreInOrder ? 0 : i2);
        this.regCount = regCount;
        OutputCollector outputCollector = new OutputCollector(dexOptions, assignmentCount, i3, regCount, i2);
        this.output = outputCollector;
        if (localVariableInfo != null) {
            this.translationVisitor = new LocalVariableAwareTranslationVisitor(outputCollector, localVariableInfo);
        } else {
            this.translationVisitor = new TranslationVisitor(outputCollector);
        }
    }

    private static boolean calculateParamsAreInOrder(RopMethod ropMethod, final int i) {
        final boolean[] zArr = {true};
        final int regCount = ropMethod.getBlocks().getRegCount();
        ropMethod.getBlocks().forEachInsn(new Insn.BaseVisitor() { // from class: com.android.dx.dex.code.RopTranslator.1
            @Override // com.android.dx.rop.code.Insn.BaseVisitor, com.android.dx.rop.code.Insn.Visitor
            public void visitPlainCstInsn(PlainCstInsn plainCstInsn) {
                if (plainCstInsn.getOpcode().getOpcode() == 3) {
                    int value = ((CstInteger) plainCstInsn.getConstant()).getValue();
                    boolean[] zArr2 = zArr;
                    zArr2[0] = zArr2[0] && (regCount - i) + value == plainCstInsn.getResult().getReg();
                }
            }
        });
        return zArr[0];
    }

    private DalvCode translateAndGetResult() {
        pickOrder();
        outputInstructions();
        return new DalvCode(this.positionInfo, this.output.getFinisher(), new StdCatchBuilder(this.method, this.order, this.addresses));
    }

    private void outputInstructions() {
        BasicBlockList blocks = this.method.getBlocks();
        int[] iArr = this.order;
        int length = iArr.length;
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            outputBlock(blocks.labelToBlock(iArr[i]), i2 == iArr.length ? -1 : iArr[i2]);
            i = i2;
        }
    }

    private void outputBlock(BasicBlock basicBlock, int i) {
        CodeAddress start = this.addresses.getStart(basicBlock);
        this.output.add(start);
        LocalVariableInfo localVariableInfo = this.locals;
        if (localVariableInfo != null) {
            this.output.add(new LocalSnapshot(start.getPosition(), localVariableInfo.getStarts(basicBlock)));
        }
        this.translationVisitor.setBlock(basicBlock, this.addresses.getLast(basicBlock));
        basicBlock.getInsns().forEach(this.translationVisitor);
        this.output.add(this.addresses.getEnd(basicBlock));
        int primarySuccessor = basicBlock.getPrimarySuccessor();
        Insn lastInsn = basicBlock.getLastInsn();
        if (primarySuccessor < 0 || primarySuccessor == i) {
            return;
        }
        if (lastInsn.getOpcode().getBranchingness() == 4 && basicBlock.getSecondarySuccessor() == i) {
            this.output.reverseBranch(1, this.addresses.getStart(primarySuccessor));
        } else {
            this.output.add(new TargetInsn(Dops.GOTO, lastInsn.getPosition(), RegisterSpecList.EMPTY, this.addresses.getStart(primarySuccessor)));
        }
    }

    private void pickOrder() {
        int i;
        BasicBlockList blocks = this.method.getBlocks();
        int size = blocks.size();
        int maxLabel = blocks.getMaxLabel();
        int[] iArrMakeBitSet = Bits.makeBitSet(maxLabel);
        int[] iArrMakeBitSet2 = Bits.makeBitSet(maxLabel);
        for (int i2 = 0; i2 < size; i2++) {
            Bits.set(iArrMakeBitSet, blocks.get(i2).getLabel());
        }
        int[] iArr = new int[size];
        int firstLabel = this.method.getFirstLabel();
        int i3 = 0;
        while (firstLabel != -1) {
            while (true) {
                IntList intListLabelToPredecessors = this.method.labelToPredecessors(firstLabel);
                int size2 = intListLabelToPredecessors.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    i = intListLabelToPredecessors.get(i4);
                    if (Bits.get(iArrMakeBitSet2, i)) {
                        break;
                    }
                    if (Bits.get(iArrMakeBitSet, i) && blocks.labelToBlock(i).getPrimarySuccessor() == firstLabel) {
                        break;
                    }
                }
                Bits.set(iArrMakeBitSet2, i);
                firstLabel = i;
            }
            while (firstLabel != -1) {
                Bits.clear(iArrMakeBitSet, firstLabel);
                Bits.clear(iArrMakeBitSet2, firstLabel);
                iArr[i3] = firstLabel;
                i3++;
                BasicBlock basicBlockLabelToBlock = blocks.labelToBlock(firstLabel);
                BasicBlock basicBlockPreferredSuccessorOf = blocks.preferredSuccessorOf(basicBlockLabelToBlock);
                if (basicBlockPreferredSuccessorOf == null) {
                    break;
                }
                int label = basicBlockPreferredSuccessorOf.getLabel();
                int primarySuccessor = basicBlockLabelToBlock.getPrimarySuccessor();
                if (Bits.get(iArrMakeBitSet, label)) {
                    firstLabel = label;
                } else if (primarySuccessor == label || primarySuccessor < 0 || !Bits.get(iArrMakeBitSet, primarySuccessor)) {
                    IntList successors = basicBlockLabelToBlock.getSuccessors();
                    int size3 = successors.size();
                    int i5 = 0;
                    while (true) {
                        if (i5 >= size3) {
                            firstLabel = -1;
                            break;
                        }
                        int i6 = successors.get(i5);
                        if (Bits.get(iArrMakeBitSet, i6)) {
                            firstLabel = i6;
                            break;
                        }
                        i5++;
                    }
                } else {
                    firstLabel = primarySuccessor;
                }
            }
            firstLabel = Bits.findFirst(iArrMakeBitSet, 0);
        }
        if (i3 != size) {
            throw new RuntimeException("shouldn't happen");
        }
        this.order = iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static RegisterSpecList getRegs(Insn insn) {
        return getRegs(insn, insn.getResult());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static RegisterSpecList getRegs(Insn insn, RegisterSpec registerSpec) {
        RegisterSpecList sources = insn.getSources();
        if (insn.getOpcode().isCommutative() && sources.size() == 2 && registerSpec.getReg() == sources.get(1).getReg()) {
            sources = RegisterSpecList.make(sources.get(1), sources.get(0));
        }
        return registerSpec == null ? sources : sources.withFirst(registerSpec);
    }

    private class TranslationVisitor implements Insn.Visitor {
        private BasicBlock block;
        private CodeAddress lastAddress;
        private final OutputCollector output;

        public TranslationVisitor(OutputCollector outputCollector) {
            this.output = outputCollector;
        }

        public void setBlock(BasicBlock basicBlock, CodeAddress codeAddress) {
            this.block = basicBlock;
            this.lastAddress = codeAddress;
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitPlainInsn(PlainInsn plainInsn) {
            DalvInsn simpleInsn;
            Rop opcode = plainInsn.getOpcode();
            if (opcode.getOpcode() == 54 || opcode.getOpcode() == 56) {
                return;
            }
            SourcePosition position = plainInsn.getPosition();
            Dop dopDopFor = RopToDop.dopFor(plainInsn);
            int branchingness = opcode.getBranchingness();
            if (branchingness == 1 || branchingness == 2) {
                simpleInsn = new SimpleInsn(dopDopFor, position, RopTranslator.getRegs(plainInsn));
            } else {
                if (branchingness == 3) {
                    return;
                }
                if (branchingness != 4) {
                    if (branchingness != 6) {
                        throw new RuntimeException("shouldn't happen");
                    }
                    simpleInsn = new SimpleInsn(dopDopFor, position, RopTranslator.getRegs(plainInsn));
                } else {
                    simpleInsn = new TargetInsn(dopDopFor, position, RopTranslator.getRegs(plainInsn), RopTranslator.this.addresses.getStart(this.block.getSuccessors().get(1)));
                }
            }
            addOutput(simpleInsn);
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitPlainCstInsn(PlainCstInsn plainCstInsn) {
            SourcePosition position = plainCstInsn.getPosition();
            Dop dopDopFor = RopToDop.dopFor(plainCstInsn);
            Rop opcode = plainCstInsn.getOpcode();
            int opcode2 = opcode.getOpcode();
            if (opcode.getBranchingness() != 1) {
                throw new RuntimeException("shouldn't happen");
            }
            if (opcode2 == 3) {
                if (RopTranslator.this.paramsAreInOrder) {
                    return;
                }
                RegisterSpec result = plainCstInsn.getResult();
                addOutput(new SimpleInsn(dopDopFor, position, RegisterSpecList.make(result, RegisterSpec.make((RopTranslator.this.regCount - RopTranslator.this.paramSize) + ((CstInteger) plainCstInsn.getConstant()).getValue(), result.getType()))));
                return;
            }
            addOutput(new CstInsn(dopDopFor, position, RopTranslator.getRegs(plainCstInsn), plainCstInsn.getConstant()));
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitSwitchInsn(SwitchInsn switchInsn) {
            SourcePosition position = switchInsn.getPosition();
            IntList cases = switchInsn.getCases();
            IntList successors = this.block.getSuccessors();
            int size = cases.size();
            int size2 = successors.size();
            int primarySuccessor = this.block.getPrimarySuccessor();
            if (size != size2 - 1 || primarySuccessor != successors.get(size)) {
                throw new RuntimeException("shouldn't happen");
            }
            CodeAddress[] codeAddressArr = new CodeAddress[size];
            for (int i = 0; i < size; i++) {
                codeAddressArr[i] = RopTranslator.this.addresses.getStart(successors.get(i));
            }
            CodeAddress codeAddress = new CodeAddress(position);
            CodeAddress codeAddress2 = new CodeAddress(this.lastAddress.getPosition(), true);
            SwitchData switchData = new SwitchData(position, codeAddress2, cases, codeAddressArr);
            DalvInsn targetInsn = new TargetInsn(switchData.isPacked() ? Dops.PACKED_SWITCH : Dops.SPARSE_SWITCH, position, RopTranslator.getRegs(switchInsn), codeAddress);
            addOutput(codeAddress2);
            addOutput(targetInsn);
            addOutputSuffix(new OddSpacer(position));
            addOutputSuffix(codeAddress);
            addOutputSuffix(switchData);
        }

        private RegisterSpec getNextMoveResultPseudo() {
            int primarySuccessor = this.block.getPrimarySuccessor();
            if (primarySuccessor < 0) {
                return null;
            }
            Insn insn = RopTranslator.this.method.getBlocks().labelToBlock(primarySuccessor).getInsns().get(0);
            if (insn.getOpcode().getOpcode() != 56) {
                return null;
            }
            return insn.getResult();
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitInvokePolymorphicInsn(InvokePolymorphicInsn invokePolymorphicInsn) {
            SourcePosition position = invokePolymorphicInsn.getPosition();
            Dop dopDopFor = RopToDop.dopFor(invokePolymorphicInsn);
            Rop opcode = invokePolymorphicInsn.getOpcode();
            if (opcode.getBranchingness() != 6) {
                throw new RuntimeException("Expected BRANCH_THROW got " + opcode.getBranchingness());
            }
            if (!opcode.isCallLike()) {
                throw new RuntimeException("Expected call-like operation");
            }
            addOutput(this.lastAddress);
            addOutput(new MultiCstInsn(dopDopFor, position, invokePolymorphicInsn.getSources(), new Constant[]{invokePolymorphicInsn.getPolymorphicMethod(), invokePolymorphicInsn.getCallSiteProto()}));
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitThrowingCstInsn(ThrowingCstInsn throwingCstInsn) {
            DalvInsn cstInsn;
            SourcePosition position = throwingCstInsn.getPosition();
            Dop dopDopFor = RopToDop.dopFor(throwingCstInsn);
            Rop opcode = throwingCstInsn.getOpcode();
            Constant constant = throwingCstInsn.getConstant();
            if (opcode.getBranchingness() != 6) {
                throw new RuntimeException("Expected BRANCH_THROW got " + opcode.getBranchingness());
            }
            addOutput(this.lastAddress);
            if (opcode.isCallLike()) {
                addOutput(new CstInsn(dopDopFor, position, throwingCstInsn.getSources(), constant));
                return;
            }
            RegisterSpec nextMoveResultPseudo = getNextMoveResultPseudo();
            RegisterSpecList regs = RopTranslator.getRegs(throwingCstInsn, nextMoveResultPseudo);
            if ((dopDopFor.hasResult() || opcode.getOpcode() == 43) != (nextMoveResultPseudo != null)) {
                throw new RuntimeException("Insn with result/move-result-pseudo mismatch " + throwingCstInsn);
            }
            if (opcode.getOpcode() == 41 && dopDopFor.getOpcode() != 35) {
                cstInsn = new SimpleInsn(dopDopFor, position, regs);
            } else {
                cstInsn = new CstInsn(dopDopFor, position, regs, constant);
            }
            addOutput(cstInsn);
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitThrowingInsn(ThrowingInsn throwingInsn) {
            SourcePosition position = throwingInsn.getPosition();
            Dop dopDopFor = RopToDop.dopFor(throwingInsn);
            if (throwingInsn.getOpcode().getBranchingness() != 6) {
                throw new RuntimeException("shouldn't happen");
            }
            RegisterSpec nextMoveResultPseudo = getNextMoveResultPseudo();
            if (dopDopFor.hasResult() != (nextMoveResultPseudo != null)) {
                throw new RuntimeException("Insn with result/move-result-pseudo mismatch" + throwingInsn);
            }
            addOutput(this.lastAddress);
            addOutput(new SimpleInsn(dopDopFor, position, RopTranslator.getRegs(throwingInsn, nextMoveResultPseudo)));
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitFillArrayDataInsn(FillArrayDataInsn fillArrayDataInsn) {
            SourcePosition position = fillArrayDataInsn.getPosition();
            Constant constant = fillArrayDataInsn.getConstant();
            ArrayList<Constant> initValues = fillArrayDataInsn.getInitValues();
            if (fillArrayDataInsn.getOpcode().getBranchingness() != 1) {
                throw new RuntimeException("shouldn't happen");
            }
            CodeAddress codeAddress = new CodeAddress(position);
            DalvInsn arrayData = new ArrayData(position, this.lastAddress, initValues, constant);
            DalvInsn targetInsn = new TargetInsn(Dops.FILL_ARRAY_DATA, position, RopTranslator.getRegs(fillArrayDataInsn), codeAddress);
            addOutput(this.lastAddress);
            addOutput(targetInsn);
            addOutputSuffix(new OddSpacer(position));
            addOutputSuffix(codeAddress);
            addOutputSuffix(arrayData);
        }

        protected void addOutput(DalvInsn dalvInsn) {
            this.output.add(dalvInsn);
        }

        protected void addOutputSuffix(DalvInsn dalvInsn) {
            this.output.addSuffix(dalvInsn);
        }
    }

    private class LocalVariableAwareTranslationVisitor extends TranslationVisitor {
        private final LocalVariableInfo locals;

        public LocalVariableAwareTranslationVisitor(OutputCollector outputCollector, LocalVariableInfo localVariableInfo) {
            super(outputCollector);
            this.locals = localVariableInfo;
        }

        @Override // com.android.dx.dex.code.RopTranslator.TranslationVisitor, com.android.dx.rop.code.Insn.Visitor
        public void visitPlainInsn(PlainInsn plainInsn) {
            super.visitPlainInsn(plainInsn);
            addIntroductionIfNecessary(plainInsn);
        }

        @Override // com.android.dx.dex.code.RopTranslator.TranslationVisitor, com.android.dx.rop.code.Insn.Visitor
        public void visitPlainCstInsn(PlainCstInsn plainCstInsn) {
            super.visitPlainCstInsn(plainCstInsn);
            addIntroductionIfNecessary(plainCstInsn);
        }

        @Override // com.android.dx.dex.code.RopTranslator.TranslationVisitor, com.android.dx.rop.code.Insn.Visitor
        public void visitSwitchInsn(SwitchInsn switchInsn) {
            super.visitSwitchInsn(switchInsn);
            addIntroductionIfNecessary(switchInsn);
        }

        @Override // com.android.dx.dex.code.RopTranslator.TranslationVisitor, com.android.dx.rop.code.Insn.Visitor
        public void visitThrowingCstInsn(ThrowingCstInsn throwingCstInsn) {
            super.visitThrowingCstInsn(throwingCstInsn);
            addIntroductionIfNecessary(throwingCstInsn);
        }

        @Override // com.android.dx.dex.code.RopTranslator.TranslationVisitor, com.android.dx.rop.code.Insn.Visitor
        public void visitThrowingInsn(ThrowingInsn throwingInsn) {
            super.visitThrowingInsn(throwingInsn);
            addIntroductionIfNecessary(throwingInsn);
        }

        public void addIntroductionIfNecessary(Insn insn) {
            RegisterSpec assignment = this.locals.getAssignment(insn);
            if (assignment != null) {
                addOutput(new LocalStart(insn.getPosition(), assignment));
            }
        }
    }
}
