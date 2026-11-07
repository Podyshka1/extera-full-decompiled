package com.android.dx.ssa;

import com.android.dx.rop.code.Exceptions;
import com.android.dx.rop.code.FillArrayDataInsn;
import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.PlainCstInsn;
import com.android.dx.rop.code.PlainInsn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.code.Rops;
import com.android.dx.rop.code.ThrowingCstInsn;
import com.android.dx.rop.code.ThrowingInsn;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstLiteralBits;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.cst.TypedConstant;
import com.android.dx.rop.cst.Zeroes;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.ssa.SsaBasicBlock;
import com.android.dx.ssa.SsaInsn;
import com.android.dx.util.ToHuman;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashSet;

/* JADX INFO: loaded from: classes4.dex */
public class EscapeAnalysis {
    private final ArrayList<EscapeSet> latticeValues = new ArrayList<>();
    private final int regCount;
    private final SsaMethod ssaMeth;

    public enum EscapeState {
        TOP,
        NONE,
        METHOD,
        INTER,
        GLOBAL
    }

    public static class EscapeSet {
        ArrayList<EscapeSet> childSets;
        EscapeState escape;
        ArrayList<EscapeSet> parentSets;
        BitSet regSet;
        boolean replaceableArray;

        public EscapeSet(int i, int i2, EscapeState escapeState) {
            BitSet bitSet = new BitSet(i2);
            this.regSet = bitSet;
            bitSet.set(i);
            this.escape = escapeState;
            this.childSets = new ArrayList<>();
            this.parentSets = new ArrayList<>();
            this.replaceableArray = false;
        }
    }

    private EscapeAnalysis(SsaMethod ssaMethod) {
        this.ssaMeth = ssaMethod;
        this.regCount = ssaMethod.getRegCount();
    }

    private int findSetIndex(RegisterSpec registerSpec) {
        int i = 0;
        while (i < this.latticeValues.size() && !this.latticeValues.get(i).regSet.get(registerSpec.getReg())) {
            i++;
        }
        return i;
    }

    private SsaInsn getInsnForMove(SsaInsn ssaInsn) {
        return this.ssaMeth.getBlocks().get(ssaInsn.getBlock().getPredecessors().nextSetBit(0)).getInsns().get(r1.size() - 1);
    }

    private SsaInsn getMoveForInsn(SsaInsn ssaInsn) {
        return this.ssaMeth.getBlocks().get(ssaInsn.getBlock().getSuccessors().nextSetBit(0)).getInsns().get(0);
    }

    private void addEdge(EscapeSet escapeSet, EscapeSet escapeSet2) {
        if (!escapeSet2.parentSets.contains(escapeSet)) {
            escapeSet2.parentSets.add(escapeSet);
        }
        if (escapeSet.childSets.contains(escapeSet2)) {
            return;
        }
        escapeSet.childSets.add(escapeSet2);
    }

