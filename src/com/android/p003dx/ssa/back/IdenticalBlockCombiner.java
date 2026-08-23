package com.android.p003dx.ssa.back;

import com.android.p003dx.rop.code.BasicBlock;
import com.android.p003dx.rop.code.BasicBlockList;
import com.android.p003dx.rop.code.RopMethod;
import com.android.p003dx.util.IntList;
import java.util.BitSet;

/* JADX INFO: loaded from: classes4.dex */
public class IdenticalBlockCombiner {
    private final BasicBlockList blocks;
    private final BasicBlockList newBlocks;
    private final RopMethod ropMethod;

    public IdenticalBlockCombiner(RopMethod ropMethod) {
        this.ropMethod = ropMethod;
        BasicBlockList blocks = ropMethod.getBlocks();
        this.blocks = blocks;
        this.newBlocks = blocks.getMutableCopy();
    }

    public RopMethod process() {
        int size = this.blocks.size();
        BitSet bitSet = new BitSet(this.blocks.getMaxLabel());
        for (int i = 0; i < size; i++) {
            BasicBlock basicBlock = this.blocks.get(i);
            if (!bitSet.get(basicBlock.getLabel())) {
                IntList intListLabelToPredecessors = this.ropMethod.labelToPredecessors(basicBlock.getLabel());
                int size2 = intListLabelToPredecessors.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    int i3 = intListLabelToPredecessors.get(i2);
                    BasicBlock basicBlockLabelToBlock = this.blocks.labelToBlock(i3);
                    if (!bitSet.get(i3) && basicBlockLabelToBlock.getSuccessors().size() <= 1 && basicBlockLabelToBlock.getFirstInsn().getOpcode().getOpcode() != 55) {
                        IntList intList = new IntList();
                        for (int i4 = i2 + 1; i4 < size2; i4++) {
                            int i5 = intListLabelToPredecessors.get(i4);
                            BasicBlock basicBlockLabelToBlock2 = this.blocks.labelToBlock(i5);
                            if (basicBlockLabelToBlock2.getSuccessors().size() == 1 && compareInsns(basicBlockLabelToBlock, basicBlockLabelToBlock2)) {
                                intList.add(i5);
                                bitSet.set(i5);
                            }
                        }
                        combineBlocks(i3, intList);
                    }
                }
            }
        }
        for (int i6 = size - 1; i6 >= 0; i6--) {
            if (bitSet.get(this.newBlocks.get(i6).getLabel())) {
                this.newBlocks.set(i6, (BasicBlock) null);
            }
        }
        this.newBlocks.shrinkToFit();
        this.newBlocks.setImmutable();
        return new RopMethod(this.newBlocks, this.ropMethod.getFirstLabel());
    }

    private static boolean compareInsns(BasicBlock basicBlock, BasicBlock basicBlock2) {
        return basicBlock.getInsns().contentEquals(basicBlock2.getInsns());
    }

    private void combineBlocks(int i, IntList intList) {
        int size = intList.size();
        for (int i2 = 0; i2 < size; i2++) {
            int i3 = intList.get(i2);
            IntList intListLabelToPredecessors = this.ropMethod.labelToPredecessors(this.blocks.labelToBlock(i3).getLabel());
            int size2 = intListLabelToPredecessors.size();
            for (int i4 = 0; i4 < size2; i4++) {
                replaceSucc(this.newBlocks.labelToBlock(intListLabelToPredecessors.get(i4)), i3, i);
            }
        }
    }

    private void replaceSucc(BasicBlock basicBlock, int i, int i2) {
        IntList intListMutableCopy = basicBlock.getSuccessors().mutableCopy();
        intListMutableCopy.set(intListMutableCopy.indexOf(i), i2);
        int primarySuccessor = basicBlock.getPrimarySuccessor();
        if (primarySuccessor != i) {
            i2 = primarySuccessor;
        }
        intListMutableCopy.setImmutable();
        BasicBlock basicBlock2 = new BasicBlock(basicBlock.getLabel(), basicBlock.getInsns(), intListMutableCopy, i2);
        BasicBlockList basicBlockList = this.newBlocks;
        basicBlockList.set(basicBlockList.indexOfLabel(basicBlock.getLabel()), basicBlock2);
    }
}
