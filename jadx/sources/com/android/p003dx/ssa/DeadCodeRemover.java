package com.android.p003dx.ssa;

import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.ssa.SsaInsn;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashSet;

/* JADX INFO: loaded from: classes4.dex */
public class DeadCodeRemover {
    private final int regCount;
    private final SsaMethod ssaMeth;
    private final ArrayList<SsaInsn>[] useList;
    private final BitSet worklist;

    public static void process(SsaMethod ssaMethod) {
        new DeadCodeRemover(ssaMethod).run();
    }

    private DeadCodeRemover(SsaMethod ssaMethod) {
        this.ssaMeth = ssaMethod;
        int regCount = ssaMethod.getRegCount();
        this.regCount = regCount;
        this.worklist = new BitSet(regCount);
        this.useList = ssaMethod.getUseListCopy();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void run() {
        pruneDeadInstructions();
        HashSet hashSet = new HashSet();
        this.ssaMeth.forEachInsn(new NoSideEffectVisitor(this.worklist));
        while (true) {
            int iNextSetBit = this.worklist.nextSetBit(0);
            if (iNextSetBit >= 0) {
                this.worklist.clear(iNextSetBit);
                if (this.useList[iNextSetBit].size() == 0 || isCircularNoSideEffect(iNextSetBit, null)) {
                    SsaInsn definitionForRegister = this.ssaMeth.getDefinitionForRegister(iNextSetBit);
                    if (!hashSet.contains(definitionForRegister)) {
                        RegisterSpecList sources = definitionForRegister.getSources();
                        int size = sources.size();
                        for (int i = 0; i < size; i++) {
                            RegisterSpec registerSpec = sources.get(i);
                            this.useList[registerSpec.getReg()].remove(definitionForRegister);
                            if (!hasSideEffect(this.ssaMeth.getDefinitionForRegister(registerSpec.getReg()))) {
                                this.worklist.set(registerSpec.getReg());
                            }
                        }
                        hashSet.add(definitionForRegister);
                    }
                }
            } else {
                this.ssaMeth.deleteInsns(hashSet);
                return;
            }
        }
    }

    private void pruneDeadInstructions() {
        HashSet hashSet = new HashSet();
        BitSet bitSetComputeReachability = this.ssaMeth.computeReachability();
        ArrayList<SsaBasicBlock> blocks = this.ssaMeth.getBlocks();
        int i = 0;
        while (true) {
            int iNextClearBit = bitSetComputeReachability.nextClearBit(i);
            if (iNextClearBit < blocks.size()) {
                SsaBasicBlock ssaBasicBlock = blocks.get(iNextClearBit);
                i = iNextClearBit + 1;
                for (int i2 = 0; i2 < ssaBasicBlock.getInsns().size(); i2++) {
                    SsaInsn ssaInsn = ssaBasicBlock.getInsns().get(i2);
                    RegisterSpecList sources = ssaInsn.getSources();
                    int size = sources.size();
                    if (size != 0) {
                        hashSet.add(ssaInsn);
                    }
                    for (int i3 = 0; i3 < size; i3++) {
                        this.useList[sources.get(i3).getReg()].remove(ssaInsn);
                    }
                    RegisterSpec result = ssaInsn.getResult();
                    if (result != null) {
                        ArrayList<SsaInsn> arrayList = this.useList[result.getReg()];
                        int size2 = arrayList.size();
                        int i4 = 0;
                        while (i4 < size2) {
                            SsaInsn ssaInsn2 = arrayList.get(i4);
                            i4++;
                            SsaInsn ssaInsn3 = ssaInsn2;
                            if (ssaInsn3 instanceof PhiInsn) {
                                ((PhiInsn) ssaInsn3).removePhiRegister(result);
                            }
                        }
                    }
                }
            } else {
                this.ssaMeth.deleteInsns(hashSet);
                return;
            }
        }
    }

    private boolean isCircularNoSideEffect(int i, BitSet bitSet) {
        if (bitSet != null && bitSet.get(i)) {
            return true;
        }
        ArrayList<SsaInsn> arrayList = this.useList[i];
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            SsaInsn ssaInsn = arrayList.get(i2);
            i2++;
            if (hasSideEffect(ssaInsn)) {
                return false;
            }
        }
        if (bitSet == null) {
            bitSet = new BitSet(this.regCount);
        }
        bitSet.set(i);
        ArrayList<SsaInsn> arrayList2 = this.useList[i];
        int size2 = arrayList2.size();
        int i3 = 0;
        while (i3 < size2) {
            SsaInsn ssaInsn2 = arrayList2.get(i3);
            i3++;
            RegisterSpec result = ssaInsn2.getResult();
            if (result == null || !isCircularNoSideEffect(result.getReg(), bitSet)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean hasSideEffect(SsaInsn ssaInsn) {
        if (ssaInsn == null) {
            return true;
        }
        return ssaInsn.hasSideEffect();
    }

    private static class NoSideEffectVisitor implements SsaInsn.Visitor {
        BitSet noSideEffectRegs;

        public NoSideEffectVisitor(BitSet bitSet) {
            this.noSideEffectRegs = bitSet;
        }

        @Override // com.android.dx.ssa.SsaInsn.Visitor
        public void visitMoveInsn(NormalSsaInsn normalSsaInsn) {
            if (DeadCodeRemover.hasSideEffect(normalSsaInsn)) {
                return;
            }
            this.noSideEffectRegs.set(normalSsaInsn.getResult().getReg());
        }

        @Override // com.android.dx.ssa.SsaInsn.Visitor
        public void visitPhiInsn(PhiInsn phiInsn) {
            if (DeadCodeRemover.hasSideEffect(phiInsn)) {
                return;
            }
            this.noSideEffectRegs.set(phiInsn.getResult().getReg());
        }

        @Override // com.android.dx.ssa.SsaInsn.Visitor
        public void visitNonMoveInsn(NormalSsaInsn normalSsaInsn) {
            RegisterSpec result = normalSsaInsn.getResult();
            if (DeadCodeRemover.hasSideEffect(normalSsaInsn) || result == null) {
                return;
            }
            this.noSideEffectRegs.set(result.getReg());
        }
    }
}
