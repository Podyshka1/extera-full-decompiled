package com.android.dx.dex.code;

import com.android.dex.Dex$$ExternalSyntheticBUOutline2;
import com.android.dx.dex.DexOptions;
import com.android.dx.dex.code.DalvCode;
import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.RegisterSpecSet;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstMemberRef;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.ssa.BasicRegisterMapper;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashSet;
import okio.ByteString$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
public final class OutputFinisher {
    private final DexOptions dexOptions;
    private ArrayList<DalvInsn> insns;
    private final int paramSize;
    private int reservedParameterCount;
    private final int unreservedRegCount;
    private int reservedCount = -1;
    private boolean hasAnyPositionInfo = false;
    private boolean hasAnyLocalInfo = false;

    public OutputFinisher(DexOptions dexOptions, int i, int i2, int i3) {
        this.dexOptions = dexOptions;
        this.unreservedRegCount = i2;
        this.insns = new ArrayList<>(i);
        this.paramSize = i3;
    }

    public boolean hasAnyPositionInfo() {
        return this.hasAnyPositionInfo;
    }

    public boolean hasAnyLocalInfo() {
        return this.hasAnyLocalInfo;
    }

    private static boolean hasLocalInfo(DalvInsn dalvInsn) {
        if (dalvInsn instanceof LocalSnapshot) {
            RegisterSpecSet locals = ((LocalSnapshot) dalvInsn).getLocals();
            int size = locals.size();
            for (int i = 0; i < size; i++) {
                if (hasLocalInfo(locals.get(i))) {
                    return true;
                }
            }
        } else if ((dalvInsn instanceof LocalStart) && hasLocalInfo(((LocalStart) dalvInsn).getLocal())) {
            return true;
        }
        return false;
    }

    private static boolean hasLocalInfo(RegisterSpec registerSpec) {
        return (registerSpec == null || registerSpec.getLocalItem().getName() == null) ? false : true;
    }

