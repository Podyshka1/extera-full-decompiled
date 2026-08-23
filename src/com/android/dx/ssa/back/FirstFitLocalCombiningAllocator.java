package com.android.dx.ssa.back;

import com.android.dx.rop.code.CstInsn;
import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.ssa.InterferenceRegisterMapper;
import com.android.dx.ssa.NormalSsaInsn;
import com.android.dx.ssa.Optimizer;
import com.android.dx.ssa.PhiInsn;
import com.android.dx.ssa.RegisterMapper;
import com.android.dx.ssa.SsaInsn;
import com.android.dx.ssa.SsaMethod;
import com.android.dx.util.IntIterator;
import com.android.dx.util.IntSet;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public class FirstFitLocalCombiningAllocator extends RegisterAllocator {
    private static final boolean DEBUG = false;
    private final ArrayList<NormalSsaInsn> invokeRangeInsns;
    private final Map<LocalItem, ArrayList<RegisterSpec>> localVariables;
    private final InterferenceRegisterMapper mapper;
    private final boolean minimizeRegisters;
    private final ArrayList<NormalSsaInsn> moveResultPseudoInsns;
    private final int paramRangeEnd;
    private final ArrayList<PhiInsn> phiInsns;
    private final BitSet reservedRopRegs;
    private final BitSet ssaRegsMapped;
    private final BitSet usedRopRegs;

    private enum Alignment {
        EVEN { // from class: com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.Alignment.1
            @Override // com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.Alignment
            int nextClearBit(BitSet bitSet, int i) {
                int iNextClearBit = bitSet.nextClearBit(i);
                while (!FirstFitLocalCombiningAllocator.isEven(iNextClearBit)) {
                    iNextClearBit = bitSet.nextClearBit(iNextClearBit + 1);
                }
                return iNextClearBit;
            }
        },
        ODD { // from class: com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.Alignment.2
            @Override // com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.Alignment
            int nextClearBit(BitSet bitSet, int i) {
                int iNextClearBit = bitSet.nextClearBit(i);
                while (FirstFitLocalCombiningAllocator.isEven(iNextClearBit)) {
                    iNextClearBit = bitSet.nextClearBit(iNextClearBit + 1);
                }
                return iNextClearBit;
            }
        },
        UNSPECIFIED { // from class: com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.Alignment.3
            @Override // com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.Alignment
            int nextClearBit(BitSet bitSet, int i) {
                return bitSet.nextClearBit(i);
            }
        };

        abstract int nextClearBit(BitSet bitSet, int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isEven(int i) {
        return (i & 1) == 0;
    }

    @Override // com.android.dx.ssa.back.RegisterAllocator
    public boolean wantsParamsMovedHigh() {
        return true;
    }

    public FirstFitLocalCombiningAllocator(SsaMethod ssaMethod, InterferenceGraph interferenceGraph, boolean z) {
        super(ssaMethod, interferenceGraph);
        this.ssaRegsMapped = new BitSet(ssaMethod.getRegCount());
        this.mapper = new InterferenceRegisterMapper(interferenceGraph, ssaMethod.getRegCount());
        this.minimizeRegisters = z;
        int paramWidth = ssaMethod.getParamWidth();
        this.paramRangeEnd = paramWidth;
        BitSet bitSet = new BitSet(paramWidth * 2);
        this.reservedRopRegs = bitSet;
        bitSet.set(0, paramWidth);
        this.usedRopRegs = new BitSet(paramWidth * 2);
        this.localVariables = new TreeMap();
        this.moveResultPseudoInsns = new ArrayList<>();
        this.invokeRangeInsns = new ArrayList<>();
        this.phiInsns = new ArrayList<>();
    }

    @Override // com.android.dx.ssa.back.RegisterAllocator
    public RegisterMapper allocateRegisters() {
        analyzeInstructions();
        handleLocalAssociatedParams();
        handleUnassociatedParameters();
        handleInvokeRangeInsns();
        handleLocalAssociatedOther();
        handleCheckCastResults();
        handlePhiInsns();
        handleNormalUnassociated();
        return this.mapper;
    }

    private void printLocalVars() {
        System.out.println("Printing local vars");
        for (Map.Entry<LocalItem, ArrayList<RegisterSpec>> entry : this.localVariables.entrySet()) {
            StringBuilder sb = new StringBuilder();
            sb.append('{');
            sb.append(' ');
            ArrayList<RegisterSpec> value = entry.getValue();
            int size = value.size();
            int i = 0;
            while (i < size) {
                RegisterSpec registerSpec = value.get(i);
                i++;
                sb.append('v');
                sb.append(registerSpec.getReg());
                sb.append(' ');
            }
            sb.append('}');
            System.out.printf("Local: %s Registers: %s\n", entry.getKey(), sb);
        }
    }

    private void handleLocalAssociatedParams() {
        for (ArrayList<RegisterSpec> arrayList : this.localVariables.values()) {
            int size = arrayList.size();
            int category = 0;
            int i = -1;
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    break;
                }
                RegisterSpec registerSpec = arrayList.get(i2);
                int parameterIndexForReg = getParameterIndexForReg(registerSpec.getReg());
                if (parameterIndexForReg >= 0) {
                    category = registerSpec.getCategory();
                    addMapping(registerSpec, parameterIndexForReg);
                    i = parameterIndexForReg;
                    break;
                }
                i2++;
                i = parameterIndexForReg;
            }
            if (i >= 0) {
                tryMapRegs(arrayList, i, category, true);
            }
        }
    }

    private int getParameterIndexForReg(int i) {
        Rop opcode;
        SsaInsn definitionForRegister = this.ssaMeth.getDefinitionForRegister(i);
        if (definitionForRegister == null || (opcode = definitionForRegister.getOpcode()) == null || opcode.getOpcode() != 3) {
            return -1;
        }
        return ((CstInteger) ((CstInsn) definitionForRegister.getOriginalRopInsn()).getConstant()).getValue();
    }

    private void handleLocalAssociatedOther() {
        for (ArrayList<RegisterSpec> arrayList : this.localVariables.values()) {
            int i = this.paramRangeEnd;
            boolean zTryMapRegs = false;
            do {
                int size = arrayList.size();
                int i2 = 1;
                for (int i3 = 0; i3 < size; i3++) {
                    RegisterSpec registerSpec = arrayList.get(i3);
                    int category = registerSpec.getCategory();
                    if (!this.ssaRegsMapped.get(registerSpec.getReg()) && category > i2) {
                        i2 = category;
                    }
                }
                int iFindRopRegForLocal = findRopRegForLocal(i, i2);
                if (canMapRegs(arrayList, iFindRopRegForLocal)) {
                    zTryMapRegs = tryMapRegs(arrayList, iFindRopRegForLocal, i2, true);
                }
                i = iFindRopRegForLocal + 1;
            } while (!zTryMapRegs);
        }
    }

    private boolean tryMapRegs(ArrayList<RegisterSpec> arrayList, int i, int i2, boolean z) {
        int size = arrayList.size();
        boolean z2 = false;
        int i3 = 0;
        while (i3 < size) {
            RegisterSpec registerSpec = arrayList.get(i3);
            i3++;
            RegisterSpec registerSpec2 = registerSpec;
            if (!this.ssaRegsMapped.get(registerSpec2.getReg())) {
                boolean zTryMapReg = tryMapReg(registerSpec2, i, i2);
                z2 = !zTryMapReg || z2;
                if (zTryMapReg && z) {
                    markReserved(i, registerSpec2.getCategory());
                }
            }
        }
        return !z2;
    }

    private boolean tryMapReg(RegisterSpec registerSpec, int i, int i2) {
        if (registerSpec.getCategory() > i2 || this.ssaRegsMapped.get(registerSpec.getReg()) || !canMapReg(registerSpec, i)) {
            return false;
        }
        addMapping(registerSpec, i);
        return true;
    }

    private void markReserved(int i, int i2) {
        this.reservedRopRegs.set(i, i2 + i, true);
    }

    private boolean rangeContainsReserved(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            if (this.reservedRopRegs.get(i3)) {
                return true;
            }
        }
        return false;
    }

    private boolean isThisPointerReg(int i) {
        return i == 0 && !this.ssaMeth.isStatic();
    }

    private Alignment getAlignment(int i) {
        Alignment alignment = Alignment.UNSPECIFIED;
        if (i != 2) {
            return alignment;
        }
        if (isEven(this.paramRangeEnd)) {
            return Alignment.EVEN;
        }
        return Alignment.ODD;
    }

    private int findNextUnreservedRopReg(int i, int i2) {
        return findNextUnreservedRopReg(i, i2, getAlignment(i2));
    }

    private int findNextUnreservedRopReg(int i, int i2, Alignment alignment) {
        int iNextClearBit = alignment.nextClearBit(this.reservedRopRegs, i);
        while (true) {
            int i3 = 1;
            while (i3 < i2 && !this.reservedRopRegs.get(iNextClearBit + i3)) {
                i3++;
            }
            if (i3 == i2) {
                return iNextClearBit;
            }
            iNextClearBit = alignment.nextClearBit(this.reservedRopRegs, iNextClearBit + i3);
        }
    }

    private int findRopRegForLocal(int i, int i2) {
        Alignment alignment = getAlignment(i2);
        int iNextClearBit = alignment.nextClearBit(this.usedRopRegs, i);
        while (true) {
            int i3 = 1;
            while (i3 < i2 && !this.usedRopRegs.get(iNextClearBit + i3)) {
                i3++;
            }
            if (i3 == i2) {
                return iNextClearBit;
            }
            iNextClearBit = alignment.nextClearBit(this.usedRopRegs, iNextClearBit + i3);
        }
    }

    private void handleUnassociatedParameters() {
        int regCount = this.ssaMeth.getRegCount();
        for (int i = 0; i < regCount; i++) {
            if (!this.ssaRegsMapped.get(i)) {
                int parameterIndexForReg = getParameterIndexForReg(i);
                RegisterSpec definitionSpecForSsaReg = getDefinitionSpecForSsaReg(i);
                if (parameterIndexForReg >= 0) {
                    addMapping(definitionSpecForSsaReg, parameterIndexForReg);
                }
            }
        }
    }

    private void handleInvokeRangeInsns() {
        ArrayList<NormalSsaInsn> arrayList = this.invokeRangeInsns;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            NormalSsaInsn normalSsaInsn = arrayList.get(i);
            i++;
            adjustAndMapSourceRangeRange(normalSsaInsn);
        }
    }

    private void handleCheckCastResults() {
        ArrayList<NormalSsaInsn> arrayList = this.moveResultPseudoInsns;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            NormalSsaInsn normalSsaInsn = arrayList.get(i);
            i++;
            NormalSsaInsn normalSsaInsn2 = normalSsaInsn;
            RegisterSpec result = normalSsaInsn2.getResult();
            int reg = result.getReg();
            BitSet predecessors = normalSsaInsn2.getBlock().getPredecessors();
            if (predecessors.cardinality() == 1) {
                ArrayList<SsaInsn> insns = this.ssaMeth.getBlocks().get(predecessors.nextSetBit(0)).getInsns();
                SsaInsn ssaInsn = insns.get(insns.size() - 1);
                if (ssaInsn.getOpcode().getOpcode() == 43) {
                    RegisterSpec registerSpec = ssaInsn.getSources().get(0);
                    int reg2 = registerSpec.getReg();
                    int category = registerSpec.getCategory();
                    boolean zTryMapReg = this.ssaRegsMapped.get(reg);
                    boolean zTryMapReg2 = this.ssaRegsMapped.get(reg2);
                    if ((!zTryMapReg2) & zTryMapReg) {
                        zTryMapReg2 = tryMapReg(registerSpec, this.mapper.oldToNew(reg), category);
                    }
                    if ((!zTryMapReg) & zTryMapReg2) {
                        zTryMapReg = tryMapReg(result, this.mapper.oldToNew(reg2), category);
                    }
                    if (!zTryMapReg || !zTryMapReg2) {
                        int iFindNextUnreservedRopReg = findNextUnreservedRopReg(this.paramRangeEnd, category);
                        ArrayList<RegisterSpec> arrayList2 = new ArrayList<>(2);
                        arrayList2.add(result);
                        arrayList2.add(registerSpec);
                        while (!tryMapRegs(arrayList2, iFindNextUnreservedRopReg, category, false)) {
                            iFindNextUnreservedRopReg = findNextUnreservedRopReg(iFindNextUnreservedRopReg + 1, category);
                        }
                    }
                    boolean z = ssaInsn.getOriginalRopInsn().getCatches().size() != 0;
                    int iOldToNew = this.mapper.oldToNew(reg);
                    if (iOldToNew != this.mapper.oldToNew(reg2) && !z) {
                        ((NormalSsaInsn) ssaInsn).changeOneSource(0, insertMoveBefore(ssaInsn, registerSpec));
                        addMapping(ssaInsn.getSources().get(0), iOldToNew);
                    }
                }
            }
        }
    }

    private void handlePhiInsns() {
        ArrayList<PhiInsn> arrayList = this.phiInsns;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            PhiInsn phiInsn = arrayList.get(i);
            i++;
            processPhiInsn(phiInsn);
        }
    }

    private void handleNormalUnassociated() {
        RegisterSpec definitionSpecForSsaReg;
        int regCount = this.ssaMeth.getRegCount();
        for (int i = 0; i < regCount; i++) {
            if (!this.ssaRegsMapped.get(i) && (definitionSpecForSsaReg = getDefinitionSpecForSsaReg(i)) != null) {
                int category = definitionSpecForSsaReg.getCategory();
                int iFindNextUnreservedRopReg = findNextUnreservedRopReg(this.paramRangeEnd, category);
                while (!canMapReg(definitionSpecForSsaReg, iFindNextUnreservedRopReg)) {
                    iFindNextUnreservedRopReg = findNextUnreservedRopReg(iFindNextUnreservedRopReg + 1, category);
                }
                addMapping(definitionSpecForSsaReg, iFindNextUnreservedRopReg);
            }
        }
    }

    private boolean canMapRegs(ArrayList<RegisterSpec> arrayList, int i) {
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            RegisterSpec registerSpec = arrayList.get(i2);
            i2++;
            RegisterSpec registerSpec2 = registerSpec;
            if (!this.ssaRegsMapped.get(registerSpec2.getReg()) && !canMapReg(registerSpec2, i)) {
                return false;
            }
        }
        return true;
    }

    private boolean canMapReg(RegisterSpec registerSpec, int i) {
        return (spansParamRange(i, registerSpec.getCategory()) || this.mapper.interferes(registerSpec, i)) ? false : true;
    }

    private boolean spansParamRange(int i, int i2) {
        int i3 = this.paramRangeEnd;
        return i < i3 && i + i2 > i3;
    }

    private void analyzeInstructions() {
        this.ssaMeth.forEachInsn(new SsaInsn.Visitor() { // from class: com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.1
            @Override // com.android.dx.ssa.SsaInsn.Visitor
            public void visitMoveInsn(NormalSsaInsn normalSsaInsn) {
                processInsn(normalSsaInsn);
            }

            @Override // com.android.dx.ssa.SsaInsn.Visitor
            public void visitPhiInsn(PhiInsn phiInsn) {
                processInsn(phiInsn);
            }

            @Override // com.android.dx.ssa.SsaInsn.Visitor
            public void visitNonMoveInsn(NormalSsaInsn normalSsaInsn) {
                processInsn(normalSsaInsn);
            }

            private void processInsn(SsaInsn ssaInsn) {
                RegisterSpec localAssignment = ssaInsn.getLocalAssignment();
                if (localAssignment != null) {
                    LocalItem localItem = localAssignment.getLocalItem();
                    ArrayList arrayList = (ArrayList) FirstFitLocalCombiningAllocator.this.localVariables.get(localItem);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        FirstFitLocalCombiningAllocator.this.localVariables.put(localItem, arrayList);
                    }
                    arrayList.add(localAssignment);
                }
                if (ssaInsn instanceof NormalSsaInsn) {
                    if (ssaInsn.getOpcode().getOpcode() == 56) {
                        FirstFitLocalCombiningAllocator.this.moveResultPseudoInsns.add((NormalSsaInsn) ssaInsn);
                        return;
                    } else {
                        if (Optimizer.getAdvice().requiresSourcesInOrder(ssaInsn.getOriginalRopInsn().getOpcode(), ssaInsn.getSources())) {
                            FirstFitLocalCombiningAllocator.this.invokeRangeInsns.add((NormalSsaInsn) ssaInsn);
                            return;
                        }
                        return;
                    }
                }
                if (ssaInsn instanceof PhiInsn) {
                    FirstFitLocalCombiningAllocator.this.phiInsns.add((PhiInsn) ssaInsn);
                }
            }
        });
    }

    private void addMapping(RegisterSpec registerSpec, int i) {
        int reg = registerSpec.getReg();
        if (this.ssaRegsMapped.get(reg) || !canMapReg(registerSpec, i)) {
            throw new RuntimeException("attempt to add invalid register mapping");
        }
        int category = registerSpec.getCategory();
        this.mapper.addMapping(registerSpec.getReg(), i, category);
        this.ssaRegsMapped.set(reg);
        this.usedRopRegs.set(i, category + i);
    }

    private void adjustAndMapSourceRangeRange(NormalSsaInsn normalSsaInsn) {
        int iFindRangeAndAdjust = findRangeAndAdjust(normalSsaInsn);
        RegisterSpecList sources = normalSsaInsn.getSources();
        int size = sources.size();
        int i = 0;
        while (i < size) {
            RegisterSpec registerSpec = sources.get(i);
            int reg = registerSpec.getReg();
            int category = registerSpec.getCategory();
            int i2 = iFindRangeAndAdjust + category;
            if (!this.ssaRegsMapped.get(reg)) {
                LocalItem localItemForReg = getLocalItemForReg(reg);
                addMapping(registerSpec, iFindRangeAndAdjust);
                if (localItemForReg != null) {
                    markReserved(iFindRangeAndAdjust, category);
                    ArrayList<RegisterSpec> arrayList = this.localVariables.get(localItemForReg);
                    int size2 = arrayList.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        RegisterSpec registerSpec2 = arrayList.get(i3);
                        if (-1 == sources.indexOfRegister(registerSpec2.getReg())) {
                            tryMapReg(registerSpec2, iFindRangeAndAdjust, category);
                        }
                    }
                }
            }
            i++;
            iFindRangeAndAdjust = i2;
        }
    }

    private int findRangeAndAdjust(NormalSsaInsn normalSsaInsn) {
        int iOldToNew;
        BitSet bitSet;
        int iFitPlanForRange;
        RegisterSpecList sources = normalSsaInsn.getSources();
        int size = sources.size();
        int[] iArr = new int[size];
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            int category = sources.get(i2).getCategory();
            iArr[i2] = category;
            i += category;
        }
        int i3 = Integer.MIN_VALUE;
        BitSet bitSet2 = null;
        int iFindAnyFittingRange = -1;
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            int reg = sources.get(i5).getReg();
            if (i5 != 0) {
                i4 -= iArr[i5 - 1];
            }
            if (this.ssaRegsMapped.get(reg) && (iOldToNew = this.mapper.oldToNew(reg) + i4) >= 0 && !spansParamRange(iOldToNew, i) && (iFitPlanForRange = fitPlanForRange(iOldToNew, normalSsaInsn, iArr, (bitSet = new BitSet(size)))) >= 0) {
                int iCardinality = iFitPlanForRange - bitSet.cardinality();
                if (iCardinality > i3) {
                    i3 = iCardinality;
                    iFindAnyFittingRange = iOldToNew;
                    bitSet2 = bitSet;
                }
                if (iFitPlanForRange == i) {
                    break;
                }
            }
        }
        if (iFindAnyFittingRange == -1) {
            bitSet2 = new BitSet(size);
            iFindAnyFittingRange = findAnyFittingRange(normalSsaInsn, i, iArr, bitSet2);
        }
        for (int iNextSetBit = bitSet2.nextSetBit(0); iNextSetBit >= 0; iNextSetBit = bitSet2.nextSetBit(iNextSetBit + 1)) {
            normalSsaInsn.changeOneSource(iNextSetBit, insertMoveBefore(normalSsaInsn, sources.get(iNextSetBit)));
        }
        return iFindAnyFittingRange;
    }

    private int findAnyFittingRange(NormalSsaInsn normalSsaInsn, int i, int[] iArr, BitSet bitSet) {
        Alignment alignment = Alignment.UNSPECIFIED;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        for (int i5 : iArr) {
            if (i5 == 2) {
                if (isEven(i4)) {
                    i3++;
                } else {
                    i2++;
                }
                i4 += 2;
            } else {
                i4++;
            }
        }
        if (i2 > i3) {
            if (isEven(this.paramRangeEnd)) {
                alignment = Alignment.ODD;
            } else {
                alignment = Alignment.EVEN;
            }
        } else if (i3 > 0) {
            if (isEven(this.paramRangeEnd)) {
                alignment = Alignment.EVEN;
            } else {
                alignment = Alignment.ODD;
            }
        }
        int i6 = this.paramRangeEnd;
        while (true) {
            int iFindNextUnreservedRopReg = findNextUnreservedRopReg(i6, i, alignment);
            if (fitPlanForRange(iFindNextUnreservedRopReg, normalSsaInsn, iArr, bitSet) >= 0) {
                return iFindNextUnreservedRopReg;
            }
            i6 = iFindNextUnreservedRopReg + 1;
            bitSet.clear();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int fitPlanForRange(int i, NormalSsaInsn normalSsaInsn, int[] iArr, BitSet bitSet) {
        RegisterSpecList sources = normalSsaInsn.getSources();
        int size = sources.size();
        RegisterSpecList registerSpecListSsaSetToSpecs = ssaSetToSpecs(normalSsaInsn.getBlock().getLiveOutRegs());
        BitSet bitSet2 = new BitSet(this.ssaMeth.getRegCount());
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            RegisterSpec registerSpec = sources.get(i3);
            int reg = registerSpec.getReg();
            int i4 = iArr[i3];
            if (i3 != 0) {
                i += iArr[i3 - 1];
            }
            if (!this.ssaRegsMapped.get(reg) || this.mapper.oldToNew(reg) != i) {
                if (rangeContainsReserved(i, i4)) {
                    return -1;
                }
                if (this.ssaRegsMapped.get(reg) || !canMapReg(registerSpec, i) || bitSet2.get(reg)) {
                    if (this.mapper.areAnyPinned(registerSpecListSsaSetToSpecs, i, i4) || this.mapper.areAnyPinned(sources, i, i4)) {
                        return -1;
                    }
                    bitSet.set(i3);
                } else {
                    i2 += i4;
                }
            }
            bitSet2.set(reg);
        }
        return i2;
    }

    RegisterSpecList ssaSetToSpecs(IntSet intSet) {
        RegisterSpecList registerSpecList = new RegisterSpecList(intSet.elements());
        IntIterator it = intSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            registerSpecList.set(i, getDefinitionSpecForSsaReg(it.next()));
            i++;
        }
        return registerSpecList;
    }

    private LocalItem getLocalItemForReg(int i) {
        for (Map.Entry<LocalItem, ArrayList<RegisterSpec>> entry : this.localVariables.entrySet()) {
            ArrayList<RegisterSpec> value = entry.getValue();
            int size = value.size();
            int i2 = 0;
            while (i2 < size) {
                RegisterSpec registerSpec = value.get(i2);
                i2++;
                if (registerSpec.getReg() == i) {
                    return entry.getKey();
                }
            }
        }
        return null;
    }

    private void processPhiInsn(PhiInsn phiInsn) {
        RegisterSpec result = phiInsn.getResult();
        int reg = result.getReg();
        int category = result.getCategory();
        RegisterSpecList sources = phiInsn.getSources();
        int size = sources.size();
        ArrayList<RegisterSpec> arrayList = new ArrayList<>();
        Multiset multiset = new Multiset(size + 1);
        if (this.ssaRegsMapped.get(reg)) {
            multiset.add(this.mapper.oldToNew(reg));
        } else {
            arrayList.add(result);
        }
        for (int i = 0; i < size; i++) {
            RegisterSpec result2 = this.ssaMeth.getDefinitionForRegister(sources.get(i).getReg()).getResult();
            int reg2 = result2.getReg();
            if (this.ssaRegsMapped.get(reg2)) {
                multiset.add(this.mapper.oldToNew(reg2));
            } else {
                arrayList.add(result2);
            }
        }
        for (int i2 = 0; i2 < multiset.getSize(); i2++) {
            tryMapRegs(arrayList, multiset.getAndRemoveHighestCount(), category, false);
        }
        int iFindNextUnreservedRopReg = findNextUnreservedRopReg(this.paramRangeEnd, category);
        while (!tryMapRegs(arrayList, iFindNextUnreservedRopReg, category, false)) {
            iFindNextUnreservedRopReg = findNextUnreservedRopReg(iFindNextUnreservedRopReg + 1, category);
        }
    }

    private static class Multiset {
        private final int[] count;
        private final int[] reg;
        private int size = 0;

        public Multiset(int i) {
            this.reg = new int[i];
            this.count = new int[i];
        }

        public void add(int i) {
            int i2 = 0;
            while (true) {
                int i3 = this.size;
                if (i2 < i3) {
                    if (this.reg[i2] == i) {
                        int[] iArr = this.count;
                        iArr[i2] = iArr[i2] + 1;
                        return;
                    }
                    i2++;
                } else {
                    this.reg[i3] = i;
                    this.count[i3] = 1;
                    this.size = i3 + 1;
                    return;
                }
            }
        }

        public int getAndRemoveHighestCount() {
            int i = -1;
            int i2 = -1;
            int i3 = 0;
            for (int i4 = 0; i4 < this.size; i4++) {
                int i5 = this.count[i4];
                if (i3 < i5) {
                    i2 = this.reg[i4];
                    i = i4;
                    i3 = i5;
                }
            }
            this.count[i] = 0;
            return i2;
        }

        public int getSize() {
            return this.size;
        }
    }
}
