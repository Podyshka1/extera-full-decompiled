package com.android.p003dx.ssa.back;

import com.android.p003dx.rop.code.BasicBlock;
import com.android.p003dx.rop.code.BasicBlockList;
import com.android.p003dx.rop.code.InsnList;
import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.code.Rop;
import com.android.p003dx.rop.code.RopMethod;
import com.android.p003dx.rop.code.Rops;
import com.android.p003dx.ssa.BasicRegisterMapper;
import com.android.p003dx.ssa.PhiInsn;
import com.android.p003dx.ssa.RegisterMapper;
import com.android.p003dx.ssa.SsaBasicBlock;
import com.android.p003dx.ssa.SsaInsn;
import com.android.p003dx.ssa.SsaMethod;
import com.android.p003dx.util.Hex;
import com.android.p003dx.util.IntList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
public class SsaToRop {
    private static final boolean DEBUG = false;
    private final InterferenceGraph interference;
    private final boolean minimizeRegisters;
    private final SsaMethod ssaMeth;

    public static RopMethod convertToRopMethod(SsaMethod ssaMethod, boolean z) {
        return new SsaToRop(ssaMethod, z).convert();
    }

    private SsaToRop(SsaMethod ssaMethod, boolean z) {
        this.minimizeRegisters = z;
        this.ssaMeth = ssaMethod;
        this.interference = LivenessAnalyzer.constructInterferenceGraph(ssaMethod);
    }

    private RopMethod convert() {
        FirstFitLocalCombiningAllocator firstFitLocalCombiningAllocator = new FirstFitLocalCombiningAllocator(this.ssaMeth, this.interference, this.minimizeRegisters);
        RegisterMapper registerMapperAllocateRegisters = firstFitLocalCombiningAllocator.allocateRegisters();
        this.ssaMeth.setBackMode();
        this.ssaMeth.mapRegisters(registerMapperAllocateRegisters);
        removePhiFunctions();
        if (firstFitLocalCombiningAllocator.wantsParamsMovedHigh()) {
            moveParametersToHighRegisters();
        }
        removeEmptyGotos();
        BasicBlockList basicBlockListConvertBasicBlocks = convertBasicBlocks();
        SsaMethod ssaMethod = this.ssaMeth;
        return new IdenticalBlockCombiner(new RopMethod(basicBlockListConvertBasicBlocks, ssaMethod.blockIndexToRopLabel(ssaMethod.getEntryBlockIndex()))).process();
    }

    private void removeEmptyGotos() {
        final ArrayList<SsaBasicBlock> blocks = this.ssaMeth.getBlocks();
        this.ssaMeth.forEachBlockDepthFirst(false, new SsaBasicBlock.Visitor() { // from class: com.android.dx.ssa.back.SsaToRop.1
            @Override // com.android.dx.ssa.SsaBasicBlock.Visitor
            public void visitBlock(SsaBasicBlock ssaBasicBlock, SsaBasicBlock ssaBasicBlock2) {
                ArrayList<SsaInsn> insns = ssaBasicBlock.getInsns();
                if (insns.size() == 1 && insns.get(0).getOpcode() == Rops.GOTO) {
                    BitSet bitSet = (BitSet) ssaBasicBlock.getPredecessors().clone();
                    for (int iNextSetBit = bitSet.nextSetBit(0); iNextSetBit >= 0; iNextSetBit = bitSet.nextSetBit(iNextSetBit + 1)) {
                        ((SsaBasicBlock) blocks.get(iNextSetBit)).replaceSuccessor(ssaBasicBlock.getIndex(), ssaBasicBlock.getPrimarySuccessorIndex());
                    }
                }
            }
        });
    }