    private void replaceNode(EscapeSet escapeSet, EscapeSet escapeSet2) {
        ArrayList<EscapeSet> arrayList = escapeSet2.parentSets;
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            EscapeSet escapeSet3 = arrayList.get(i2);
            i2++;
            EscapeSet escapeSet4 = escapeSet3;
            escapeSet4.childSets.remove(escapeSet2);
            escapeSet4.childSets.add(escapeSet);
            escapeSet.parentSets.add(escapeSet4);
        }
        ArrayList<EscapeSet> arrayList2 = escapeSet2.childSets;
        int size2 = arrayList2.size();
        while (i < size2) {
            EscapeSet escapeSet5 = arrayList2.get(i);
            i++;
            EscapeSet escapeSet6 = escapeSet5;
            escapeSet6.parentSets.remove(escapeSet2);
            escapeSet6.parentSets.add(escapeSet);
            escapeSet.childSets.add(escapeSet6);
        }
    }

    public static void process(SsaMethod ssaMethod) {
        new EscapeAnalysis(ssaMethod).run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processInsn(SsaInsn ssaInsn) {
        int opcode = ssaInsn.getOpcode().getOpcode();
        RegisterSpec result = ssaInsn.getResult();
        if (opcode == 56 && result.getTypeBearer().getBasicType() == 9) {
            processRegister(result, processMoveResultPseudoInsn(ssaInsn));
            return;
        }
        if (opcode == 3 && result.getTypeBearer().getBasicType() == 9) {
            EscapeSet escapeSet = new EscapeSet(result.getReg(), this.regCount, EscapeState.NONE);
            this.latticeValues.add(escapeSet);
            processRegister(result, escapeSet);
        } else if (opcode == 55 && result.getTypeBearer().getBasicType() == 9) {
            EscapeSet escapeSet2 = new EscapeSet(result.getReg(), this.regCount, EscapeState.NONE);
            this.latticeValues.add(escapeSet2);
            processRegister(result, escapeSet2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private EscapeSet processMoveResultPseudoInsn(SsaInsn ssaInsn) {
        EscapeSet escapeSet;
        RegisterSpec result = ssaInsn.getResult();
        SsaInsn insnForMove = getInsnForMove(ssaInsn);
        int opcode = insnForMove.getOpcode().getOpcode();
        if (opcode == 5) {
            escapeSet = new EscapeSet(result.getReg(), this.regCount, EscapeState.NONE);
        } else if (opcode == 38 || opcode == 45) {
            RegisterSpec registerSpec = insnForMove.getSources().get(0);
            int iFindSetIndex = findSetIndex(registerSpec);
            if (iFindSetIndex != this.latticeValues.size()) {
                EscapeSet escapeSet2 = this.latticeValues.get(iFindSetIndex);
                escapeSet2.regSet.set(result.getReg());
                return escapeSet2;
            }
            if (registerSpec.getType() == Type.KNOWN_NULL) {
                escapeSet = new EscapeSet(result.getReg(), this.regCount, EscapeState.NONE);
            } else {
                escapeSet = new EscapeSet(result.getReg(), this.regCount, EscapeState.GLOBAL);
            }
        } else if (opcode != 46) {
            switch (opcode) {
                case 40:
                    break;
                case 41:
                case 42:
                    if (insnForMove.getSources().get(0).getTypeBearer().isConstant()) {
                        escapeSet = new EscapeSet(result.getReg(), this.regCount, EscapeState.NONE);
                        escapeSet.replaceableArray = true;
                    } else {
                        escapeSet = new EscapeSet(result.getReg(), this.regCount, EscapeState.GLOBAL);
                    }
                    break;
                case 43:
                    break;
                default:
                    return null;
            }
        } else {
            escapeSet = new EscapeSet(result.getReg(), this.regCount, EscapeState.GLOBAL);
        }
        this.latticeValues.add(escapeSet);
        return escapeSet;
    }

    private void processRegister(RegisterSpec registerSpec, EscapeSet escapeSet) {
        ArrayList<RegisterSpec> arrayList = new ArrayList<>();
        arrayList.add(registerSpec);
        while (!arrayList.isEmpty()) {
            RegisterSpec registerSpecRemove = arrayList.remove(arrayList.size() - 1);
            for (SsaInsn ssaInsn : this.ssaMeth.getUseListForRegister(registerSpecRemove.getReg())) {
                if (ssaInsn.getOpcode() == null) {
                    processPhiUse(ssaInsn, escapeSet, arrayList);
                } else {
                    processUse(registerSpecRemove, ssaInsn, escapeSet, arrayList);
                }
            }
        }
    }

    private void processPhiUse(SsaInsn ssaInsn, EscapeSet escapeSet, ArrayList<RegisterSpec> arrayList) {
        int iFindSetIndex = findSetIndex(ssaInsn.getResult());
        if (iFindSetIndex != this.latticeValues.size()) {
            EscapeSet escapeSet2 = this.latticeValues.get(iFindSetIndex);
            if (escapeSet2 != escapeSet) {
                escapeSet.replaceableArray = false;
                escapeSet.regSet.or(escapeSet2.regSet);
                if (escapeSet.escape.compareTo(escapeSet2.escape) < 0) {
                    escapeSet.escape = escapeSet2.escape;
                }
                replaceNode(escapeSet, escapeSet2);
                this.latticeValues.remove(iFindSetIndex);
                return;
            }
            return;
        }
        escapeSet.regSet.set(ssaInsn.getResult().getReg());
        arrayList.add(ssaInsn.getResult());
    }

    private void processUse(RegisterSpec registerSpec, SsaInsn ssaInsn, EscapeSet escapeSet, ArrayList<RegisterSpec> arrayList) {
        int opcode = ssaInsn.getOpcode().getOpcode();
        if (opcode == 2) {
            escapeSet.regSet.set(ssaInsn.getResult().getReg());
            arrayList.add(ssaInsn.getResult());
            return;
        }
        if (opcode != 33 && opcode != 35) {
            if (opcode == 43 || opcode == 7 || opcode == 8) {
                EscapeState escapeState = escapeSet.escape;
                EscapeState escapeState2 = EscapeState.METHOD;
                if (escapeState.compareTo(escapeState2) < 0) {
                    escapeSet.escape = escapeState2;
                    return;
                }
                return;
            }
            if (opcode != 38) {
                if (opcode == 39) {
                    if (!ssaInsn.getSources().get(2).getTypeBearer().isConstant()) {
                        escapeSet.replaceableArray = false;
                    }
                } else {
                    switch (opcode) {
                        case 48:
                            escapeSet.escape = EscapeState.GLOBAL;
                            break;
                    }
                    return;
                }
                if (ssaInsn.getSources().get(0).getTypeBearer().getBasicType() != 9) {
                    return;
                }
                escapeSet.replaceableArray = false;
                RegisterSpecList sources = ssaInsn.getSources();
                if (sources.get(0).getReg() == registerSpec.getReg()) {
                    int iFindSetIndex = findSetIndex(sources.get(1));
                    if (iFindSetIndex != this.latticeValues.size()) {
                        EscapeSet escapeSet2 = this.latticeValues.get(iFindSetIndex);
                        addEdge(escapeSet2, escapeSet);
                        if (escapeSet.escape.compareTo(escapeSet2.escape) < 0) {
                            escapeSet.escape = escapeSet2.escape;
                            return;
                        }
                        return;
                    }
                    return;
                }
                int iFindSetIndex2 = findSetIndex(sources.get(0));
                if (iFindSetIndex2 != this.latticeValues.size()) {
                    EscapeSet escapeSet3 = this.latticeValues.get(iFindSetIndex2);
                    addEdge(escapeSet, escapeSet3);
                    if (escapeSet3.escape.compareTo(escapeSet.escape) < 0) {
                        escapeSet3.escape = escapeSet.escape;
                        return;
                    }
                    return;
                }
                return;
            }
            if (ssaInsn.getSources().get(1).getTypeBearer().isConstant()) {
                return;
            }
            escapeSet.replaceableArray = false;
            return;
        }
        escapeSet.escape = EscapeState.INTER;
    }

    private void scalarReplacement() {
        ArrayList<EscapeSet> arrayList = this.latticeValues;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            EscapeSet escapeSet = arrayList.get(i);
            i++;
            EscapeSet escapeSet2 = escapeSet;
            if (escapeSet2.replaceableArray && escapeSet2.escape == EscapeState.NONE) {
                int iNextSetBit = escapeSet2.regSet.nextSetBit(0);
                SsaInsn definitionForRegister = this.ssaMeth.getDefinitionForRegister(iNextSetBit);
                SsaInsn insnForMove = getInsnForMove(definitionForRegister);
                int intBits = ((CstLiteralBits) insnForMove.getSources().get(0).getTypeBearer()).getIntBits();
                ArrayList<RegisterSpec> arrayList2 = new ArrayList<>(intBits);
                HashSet<SsaInsn> hashSet = new HashSet<>();
                replaceDef(definitionForRegister, insnForMove, intBits, arrayList2);
                hashSet.add(insnForMove);
                hashSet.add(definitionForRegister);
                for (SsaInsn ssaInsn : this.ssaMeth.getUseListForRegister(iNextSetBit)) {
                    replaceUse(ssaInsn, insnForMove, arrayList2, hashSet);
                    hashSet.add(ssaInsn);
                }
                this.ssaMeth.deleteInsns(hashSet);
                this.ssaMeth.onInsnsChanged();
                SsaConverter.updateSsaMethod(this.ssaMeth, this.regCount);
                movePropagate();
            }
        }
    }

    private void replaceDef(SsaInsn ssaInsn, SsaInsn ssaInsn2, int i, ArrayList<RegisterSpec> arrayList) {
        Type type = ssaInsn.getResult().getType();
        for (int i2 = 0; i2 < i; i2++) {
            Constant constantZeroFor = Zeroes.zeroFor(type.getComponentType());
            RegisterSpec registerSpecMake = RegisterSpec.make(this.ssaMeth.makeNewSsaReg(), (TypedConstant) constantZeroFor);
            arrayList.add(registerSpecMake);
            insertPlainInsnBefore(ssaInsn, RegisterSpecList.EMPTY, registerSpecMake, 5, constantZeroFor);
        }
    }

    private void replaceUse(SsaInsn ssaInsn, SsaInsn ssaInsn2, ArrayList<RegisterSpec> arrayList, HashSet<SsaInsn> hashSet) {
        int size = arrayList.size();
        int opcode = ssaInsn.getOpcode().getOpcode();
        if (opcode == 34) {
            ToHuman typeBearer = ssaInsn2.getSources().get(0).getTypeBearer();
            SsaInsn moveForInsn = getMoveForInsn(ssaInsn);
            insertPlainInsnBefore(moveForInsn, RegisterSpecList.EMPTY, moveForInsn.getResult(), 5, (Constant) typeBearer);
            hashSet.add(moveForInsn);
            return;
        }
        if (opcode == 57) {
            ArrayList<Constant> initValues = ((FillArrayDataInsn) ssaInsn.getOriginalRopInsn()).getInitValues();
            for (int i = 0; i < size; i++) {
                RegisterSpec registerSpecMake = RegisterSpec.make(arrayList.get(i).getReg(), (TypeBearer) initValues.get(i));
                insertPlainInsnBefore(ssaInsn, RegisterSpecList.EMPTY, registerSpecMake, 5, initValues.get(i));
                arrayList.set(i, registerSpecMake);
            }
            return;
        }
        if (opcode == 38) {
            SsaInsn moveForInsn2 = getMoveForInsn(ssaInsn);
            RegisterSpecList sources = ssaInsn.getSources();
            int intBits = ((CstLiteralBits) sources.get(1).getTypeBearer()).getIntBits();
            if (intBits < size) {
                RegisterSpec registerSpec = arrayList.get(intBits);
                insertPlainInsnBefore(moveForInsn2, RegisterSpecList.make(registerSpec), registerSpec.withReg(moveForInsn2.getResult().getReg()), 2, null);
            } else {
                insertExceptionThrow(moveForInsn2, sources.get(1), hashSet);
                hashSet.add(moveForInsn2.getBlock().getInsns().get(2));
            }
            hashSet.add(moveForInsn2);
            return;
        }
        if (opcode != 39) {
            return;
        }
        RegisterSpecList sources2 = ssaInsn.getSources();
        int intBits2 = ((CstLiteralBits) sources2.get(2).getTypeBearer()).getIntBits();
        if (intBits2 < size) {
            RegisterSpec registerSpec2 = sources2.get(0);
            RegisterSpec registerSpecWithReg = registerSpec2.withReg(arrayList.get(intBits2).getReg());
            insertPlainInsnBefore(ssaInsn, RegisterSpecList.make(registerSpec2), registerSpecWithReg, 2, null);
            arrayList.set(intBits2, registerSpecWithReg.withSimpleType());
            return;
        }
        insertExceptionThrow(ssaInsn, sources2.get(2), hashSet);
    }

    private void movePropagate() {
        for (int i = 0; i < this.ssaMeth.getRegCount(); i++) {
            SsaInsn definitionForRegister = this.ssaMeth.getDefinitionForRegister(i);
            if (definitionForRegister != null && definitionForRegister.getOpcode() != null && definitionForRegister.getOpcode().getOpcode() == 2) {
                ArrayList<SsaInsn>[] useListCopy = this.ssaMeth.getUseListCopy();
                final RegisterSpec registerSpec = definitionForRegister.getSources().get(0);
                final RegisterSpec result = definitionForRegister.getResult();
                if (registerSpec.getReg() >= this.regCount || result.getReg() >= this.regCount) {
                    RegisterMapper registerMapper = new RegisterMapper() { // from class: com.android.dx.ssa.EscapeAnalysis.1
                        @Override // com.android.dx.ssa.RegisterMapper
                        public int getNewRegisterCount() {
                            return EscapeAnalysis.this.ssaMeth.getRegCount();
                        }

                        @Override // com.android.dx.ssa.RegisterMapper
                        public RegisterSpec map(RegisterSpec registerSpec2) {
                            return registerSpec2.getReg() == result.getReg() ? registerSpec : registerSpec2;
                        }
                    };
                    ArrayList<SsaInsn> arrayList = useListCopy[result.getReg()];
                    int size = arrayList.size();
                    int i2 = 0;
                    while (i2 < size) {
                        SsaInsn ssaInsn = arrayList.get(i2);
                        i2++;
                        ssaInsn.mapSourceRegisters(registerMapper);
                    }
                }
            }
        }
    }

    private void run() {
        this.ssaMeth.forEachBlockDepthFirstDom(new SsaBasicBlock.Visitor() { // from class: com.android.dx.ssa.EscapeAnalysis.2
            @Override // com.android.dx.ssa.SsaBasicBlock.Visitor
            public void visitBlock(SsaBasicBlock ssaBasicBlock, SsaBasicBlock ssaBasicBlock2) {
                ssaBasicBlock.forEachInsn(new SsaInsn.Visitor() { // from class: com.android.dx.ssa.EscapeAnalysis.2.1
                    @Override // com.android.dx.ssa.SsaInsn.Visitor
                    public void visitMoveInsn(NormalSsaInsn normalSsaInsn) {
                    }

                    @Override // com.android.dx.ssa.SsaInsn.Visitor
                    public void visitPhiInsn(PhiInsn phiInsn) {
                    }

                    @Override // com.android.dx.ssa.SsaInsn.Visitor
                    public void visitNonMoveInsn(NormalSsaInsn normalSsaInsn) {
                        EscapeAnalysis.this.processInsn(normalSsaInsn);
                    }
                });
            }
        });
        ArrayList<EscapeSet> arrayList = this.latticeValues;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            EscapeSet escapeSet = arrayList.get(i);
            i++;
            EscapeSet escapeSet2 = escapeSet;
            if (escapeSet2.escape != EscapeState.NONE) {
                ArrayList<EscapeSet> arrayList2 = escapeSet2.childSets;
                int size2 = arrayList2.size();
                int i2 = 0;
                while (i2 < size2) {
                    EscapeSet escapeSet3 = arrayList2.get(i2);
                    i2++;
                    EscapeSet escapeSet4 = escapeSet3;
                    if (escapeSet2.escape.compareTo(escapeSet4.escape) > 0) {
                        escapeSet4.escape = escapeSet2.escape;
                    }
                }
            }
        }
        scalarReplacement();
    }

    private void insertExceptionThrow(SsaInsn ssaInsn, RegisterSpec registerSpec, HashSet<SsaInsn> hashSet) {
        CstType cstType = new CstType(Exceptions.TYPE_ArrayIndexOutOfBoundsException);
        RegisterSpecList registerSpecList = RegisterSpecList.EMPTY;
        insertThrowingInsnBefore(ssaInsn, registerSpecList, null, 40, cstType);
        SsaBasicBlock block = ssaInsn.getBlock();
        SsaBasicBlock ssaBasicBlockInsertNewSuccessor = block.insertNewSuccessor(block.getPrimarySuccessor());
        SsaInsn ssaInsn2 = ssaBasicBlockInsertNewSuccessor.getInsns().get(0);
        RegisterSpec registerSpecMake = RegisterSpec.make(this.ssaMeth.makeNewSsaReg(), cstType);
        insertPlainInsnBefore(ssaInsn2, registerSpecList, registerSpecMake, 56, null);
        SsaBasicBlock ssaBasicBlockInsertNewSuccessor2 = ssaBasicBlockInsertNewSuccessor.insertNewSuccessor(ssaBasicBlockInsertNewSuccessor.getPrimarySuccessor());
        SsaInsn ssaInsn3 = ssaBasicBlockInsertNewSuccessor2.getInsns().get(0);
        insertThrowingInsnBefore(ssaInsn3, RegisterSpecList.make(registerSpecMake, registerSpec), null, 52, new CstMethodRef(cstType, new CstNat(new CstString("<init>"), new CstString("(I)V"))));
        hashSet.add(ssaInsn3);
        SsaBasicBlock ssaBasicBlockInsertNewSuccessor3 = ssaBasicBlockInsertNewSuccessor2.insertNewSuccessor(ssaBasicBlockInsertNewSuccessor2.getPrimarySuccessor());
        SsaInsn ssaInsn4 = ssaBasicBlockInsertNewSuccessor3.getInsns().get(0);
        insertThrowingInsnBefore(ssaInsn4, RegisterSpecList.make(registerSpecMake), null, 35, null);
        ssaBasicBlockInsertNewSuccessor3.replaceSuccessor(ssaBasicBlockInsertNewSuccessor3.getPrimarySuccessorIndex(), this.ssaMeth.getExitBlock().getIndex());
        hashSet.add(ssaInsn4);
    }

    private void insertPlainInsnBefore(SsaInsn ssaInsn, RegisterSpecList registerSpecList, RegisterSpec registerSpec, int i, Constant constant) {
        Rop ropRopFor;
        Insn plainCstInsn;
        Insn originalRopInsn = ssaInsn.getOriginalRopInsn();
        if (i == 56) {
            ropRopFor = Rops.opMoveResultPseudo(registerSpec.getType());
        } else {
            ropRopFor = Rops.ropFor(i, registerSpec, registerSpecList, constant);
        }
        Rop rop = ropRopFor;
        if (constant == null) {
            plainCstInsn = new PlainInsn(rop, originalRopInsn.getPosition(), registerSpec, registerSpecList);
        } else {
            plainCstInsn = new PlainCstInsn(rop, originalRopInsn.getPosition(), registerSpec, registerSpecList, constant);
        }
        NormalSsaInsn normalSsaInsn = new NormalSsaInsn(plainCstInsn, ssaInsn.getBlock());
        ArrayList<SsaInsn> insns = ssaInsn.getBlock().getInsns();
        insns.add(insns.lastIndexOf(ssaInsn), normalSsaInsn);
        this.ssaMeth.onInsnAdded(normalSsaInsn);
    }

    private void insertThrowingInsnBefore(SsaInsn ssaInsn, RegisterSpecList registerSpecList, RegisterSpec registerSpec, int i, Constant constant) {
        Insn throwingCstInsn;
        Insn originalRopInsn = ssaInsn.getOriginalRopInsn();
        Rop ropRopFor = Rops.ropFor(i, registerSpec, registerSpecList, constant);
        if (constant == null) {
            throwingCstInsn = new ThrowingInsn(ropRopFor, originalRopInsn.getPosition(), registerSpecList, StdTypeList.EMPTY);
        } else {
            throwingCstInsn = new ThrowingCstInsn(ropRopFor, originalRopInsn.getPosition(), registerSpecList, StdTypeList.EMPTY, constant);
        }
        NormalSsaInsn normalSsaInsn = new NormalSsaInsn(throwingCstInsn, ssaInsn.getBlock());
        ArrayList<SsaInsn> insns = ssaInsn.getBlock().getInsns();
        insns.add(insns.lastIndexOf(ssaInsn), normalSsaInsn);
        this.ssaMeth.onInsnAdded(normalSsaInsn);
    }
}