    public HashSet<Constant> getAllConstants() {
        HashSet<Constant> hashSet = new HashSet<>(20);
        ArrayList<DalvInsn> arrayList = this.insns;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            DalvInsn dalvInsn = arrayList.get(i);
            i++;
            addConstants(hashSet, dalvInsn);
        }
        return hashSet;
    }

    private static void addConstants(HashSet<Constant> hashSet, DalvInsn dalvInsn) {
        if (dalvInsn instanceof CstInsn) {
            hashSet.add(((CstInsn) dalvInsn).getConstant());
            return;
        }
        int i = 0;
        if (dalvInsn instanceof MultiCstInsn) {
            MultiCstInsn multiCstInsn = (MultiCstInsn) dalvInsn;
            while (i < multiCstInsn.getNumberOfConstants()) {
                hashSet.add(multiCstInsn.getConstant(i));
                i++;
            }
            return;
        }
        if (dalvInsn instanceof LocalSnapshot) {
            RegisterSpecSet locals = ((LocalSnapshot) dalvInsn).getLocals();
            int size = locals.size();
            while (i < size) {
                addConstants(hashSet, locals.get(i));
                i++;
            }
            return;
        }
        if (dalvInsn instanceof LocalStart) {
            addConstants(hashSet, ((LocalStart) dalvInsn).getLocal());
        }
    }

    private static void addConstants(HashSet<Constant> hashSet, RegisterSpec registerSpec) {
        if (registerSpec == null) {
            return;
        }
        LocalItem localItem = registerSpec.getLocalItem();
        CstString name = localItem.getName();
        CstString signature = localItem.getSignature();
        Type type = registerSpec.getType();
        if (type != Type.KNOWN_NULL) {
            hashSet.add(CstType.intern(type));
        } else {
            hashSet.add(CstType.intern(Type.OBJECT));
        }
        if (name != null) {
            hashSet.add(name);
        }
        if (signature != null) {
            hashSet.add(signature);
        }
    }

    public void add(DalvInsn dalvInsn) {
        this.insns.add(dalvInsn);
        updateInfo(dalvInsn);
    }

    public void insert(int i, DalvInsn dalvInsn) {
        this.insns.add(i, dalvInsn);
        updateInfo(dalvInsn);
    }

    private void updateInfo(DalvInsn dalvInsn) {
        if (!this.hasAnyPositionInfo && dalvInsn.getPosition().getLine() >= 0) {
            this.hasAnyPositionInfo = true;
        }
        if (this.hasAnyLocalInfo || !hasLocalInfo(dalvInsn)) {
            return;
        }
        this.hasAnyLocalInfo = true;
    }

    public void reverseBranch(int i, CodeAddress codeAddress) {
        int size = (this.insns.size() - i) - 1;
        try {
            this.insns.set(size, ((TargetInsn) this.insns.get(size)).withNewTargetAndReversed(codeAddress));
        } catch (ClassCastException unused) {
            f$$ExternalSyntheticBUOutline1.m215m("non-reversible instruction");
        } catch (IndexOutOfBoundsException unused2) {
            f$$ExternalSyntheticBUOutline1.m215m("too few instructions");
        }
    }

    public void assignIndices(DalvCode.AssignIndicesCallback assignIndicesCallback) {
        ArrayList<DalvInsn> arrayList = this.insns;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            DalvInsn dalvInsn = arrayList.get(i);
            i++;
            DalvInsn dalvInsn2 = dalvInsn;
            if (dalvInsn2 instanceof CstInsn) {
                assignIndices((CstInsn) dalvInsn2, assignIndicesCallback);
            } else if (dalvInsn2 instanceof MultiCstInsn) {
                assignIndices((MultiCstInsn) dalvInsn2, assignIndicesCallback);
            }
        }
    }

    private static void assignIndices(CstInsn cstInsn, DalvCode.AssignIndicesCallback assignIndicesCallback) {
        int index;
        Constant constant = cstInsn.getConstant();
        int index2 = assignIndicesCallback.getIndex(constant);
        if (index2 >= 0) {
            cstInsn.setIndex(index2);
        }
        if (!(constant instanceof CstMemberRef) || (index = assignIndicesCallback.getIndex(((CstMemberRef) constant).getDefiningClass())) < 0) {
            return;
        }
        cstInsn.setClassIndex(index);
    }

    private static void assignIndices(MultiCstInsn multiCstInsn, DalvCode.AssignIndicesCallback assignIndicesCallback) {
        for (int i = 0; i < multiCstInsn.getNumberOfConstants(); i++) {
            Constant constant = multiCstInsn.getConstant(i);
            multiCstInsn.setIndex(i, assignIndicesCallback.getIndex(constant));
            if (constant instanceof CstMemberRef) {
                multiCstInsn.setClassIndex(assignIndicesCallback.getIndex(((CstMemberRef) constant).getDefiningClass()));
            }
        }
    }

    public DalvInsnList finishProcessingAndGetList() {
        if (this.reservedCount >= 0) {
            ByteString$$ExternalSyntheticBUOutline0.m968m("already processed");
            return null;
        }
        Dop[] dopArrMakeOpcodesArray = makeOpcodesArray();
        reserveRegisters(dopArrMakeOpcodesArray);
        if (this.dexOptions.ALIGN_64BIT_REGS_IN_OUTPUT_FINISHER) {
            align64bits(dopArrMakeOpcodesArray);
        }
        massageInstructions(dopArrMakeOpcodesArray);
        assignAddressesAndFixBranches();
        return DalvInsnList.makeImmutable(this.insns, this.reservedCount + this.unreservedRegCount + this.reservedParameterCount);
    }

    private Dop[] makeOpcodesArray() {
        int size = this.insns.size();
        Dop[] dopArr = new Dop[size];
        for (int i = 0; i < size; i++) {
            dopArr[i] = this.insns.get(i).getOpcode();
        }
        return dopArr;
    }

    private boolean reserveRegisters(Dop[] dopArr) {
        int i = this.reservedCount;
        if (i < 0) {
            i = 0;
        }
        boolean z = false;
        while (true) {
            int iCalculateReservedCount = calculateReservedCount(dopArr);
            if (i < iCalculateReservedCount) {
                int i2 = iCalculateReservedCount - i;
                int size = this.insns.size();
                for (int i3 = 0; i3 < size; i3++) {
                    DalvInsn dalvInsn = this.insns.get(i3);
                    if (!(dalvInsn instanceof CodeAddress)) {
                        this.insns.set(i3, dalvInsn.withRegisterOffset(i2));
                    }
                }
                z = true;
                i = iCalculateReservedCount;
            } else {
                this.reservedCount = i;
                return z;
            }
        }
    }

    private int calculateReservedCount(Dop[] dopArr) {
        int size = this.insns.size();
        int i = this.reservedCount;
        for (int i2 = 0; i2 < size; i2++) {
            DalvInsn dalvInsn = this.insns.get(i2);
            Dop dop = dopArr[i2];
            Dop dopFindOpcodeForInsn = findOpcodeForInsn(dalvInsn, dop);
            if (dopFindOpcodeForInsn == null) {
                int minimumRegisterRequirement = dalvInsn.getMinimumRegisterRequirement(findExpandedOpcodeForInsn(dalvInsn).getFormat().compatibleRegs(dalvInsn));
                if (minimumRegisterRequirement > i) {
                    i = minimumRegisterRequirement;
                }
            } else {
                if (dop == dopFindOpcodeForInsn) {
                }
            }
            dopArr[i2] = dopFindOpcodeForInsn;
        }
        return i;
    }

    private Dop findOpcodeForInsn(DalvInsn dalvInsn, Dop dop) {
        while (dop != null && (!dop.getFormat().isCompatible(dalvInsn) || (this.dexOptions.forceJumbo && dop.getOpcode() == 26))) {
            dop = Dops.getNextOrNull(dop, this.dexOptions);
        }
        return dop;
    }

    private Dop findExpandedOpcodeForInsn(DalvInsn dalvInsn) {
        Dop dopFindOpcodeForInsn = findOpcodeForInsn(dalvInsn.getLowRegVersion(), dalvInsn.getOpcode());
        if (dopFindOpcodeForInsn != null) {
            return dopFindOpcodeForInsn;
        }
        Dex$$ExternalSyntheticBUOutline2.m220m("No expanded opcode for ", dalvInsn);
        return null;
    }

    private void massageInstructions(Dop[] dopArr) {
        if (this.reservedCount == 0) {
            int size = this.insns.size();
            for (int i = 0; i < size; i++) {
                DalvInsn dalvInsn = this.insns.get(i);
                Dop opcode = dalvInsn.getOpcode();
                Dop dop = dopArr[i];
                if (opcode != dop) {
                    this.insns.set(i, dalvInsn.withOpcode(dop));
                }
            }
            return;
        }
        this.insns = performExpansion(dopArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private ArrayList<DalvInsn> performExpansion(Dop[] dopArr) {
        DalvInsn dalvInsnExpandedSuffix;
        DalvInsn dalvInsn;
        int size = this.insns.size();
        ArrayList<DalvInsn> arrayList = new ArrayList<>(size * 2);
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < size; i++) {
            DalvInsn dalvInsnExpandedVersion = this.insns.get(i);
            Dop opcode = dalvInsnExpandedVersion.getOpcode();
            Dop dopFindExpandedOpcodeForInsn = dopArr[i];
            if (dopFindExpandedOpcodeForInsn != null) {
                dalvInsn = null;
                dalvInsnExpandedSuffix = null;
            } else {
                dopFindExpandedOpcodeForInsn = findExpandedOpcodeForInsn(dalvInsnExpandedVersion);
                BitSet bitSetCompatibleRegs = dopFindExpandedOpcodeForInsn.getFormat().compatibleRegs(dalvInsnExpandedVersion);
                DalvInsn dalvInsnExpandedPrefix = dalvInsnExpandedVersion.expandedPrefix(bitSetCompatibleRegs);
                dalvInsnExpandedSuffix = dalvInsnExpandedVersion.expandedSuffix(bitSetCompatibleRegs);
                dalvInsnExpandedVersion = dalvInsnExpandedVersion.expandedVersion(bitSetCompatibleRegs);
                dalvInsn = dalvInsnExpandedPrefix;
            }
            if (dalvInsnExpandedVersion instanceof CodeAddress) {
                CodeAddress codeAddress = (CodeAddress) dalvInsnExpandedVersion;
                if (codeAddress.getBindsClosely()) {
                    arrayList2.add(codeAddress);
                } else {
                    if (dalvInsn != null) {
                        arrayList.add(dalvInsn);
                    }
                    if (!(dalvInsnExpandedVersion instanceof ZeroSizeInsn) && arrayList2.size() > 0) {
                        int size2 = arrayList2.size();
                        int i2 = 0;
                        while (i2 < size2) {
                            Object obj = arrayList2.get(i2);
                            i2++;
                            arrayList.add((CodeAddress) obj);
                        }
                        arrayList2.clear();
                    }
                    if (dopFindExpandedOpcodeForInsn != opcode) {
                        dalvInsnExpandedVersion = dalvInsnExpandedVersion.withOpcode(dopFindExpandedOpcodeForInsn);
                    }
                    arrayList.add(dalvInsnExpandedVersion);
                    if (dalvInsnExpandedSuffix != null) {
                        arrayList.add(dalvInsnExpandedSuffix);
                    }
                }
            }
        }
        return arrayList;
    }

    private void assignAddressesAndFixBranches() {
        do {
            assignAddresses();
        } while (fixBranches());
    }

    private void assignAddresses() {
        int size = this.insns.size();
        int iCodeSize = 0;
        for (int i = 0; i < size; i++) {
            DalvInsn dalvInsn = this.insns.get(i);
            dalvInsn.setAddress(iCodeSize);
            iCodeSize += dalvInsn.codeSize();
        }
    }

    private boolean fixBranches() {
        int size = this.insns.size();
        int i = 0;
        boolean z = false;
        while (i < size) {
            DalvInsn dalvInsn = this.insns.get(i);
            if (dalvInsn instanceof TargetInsn) {
                Dop opcode = dalvInsn.getOpcode();
                TargetInsn targetInsn = (TargetInsn) dalvInsn;
                if (opcode.getFormat().branchFits(targetInsn)) {
                    continue;
                } else {
                    if (opcode.getFamily() == 40) {
                        Dop dopFindOpcodeForInsn = findOpcodeForInsn(dalvInsn, opcode);
                        if (dopFindOpcodeForInsn == null) {
                            ByteString$$ExternalSyntheticBUOutline0.m968m("method too long");
                            return false;
                        }
                        this.insns.set(i, dalvInsn.withOpcode(dopFindOpcodeForInsn));
                    } else {
                        try {
                            int i2 = i + 1;
                            CodeAddress codeAddress = (CodeAddress) this.insns.get(i2);
                            this.insns.set(i, new TargetInsn(Dops.GOTO, targetInsn.getPosition(), RegisterSpecList.EMPTY, targetInsn.getTarget()));
                            this.insns.add(i, targetInsn.withNewTargetAndReversed(codeAddress));
                            size++;
                            i = i2;
                        } catch (ClassCastException unused) {
                            Segment$$ExternalSyntheticBUOutline1.m973m("unpaired TargetInsn");
                            return false;
                        } catch (IndexOutOfBoundsException unused2) {
                            Segment$$ExternalSyntheticBUOutline1.m973m("unpaired TargetInsn (dangling)");
                            return false;
                        }
                    }
                    z = true;
                }
            }
            i++;
        }
        return z;
    }

    private void align64bits(Dop[] dopArr) {
        do {
            int i = ((this.unreservedRegCount + this.reservedCount) + this.reservedParameterCount) - this.paramSize;
            ArrayList<DalvInsn> arrayList = this.insns;
            int size = arrayList.size();
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (i6 < size) {
                DalvInsn dalvInsn = arrayList.get(i6);
                i6++;
                RegisterSpecList registers = dalvInsn.getRegisters();
                for (int i7 = 0; i7 < registers.size(); i7++) {
                    RegisterSpec registerSpec = registers.get(i7);
                    if (registerSpec.isCategory2()) {
                        boolean z = registerSpec.getReg() >= i;
                        if (registerSpec.isEvenRegister()) {
                            if (z) {
                                i3++;
                            } else {
                                i5++;
                            }
                        } else if (z) {
                            i2++;
                        } else {
                            i4++;
                        }
                    }
                }
            }
            if (i2 > i3 && i4 > i5) {
                addReservedRegisters(1);
            } else if (i2 > i3) {
                addReservedParameters(1);
            } else {
                if (i4 <= i5) {
                    return;
                }
                addReservedRegisters(1);
                if (this.paramSize != 0 && i3 > i2) {
                    addReservedParameters(1);
                }
            }
        } while (reserveRegisters(dopArr));
    }

    private void addReservedParameters(int i) {
        shiftParameters(i);
        this.reservedParameterCount += i;
    }

    private void addReservedRegisters(int i) {
        shiftAllRegisters(i);
        this.reservedCount += i;
    }

    private void shiftAllRegisters(int i) {
        int size = this.insns.size();
        for (int i2 = 0; i2 < size; i2++) {
            DalvInsn dalvInsn = this.insns.get(i2);
            if (!(dalvInsn instanceof CodeAddress)) {
                this.insns.set(i2, dalvInsn.withRegisterOffset(i));
            }
        }
    }

    private void shiftParameters(int i) {
        int size = this.insns.size();
        int i2 = this.unreservedRegCount + this.reservedCount + this.reservedParameterCount;
        int i3 = i2 - this.paramSize;
        BasicRegisterMapper basicRegisterMapper = new BasicRegisterMapper(i2);
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 >= i3) {
                basicRegisterMapper.addMapping(i4, i4 + i, 1);
            } else {
                basicRegisterMapper.addMapping(i4, i4, 1);
            }
        }
        for (int i5 = 0; i5 < size; i5++) {
            DalvInsn dalvInsn = this.insns.get(i5);
            if (!(dalvInsn instanceof CodeAddress)) {
                this.insns.set(i5, dalvInsn.withMapper(basicRegisterMapper));
            }
        }
    }
}