    private void removePhiFunctions() {
        ArrayList<SsaBasicBlock> blocks = this.ssaMeth.getBlocks();
        int size = blocks.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            SsaBasicBlock ssaBasicBlock = blocks.get(i2);
            i2++;
            SsaBasicBlock ssaBasicBlock2 = ssaBasicBlock;
            ssaBasicBlock2.forEachPhiInsn(new PhiVisitor(blocks));
            ssaBasicBlock2.removeAllPhiInsns();
        }
        int size2 = blocks.size();
        while (i < size2) {
            SsaBasicBlock ssaBasicBlock3 = blocks.get(i);
            i++;
            ssaBasicBlock3.scheduleMovesFromPhis();
        }
    }

    private static class PhiVisitor implements PhiInsn.Visitor {
        private final ArrayList<SsaBasicBlock> blocks;

        public PhiVisitor(ArrayList<SsaBasicBlock> arrayList) {
            this.blocks = arrayList;
        }

        @Override // com.android.dx.ssa.PhiInsn.Visitor
        public void visitPhiInsn(PhiInsn phiInsn) {
            RegisterSpecList sources = phiInsn.getSources();
            RegisterSpec result = phiInsn.getResult();
            int size = sources.size();
            for (int i = 0; i < size; i++) {
                this.blocks.get(phiInsn.predBlockIndexForSourcesIndex(i)).addMoveToEnd(result, sources.get(i));
            }
        }
    }

    private void moveParametersToHighRegisters() {
        int paramWidth = this.ssaMeth.getParamWidth();
        BasicRegisterMapper basicRegisterMapper = new BasicRegisterMapper(this.ssaMeth.getRegCount());
        int regCount = this.ssaMeth.getRegCount();
        for (int i = 0; i < regCount; i++) {
            if (i < paramWidth) {
                basicRegisterMapper.addMapping(i, (regCount - paramWidth) + i, 1);
            } else {
                basicRegisterMapper.addMapping(i, i - paramWidth, 1);
            }
        }
        this.ssaMeth.mapRegisters(basicRegisterMapper);
    }

    private BasicBlockList convertBasicBlocks() {
        ArrayList<SsaBasicBlock> blocks = this.ssaMeth.getBlocks();
        SsaBasicBlock exitBlock = this.ssaMeth.getExitBlock();
        BitSet bitSetComputeReachability = this.ssaMeth.computeReachability();
        int iCardinality = bitSetComputeReachability.cardinality();
        if (exitBlock != null && bitSetComputeReachability.get(exitBlock.getIndex())) {
            iCardinality--;
        }
        BasicBlockList basicBlockList = new BasicBlockList(iCardinality);
        int size = blocks.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            SsaBasicBlock ssaBasicBlock = blocks.get(i2);
            i2++;
            SsaBasicBlock ssaBasicBlock2 = ssaBasicBlock;
            if (bitSetComputeReachability.get(ssaBasicBlock2.getIndex()) && ssaBasicBlock2 != exitBlock) {
                basicBlockList.set(i, convertBasicBlock(ssaBasicBlock2));
                i++;
            }
        }
        if (exitBlock == null || exitBlock.getInsns().isEmpty()) {
            return basicBlockList;
        }
        throw new RuntimeException("Exit block must have no insns when leaving SSA form");
    }

    private void verifyValidExitPredecessor(SsaBasicBlock ssaBasicBlock) {
        Rop opcode = ssaBasicBlock.getInsns().get(r3.size() - 1).getOpcode();
        if (opcode.getBranchingness() != 2 && opcode != Rops.THROW) {
            throw new RuntimeException("Exit predecessor must end in valid exit statement.");
        }
    }

    private BasicBlock convertBasicBlock(SsaBasicBlock ssaBasicBlock) {
        IntList ropLabelSuccessorList = ssaBasicBlock.getRopLabelSuccessorList();
        int primarySuccessorRopLabel = ssaBasicBlock.getPrimarySuccessorRopLabel();
        SsaBasicBlock exitBlock = this.ssaMeth.getExitBlock();
        if (ropLabelSuccessorList.contains(exitBlock == null ? -1 : exitBlock.getRopLabel())) {
            if (ropLabelSuccessorList.size() > 1) {
                throw new RuntimeException("Exit predecessor must have no other successors" + Hex.m212u2(ssaBasicBlock.getRopLabel()));
            }
            ropLabelSuccessorList = IntList.EMPTY;
            verifyValidExitPredecessor(ssaBasicBlock);
            primarySuccessorRopLabel = -1;
        }
        ropLabelSuccessorList.setImmutable();
        return new BasicBlock(ssaBasicBlock.getRopLabel(), convertInsns(ssaBasicBlock.getInsns()), ropLabelSuccessorList, primarySuccessorRopLabel);
    }

    private InsnList convertInsns(ArrayList<SsaInsn> arrayList) {
        int size = arrayList.size();
        InsnList insnList = new InsnList(size);
        for (int i = 0; i < size; i++) {
            insnList.set(i, arrayList.get(i).toRopInsn());
        }
        insnList.setImmutable();
        return insnList;
    }

    public int[] getRegistersByFrequency() {
        int regCount = this.ssaMeth.getRegCount();
        Integer[] numArr = new Integer[regCount];
        for (int i = 0; i < regCount; i++) {
            numArr[i] = Integer.valueOf(i);
        }
        Arrays.sort(numArr, new Comparator<Integer>() { // from class: com.android.dx.ssa.back.SsaToRop.2
            @Override // java.util.Comparator
            public int compare(Integer num, Integer num2) {
                return SsaToRop.this.ssaMeth.getUseListForRegister(num2.intValue()).size() - SsaToRop.this.ssaMeth.getUseListForRegister(num.intValue()).size();
            }
        });
        int[] iArr = new int[regCount];
        for (int i2 = 0; i2 < regCount; i2++) {
            iArr[i2] = numArr[i2].intValue();
        }
        return iArr;
    }
}
