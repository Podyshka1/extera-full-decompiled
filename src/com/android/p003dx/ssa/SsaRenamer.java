package com.android.p003dx.ssa;

import com.android.p003dx.rop.code.LocalItem;
import com.android.p003dx.rop.code.PlainInsn;
import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.code.Rops;
import com.android.p003dx.rop.code.SourcePosition;
import com.android.p003dx.rop.type.Type;
import com.android.p003dx.ssa.PhiInsn;
import com.android.p003dx.ssa.SsaBasicBlock;
import com.android.p003dx.ssa.SsaInsn;
import com.android.p003dx.util.IntList;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes4.dex */
public class SsaRenamer implements Runnable {
    private static final boolean DEBUG = false;
    private int nextSsaReg;
    private final int ropRegCount;
    private final SsaMethod ssaMeth;
    private final ArrayList<LocalItem> ssaRegToLocalItems;
    private IntList ssaRegToRopReg;
    private final RegisterSpec[][] startsForBlocks;
    private int threshold;

    static /* synthetic */ int access$108(SsaRenamer ssaRenamer) {
        int i = ssaRenamer.nextSsaReg;
        ssaRenamer.nextSsaReg = i + 1;
        return i;
    }

    public SsaRenamer(SsaMethod ssaMethod) {
        int regCount = ssaMethod.getRegCount();
        this.ropRegCount = regCount;
        this.ssaMeth = ssaMethod;
        this.nextSsaReg = regCount;
        this.threshold = 0;
        this.startsForBlocks = new RegisterSpec[ssaMethod.getBlocks().size()][];
        this.ssaRegToLocalItems = new ArrayList<>();
        RegisterSpec[] registerSpecArr = new RegisterSpec[regCount];
        for (int i = 0; i < this.ropRegCount; i++) {
            registerSpecArr[i] = RegisterSpec.make(i, Type.VOID);
        }
        this.startsForBlocks[ssaMethod.getEntryBlockIndex()] = registerSpecArr;
    }

