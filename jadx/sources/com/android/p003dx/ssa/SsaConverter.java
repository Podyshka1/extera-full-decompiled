package com.android.p003dx.ssa;

import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.code.RopMethod;
import com.android.p003dx.ssa.DomFront;
import com.android.p003dx.util.IntIterator;
import java.util.ArrayList;
import java.util.BitSet;

/* JADX INFO: loaded from: classes4.dex */
public class SsaConverter {
    public static final boolean DEBUG = false;

    public static SsaMethod convertToSsaMethod(RopMethod ropMethod, int i, boolean z) {
        SsaMethod ssaMethodNewFromRopMethod = SsaMethod.newFromRopMethod(ropMethod, i, z);
        edgeSplit(ssaMethodNewFromRopMethod);
        placePhiFunctions(ssaMethodNewFromRopMethod, LocalVariableExtractor.extract(ssaMethodNewFromRopMethod), 0);
        new SsaRenamer(ssaMethodNewFromRopMethod).run();
        ssaMethodNewFromRopMethod.makeExitBlock();
        return ssaMethodNewFromRopMethod;
    }

    public static void updateSsaMethod(SsaMethod ssaMethod, int i) {
        placePhiFunctions(ssaMethod, LocalVariableExtractor.extract(ssaMethod), i);
        new SsaRenamer(ssaMethod, i).run();
    }

    public static SsaMethod testEdgeSplit(RopMethod ropMethod, int i, boolean z) {
        SsaMethod ssaMethodNewFromRopMethod = SsaMethod.newFromRopMethod(ropMethod, i, z);
        edgeSplit(ssaMethodNewFromRopMethod);
        return ssaMethodNewFromRopMethod;
    }

    public static SsaMethod testPhiPlacement(RopMethod ropMethod, int i, boolean z) {
        SsaMethod ssaMethodNewFromRopMethod = SsaMethod.newFromRopMethod(ropMethod, i, z);
        edgeSplit(ssaMethodNewFromRopMethod);
        placePhiFunctions(ssaMethodNewFromRopMethod, LocalVariableExtractor.extract(ssaMethodNewFromRopMethod), 0);
        return ssaMethodNewFromRopMethod;
    }

    private static void edgeSplit(SsaMethod ssaMethod) {
        edgeSplitPredecessors(ssaMethod);
        edgeSplitMoveExceptionsAndResults(ssaMethod);
        edgeSplitSuccessors(ssaMethod);
    }

    private static void edgeSplitPredecessors(SsaMethod ssaMethod) {
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        for (int size = blocks.size() - 1; size >= 0; size--) {
            SsaBasicBlock ssaBasicBlock = blocks.get(size);
            if (nodeNeedsUniquePredecessor(ssaBasicBlock)) {
                ssaBasicBlock.insertNewPredecessor();
            }
        }
    }

    private static boolean nodeNeedsUniquePredecessor(SsaBasicBlock ssaBasicBlock) {
        return ssaBasicBlock.getPredecessors().cardinality() > 1 && ssaBasicBlock.getSuccessors().cardinality() > 1;
    }

    private static void edgeSplitMoveExceptionsAndResults(SsaMethod ssaMethod) {
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        for (int size = blocks.size() - 1; size >= 0; size--) {
            SsaBasicBlock ssaBasicBlock = blocks.get(size);
            if (!ssaBasicBlock.isExitBlock() && ssaBasicBlock.getPredecessors().cardinality() > 1 && ssaBasicBlock.getInsns().get(0).isMoveException()) {
                BitSet bitSet = (BitSet) ssaBasicBlock.getPredecessors().clone();
                for (int iNextSetBit = bitSet.nextSetBit(0); iNextSetBit >= 0; iNextSetBit = bitSet.nextSetBit(iNextSetBit + 1)) {
                    blocks.get(iNextSetBit).insertNewSuccessor(ssaBasicBlock).getInsns().add(0, ssaBasicBlock.getInsns().get(0).mo2217clone());
                }
                ssaBasicBlock.getInsns().remove(0);
            }
        }
    }

    private static void edgeSplitSuccessors(SsaMethod ssaMethod) {
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        for (int size = blocks.size() - 1; size >= 0; size--) {
            SsaBasicBlock ssaBasicBlock = blocks.get(size);
            BitSet bitSet = (BitSet) ssaBasicBlock.getSuccessors().clone();
            for (int iNextSetBit = bitSet.nextSetBit(0); iNextSetBit >= 0; iNextSetBit = bitSet.nextSetBit(iNextSetBit + 1)) {
                SsaBasicBlock ssaBasicBlock2 = blocks.get(iNextSetBit);
                if (needsNewSuccessor(ssaBasicBlock, ssaBasicBlock2)) {
                    ssaBasicBlock.insertNewSuccessor(ssaBasicBlock2);
                }
            }
        }
    }

    private static boolean needsNewSuccessor(SsaBasicBlock ssaBasicBlock, SsaBasicBlock ssaBasicBlock2) {
        ArrayList<SsaInsn> insns = ssaBasicBlock.getInsns();
        SsaInsn ssaInsn = insns.get(insns.size() - 1);
        if (ssaBasicBlock.getSuccessors().cardinality() <= 1 || ssaBasicBlock2.getPredecessors().cardinality() <= 1) {
            return (ssaInsn.getResult() != null || ssaInsn.getSources().size() > 0) && ssaBasicBlock2.getPredecessors().cardinality() > 1;
        }
        return true;
    }

    private static void placePhiFunctions(SsaMethod ssaMethod, LocalVariableInfo localVariableInfo, int i) {
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        int size = blocks.size();
        int regCount = ssaMethod.getRegCount() - i;
        DomFront.DomInfo[] domInfoArrRun = new DomFront(ssaMethod).run();
        BitSet[] bitSetArr = new BitSet[regCount];
        BitSet[] bitSetArr2 = new BitSet[regCount];
        for (int i2 = 0; i2 < regCount; i2++) {
            bitSetArr[i2] = new BitSet(size);
            bitSetArr2[i2] = new BitSet(size);
        }
        int size2 = blocks.size();
        for (int i3 = 0; i3 < size2; i3++) {
            ArrayList<SsaInsn> insns = blocks.get(i3).getInsns();
            int size3 = insns.size();
            int i4 = 0;
            while (i4 < size3) {
                SsaInsn ssaInsn = insns.get(i4);
                i4++;
                RegisterSpec result = ssaInsn.getResult();
                if (result != null && result.getReg() - i >= 0) {
                    bitSetArr[result.getReg() - i].set(i3);
                }
            }
        }
        for (int i5 = 0; i5 < regCount; i5++) {
            BitSet bitSet = (BitSet) bitSetArr[i5].clone();
            while (true) {
                int iNextSetBit = bitSet.nextSetBit(0);
                if (iNextSetBit >= 0) {
                    bitSet.clear(iNextSetBit);
                    IntIterator it = domInfoArrRun[iNextSetBit].dominanceFrontiers.iterator();
                    while (it.hasNext()) {
                        int next = it.next();
                        if (!bitSetArr2[i5].get(next)) {
                            bitSetArr2[i5].set(next);
                            int i6 = i5 + i;
                            RegisterSpec registerSpec = localVariableInfo.getStarts(next).get(i6);
                            if (registerSpec == null) {
                                blocks.get(next).addPhiInsnForReg(i6);
                            } else {
                                blocks.get(next).addPhiInsnForReg(registerSpec);
                            }
                            if (!bitSetArr[i5].get(next)) {
                                bitSet.set(next);
                            }
                        }
                    }
                }
            }
        }
    }
}