    public SsaRenamer(SsaMethod ssaMethod, int i) {
        this(ssaMethod);
        this.threshold = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.ssaMeth.forEachBlockDepthFirstDom(new SsaBasicBlock.Visitor() { // from class: com.android.dx.ssa.SsaRenamer.1
            @Override // com.android.dx.ssa.SsaBasicBlock.Visitor
            public void visitBlock(SsaBasicBlock ssaBasicBlock, SsaBasicBlock ssaBasicBlock2) {
                SsaRenamer.this.new BlockRenamer(ssaBasicBlock).process();
            }
        });
        this.ssaMeth.setNewRegCount(this.nextSsaReg);
        this.ssaMeth.onInsnsChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static RegisterSpec[] dupArray(RegisterSpec[] registerSpecArr) {
        RegisterSpec[] registerSpecArr2 = new RegisterSpec[registerSpecArr.length];
        System.arraycopy(registerSpecArr, 0, registerSpecArr2, 0, registerSpecArr.length);
        return registerSpecArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LocalItem getLocalForNewReg(int i) {
        if (i < this.ssaRegToLocalItems.size()) {
            return this.ssaRegToLocalItems.get(i);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNameForSsaReg(RegisterSpec registerSpec) {
        int reg = registerSpec.getReg();
        LocalItem localItem = registerSpec.getLocalItem();
        this.ssaRegToLocalItems.ensureCapacity(reg + 1);
        while (this.ssaRegToLocalItems.size() <= reg) {
            this.ssaRegToLocalItems.add(null);
        }
        this.ssaRegToLocalItems.set(reg, localItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isBelowThresholdRegister(int i) {
        return i < this.threshold;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isVersionZeroRegister(int i) {
        return i < this.ropRegCount;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean equalsHandlesNulls(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    private class BlockRenamer implements SsaInsn.Visitor {
        private final SsaBasicBlock block;
        private final RegisterSpec[] currentMapping;
        private final HashSet<SsaInsn> movesToKeep = new HashSet<>();
        private final HashMap<SsaInsn, SsaInsn> insnsToReplace = new HashMap<>();
        private final RenamingMapper mapper = new RenamingMapper();

        BlockRenamer(SsaBasicBlock ssaBasicBlock) {
            this.block = ssaBasicBlock;
            this.currentMapping = SsaRenamer.this.startsForBlocks[ssaBasicBlock.getIndex()];
            SsaRenamer.this.startsForBlocks[ssaBasicBlock.getIndex()] = null;
        }

        private class RenamingMapper extends RegisterMapper {
            public RenamingMapper() {
            }

            @Override // com.android.p003dx.ssa.RegisterMapper
            public int getNewRegisterCount() {
                return SsaRenamer.this.nextSsaReg;
            }

            @Override // com.android.p003dx.ssa.RegisterMapper
            public RegisterSpec map(RegisterSpec registerSpec) {
                if (registerSpec == null) {
                    return null;
                }
                return registerSpec.withReg(BlockRenamer.this.currentMapping[registerSpec.getReg()].getReg());
            }
        }

        public void process() {
            RegisterSpec[] registerSpecArrDupArray;
            this.block.forEachInsn(this);
            updateSuccessorPhis();
            ArrayList<SsaInsn> insns = this.block.getInsns();
            boolean z = true;
            for (int size = insns.size() - 1; size >= 0; size--) {
                SsaInsn ssaInsn = insns.get(size);
                SsaInsn ssaInsn2 = this.insnsToReplace.get(ssaInsn);
                if (ssaInsn2 != null) {
                    insns.set(size, ssaInsn2);
                } else if (ssaInsn.isNormalMoveInsn() && !this.movesToKeep.contains(ssaInsn)) {
                    insns.remove(size);
                }
            }
            ArrayList<SsaBasicBlock> domChildren = this.block.getDomChildren();
            int size2 = domChildren.size();
            int i = 0;
            while (i < size2) {
                SsaBasicBlock ssaBasicBlock = domChildren.get(i);
                i++;
                SsaBasicBlock ssaBasicBlock2 = ssaBasicBlock;
                if (ssaBasicBlock2 != this.block) {
                    if (!z) {
                        registerSpecArrDupArray = SsaRenamer.dupArray(this.currentMapping);
                    } else {
                        registerSpecArrDupArray = this.currentMapping;
                    }
                    SsaRenamer.this.startsForBlocks[ssaBasicBlock2.getIndex()] = registerSpecArrDupArray;
                    z = false;
                }
            }
        }

        private void addMapping(int i, RegisterSpec registerSpec) {
            int reg = registerSpec.getReg();
            LocalItem localItem = registerSpec.getLocalItem();
            RegisterSpec[] registerSpecArr = this.currentMapping;
            registerSpecArr[i] = registerSpec;
            for (int length = registerSpecArr.length - 1; length >= 0; length--) {
                if (reg == this.currentMapping[length].getReg()) {
                    this.currentMapping[length] = registerSpec;
                }
            }
            if (localItem == null) {
                return;
            }
            SsaRenamer.this.setNameForSsaReg(registerSpec);
            for (int length2 = this.currentMapping.length - 1; length2 >= 0; length2--) {
                RegisterSpec registerSpec2 = this.currentMapping[length2];
                if (reg != registerSpec2.getReg() && localItem.equals(registerSpec2.getLocalItem())) {
                    this.currentMapping[length2] = registerSpec2.withLocalItem(null);
                }
            }
        }

        @Override // com.android.dx.ssa.SsaInsn.Visitor
        public void visitPhiInsn(PhiInsn phiInsn) {
            processResultReg(phiInsn);
        }

        @Override // com.android.dx.ssa.SsaInsn.Visitor
        public void visitMoveInsn(NormalSsaInsn normalSsaInsn) {
            RegisterSpec result = normalSsaInsn.getResult();
            int reg = result.getReg();
            int reg2 = normalSsaInsn.getSources().get(0).getReg();
            normalSsaInsn.mapSourceRegisters(this.mapper);
            int reg3 = normalSsaInsn.getSources().get(0).getReg();
            LocalItem localItem = this.currentMapping[reg2].getLocalItem();
            LocalItem localItem2 = result.getLocalItem();
            if (localItem2 == null) {
                localItem2 = localItem;
            }
            LocalItem localForNewReg = SsaRenamer.this.getLocalForNewReg(reg3);
            boolean z = localForNewReg == null || localItem2 == null || localItem2.equals(localForNewReg);
            RegisterSpec registerSpecMakeLocalOptional = RegisterSpec.makeLocalOptional(reg3, result.getType(), localItem2);
            if (Optimizer.getPreserveLocals() && (!z || !SsaRenamer.equalsHandlesNulls(localItem2, localItem) || SsaRenamer.this.threshold != 0)) {
                if (z && localItem == null && SsaRenamer.this.threshold == 0) {
                    this.insnsToReplace.put(normalSsaInsn, SsaInsn.makeFromRop(new PlainInsn(Rops.opMarkLocal(registerSpecMakeLocalOptional), SourcePosition.NO_INFO, (RegisterSpec) null, RegisterSpecList.make(RegisterSpec.make(registerSpecMakeLocalOptional.getReg(), registerSpecMakeLocalOptional.getType(), localItem2))), this.block));
                    addMapping(reg, registerSpecMakeLocalOptional);
                    return;
                } else {
                    processResultReg(normalSsaInsn);
                    this.movesToKeep.add(normalSsaInsn);
                    return;
                }
            }
            addMapping(reg, registerSpecMakeLocalOptional);
        }

        @Override // com.android.dx.ssa.SsaInsn.Visitor
        public void visitNonMoveInsn(NormalSsaInsn normalSsaInsn) {
            normalSsaInsn.mapSourceRegisters(this.mapper);
            processResultReg(normalSsaInsn);
        }

        void processResultReg(SsaInsn ssaInsn) {
            RegisterSpec result = ssaInsn.getResult();
            if (result == null) {
                return;
            }
            int reg = result.getReg();
            if (SsaRenamer.this.isBelowThresholdRegister(reg)) {
                return;
            }
            ssaInsn.changeResultReg(SsaRenamer.this.nextSsaReg);
            addMapping(reg, ssaInsn.getResult());
            SsaRenamer.access$108(SsaRenamer.this);
        }

        private void updateSuccessorPhis() {
            PhiInsn.Visitor visitor = new PhiInsn.Visitor() { // from class: com.android.dx.ssa.SsaRenamer.BlockRenamer.1
                @Override // com.android.dx.ssa.PhiInsn.Visitor
                public void visitPhiInsn(PhiInsn phiInsn) {
                    int ropResultReg = phiInsn.getRopResultReg();
                    if (SsaRenamer.this.isBelowThresholdRegister(ropResultReg)) {
                        return;
                    }
                    RegisterSpec registerSpec = BlockRenamer.this.currentMapping[ropResultReg];
                    if (SsaRenamer.this.isVersionZeroRegister(registerSpec.getReg())) {
                        return;
                    }
                    phiInsn.addPhiOperand(registerSpec, BlockRenamer.this.block);
                }
            };
            BitSet successors = this.block.getSuccessors();
            for (int iNextSetBit = successors.nextSetBit(0); iNextSetBit >= 0; iNextSetBit = successors.nextSetBit(iNextSetBit + 1)) {
                SsaRenamer.this.ssaMeth.getBlocks().get(iNextSetBit).forEachPhiInsn(visitor);
            }
        }
    }
}
