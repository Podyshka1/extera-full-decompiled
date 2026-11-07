package com.android.dx.cf.code;

import com.android.dx.cf.code.ByteCatchList;
import com.android.dx.cf.code.LocalVariableList;
import com.android.dx.cf.iface.MethodList;
import com.android.dx.dex.DexOptions;
import com.android.dx.rop.code.BasicBlock;
import com.android.dx.rop.code.BasicBlockList;
import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.InsnList;
import com.android.dx.rop.code.PlainCstInsn;
import com.android.dx.rop.code.PlainInsn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.code.Rops;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.code.ThrowingCstInsn;
import com.android.dx.rop.code.ThrowingInsn;
import com.android.dx.rop.code.TranslationAdvice;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.Bits;
import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import okio.Buffer$$ExternalSyntheticBUOutline4;
import org.mvel2.ast.Instance$$ExternalSyntheticBUOutline0;
import org.mvel2.util.StaticFieldStub$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public final class Ropper {
    private static final int PARAM_ASSIGNMENT = -1;
    private static final int RETURN = -2;
    private static final int SPECIAL_LABEL_COUNT = 7;
    private static final int SYNCH_CATCH_1 = -6;
    private static final int SYNCH_CATCH_2 = -7;
    private static final int SYNCH_RETURN = -3;
    private static final int SYNCH_SETUP_1 = -4;
    private static final int SYNCH_SETUP_2 = -5;
    private final ByteBlockList blocks;
    private final CatchInfo[] catchInfos;
    private final ExceptionSetupLabelAllocator exceptionSetupLabelAllocator;
    private boolean hasSubroutines;
    private final RopperMachine machine;
    private final int maxLabel;
    private final int maxLocals;
    private final ConcreteMethod method;
    private final ArrayList<BasicBlock> result;
    private final ArrayList<IntList> resultSubroutines;
    private final Simulator sim;
    private final Frame[] startFrames;
    private final Subroutine[] subroutines;
    private boolean synchNeedsExceptionHandler;

    public class CatchInfo {
        private final Map<Type, ExceptionHandlerSetup> setups;

        private CatchInfo() {
            this.setups = new HashMap();
        }

        public ExceptionHandlerSetup getSetup(Type type) {
            ExceptionHandlerSetup exceptionHandlerSetup = this.setups.get(type);
            if (exceptionHandlerSetup != null) {
                return exceptionHandlerSetup;
            }
            ExceptionHandlerSetup exceptionHandlerSetup2 = new ExceptionHandlerSetup(type, Ropper.this.exceptionSetupLabelAllocator.getNextLabel());
            this.setups.put(type, exceptionHandlerSetup2);
            return exceptionHandlerSetup2;
        }

        public Collection<ExceptionHandlerSetup> getSetups() {
            return this.setups.values();
        }
    }

    public static class ExceptionHandlerSetup {
        private Type caughtType;
        private int label;

        public ExceptionHandlerSetup(Type type, int i) {
            this.caughtType = type;
            this.label = i;
        }

        public Type getCaughtType() {
            return this.caughtType;
        }

        public int getLabel() {
            return this.label;
        }
    }

    public class Subroutine {
        private BitSet callerBlocks;
        private BitSet retBlocks;
        private int startBlock;

        public Subroutine(int i) {
            this.startBlock = i;
            this.retBlocks = new BitSet(Ropper.this.maxLabel);
            this.callerBlocks = new BitSet(Ropper.this.maxLabel);
            Ropper.this.hasSubroutines = true;
        }

        public Subroutine(Ropper ropper, int i, int i2) {
            this(i);
            addRetBlock(i2);
        }

        public int getStartBlock() {
            return this.startBlock;
        }

        public void addRetBlock(int i) {
            this.retBlocks.set(i);
        }

        public void addCallerBlock(int i) {
            this.callerBlocks.set(i);
        }

        public IntList getSuccessors() {
            IntList intList = new IntList(this.callerBlocks.size());
            int iNextSetBit = this.callerBlocks.nextSetBit(0);
            while (iNextSetBit >= 0) {
                intList.add(Ropper.this.labelToBlock(iNextSetBit).getSuccessors().get(0));
                iNextSetBit = this.callerBlocks.nextSetBit(iNextSetBit + 1);
            }
            intList.setImmutable();
            return intList;
        }

        public void mergeToSuccessors(Frame frame, int[] iArr) {
            int[] iArr2;
            int iNextSetBit = this.callerBlocks.nextSetBit(0);
            while (iNextSetBit >= 0) {
                int i = Ropper.this.labelToBlock(iNextSetBit).getSuccessors().get(0);
                Frame frameSubFrameForLabel = frame.subFrameForLabel(this.startBlock, iNextSetBit);
                if (frameSubFrameForLabel != null) {
                    iArr2 = iArr;
                    Ropper.this.mergeAndWorkAsNecessary(i, -1, null, frameSubFrameForLabel, iArr2);
                } else {
                    iArr2 = iArr;
                    Bits.set(iArr2, iNextSetBit);
                }
                iNextSetBit = this.callerBlocks.nextSetBit(iNextSetBit + 1);
                iArr = iArr2;
            }
        }
    }

    public static RopMethod convert(ConcreteMethod concreteMethod, TranslationAdvice translationAdvice, MethodList methodList, DexOptions dexOptions) {
        try {
            Ropper ropper = new Ropper(concreteMethod, translationAdvice, methodList, dexOptions);
            ropper.doit();
            return ropper.getRopMethod();
        } catch (SimException e) {
            e.addContext("...while working on method " + concreteMethod.getNat().toHuman());
            throw e;
        }
    }

    private Ropper(ConcreteMethod concreteMethod, TranslationAdvice translationAdvice, MethodList methodList, DexOptions dexOptions) {
        if (concreteMethod == null) {
            f$$ExternalSyntheticBUOutline2.m213m("method == null");
            throw null;
        }
        if (translationAdvice == null) {
            f$$ExternalSyntheticBUOutline2.m213m("advice == null");
            throw null;
        }
        this.method = concreteMethod;
        ByteBlockList byteBlockListIdentifyBlocks = BasicBlocker.identifyBlocks(concreteMethod);
        this.blocks = byteBlockListIdentifyBlocks;
        int maxLabel = byteBlockListIdentifyBlocks.getMaxLabel();
        this.maxLabel = maxLabel;
        int maxLocals = concreteMethod.getMaxLocals();
        this.maxLocals = maxLocals;
        RopperMachine ropperMachine = new RopperMachine(this, concreteMethod, translationAdvice, methodList);
        this.machine = ropperMachine;
        this.sim = new Simulator(ropperMachine, concreteMethod, dexOptions);
        Frame[] frameArr = new Frame[maxLabel];
        this.startFrames = frameArr;
        this.subroutines = new Subroutine[maxLabel];
        this.result = new ArrayList<>((byteBlockListIdentifyBlocks.size() * 2) + 10);
        this.resultSubroutines = new ArrayList<>((byteBlockListIdentifyBlocks.size() * 2) + 10);
        this.catchInfos = new CatchInfo[maxLabel];
        this.synchNeedsExceptionHandler = false;
        frameArr[0] = new Frame(maxLocals, concreteMethod.getMaxStack());
        this.exceptionSetupLabelAllocator = new ExceptionSetupLabelAllocator();
    }

    public int getFirstTempStackReg() {
        int normalRegCount = getNormalRegCount();
        return isSynchronized() ? normalRegCount + 1 : normalRegCount;
    }

    private int getSpecialLabel(int i) {
        return this.maxLabel + this.method.getCatches().size() + (~i);
    }

    private int getMinimumUnreservedLabel() {
        return this.maxLabel + this.method.getCatches().size() + 7;
    }

    private int getAvailableLabel() {
        int minimumUnreservedLabel = getMinimumUnreservedLabel();
        ArrayList<BasicBlock> arrayList = this.result;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            BasicBlock basicBlock = arrayList.get(i);
            i++;
            int label = basicBlock.getLabel();
            if (label >= minimumUnreservedLabel) {
                minimumUnreservedLabel = label + 1;
            }
        }
        return minimumUnreservedLabel;
    }

    private boolean isSynchronized() {
        return (this.method.getAccessFlags() & 32) != 0;
    }

    private boolean isStatic() {
        return (this.method.getAccessFlags() & 8) != 0;
    }

    private int getNormalRegCount() {
        return this.maxLocals + this.method.getMaxStack();
    }

    private RegisterSpec getSynchReg() {
        int normalRegCount = getNormalRegCount();
        if (normalRegCount < 1) {
            normalRegCount = 1;
        }
        return RegisterSpec.make(normalRegCount, Type.OBJECT);
    }

    private int labelToResultIndex(int i) {
        int size = this.result.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.result.get(i2).getLabel() == i) {
                return i2;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BasicBlock labelToBlock(int i) {
        int iLabelToResultIndex = labelToResultIndex(i);
        if (iLabelToResultIndex < 0) {
            Buffer$$ExternalSyntheticBUOutline4.m919m("no such label ", Hex.u2(i));
            return null;
        }
        return this.result.get(iLabelToResultIndex);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addBlock(BasicBlock basicBlock, IntList intList) {
        if (basicBlock == null) {
            f$$ExternalSyntheticBUOutline2.m213m("block == null");
            return;
        }
        this.result.add(basicBlock);
        intList.throwIfMutable();
        this.resultSubroutines.add(intList);
    }

    private boolean addOrReplaceBlock(BasicBlock basicBlock, IntList intList) {
        boolean z = false;
        if (basicBlock == null) {
            f$$ExternalSyntheticBUOutline2.m213m("block == null");
            return false;
        }
        int iLabelToResultIndex = labelToResultIndex(basicBlock.getLabel());
        if (iLabelToResultIndex >= 0) {
            removeBlockAndSpecialSuccessors(iLabelToResultIndex);
            z = true;
        }
        this.result.add(basicBlock);
        intList.throwIfMutable();
        this.resultSubroutines.add(intList);
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean addOrReplaceBlockNoDelete(BasicBlock basicBlock, IntList intList) {
        boolean z = false;
        if (basicBlock == null) {
            f$$ExternalSyntheticBUOutline2.m213m("block == null");
            return false;
        }
        int iLabelToResultIndex = labelToResultIndex(basicBlock.getLabel());
        if (iLabelToResultIndex >= 0) {
            this.result.remove(iLabelToResultIndex);
            this.resultSubroutines.remove(iLabelToResultIndex);
            z = true;
        }
        this.result.add(basicBlock);
        intList.throwIfMutable();
        this.resultSubroutines.add(intList);
        return z;
    }

    private void removeBlockAndSpecialSuccessors(int i) {
        int minimumUnreservedLabel = getMinimumUnreservedLabel();
        IntList successors = this.result.get(i).getSuccessors();
        int size = successors.size();
        this.result.remove(i);
        this.resultSubroutines.remove(i);
        for (int i2 = 0; i2 < size; i2++) {
            int i3 = successors.get(i2);
            if (i3 >= minimumUnreservedLabel) {
                int iLabelToResultIndex = labelToResultIndex(i3);
                if (iLabelToResultIndex < 0) {
                    Instance$$ExternalSyntheticBUOutline0.m961m("Invalid label ", Hex.u2(i3));
                    return;
                }
                removeBlockAndSpecialSuccessors(iLabelToResultIndex);
            }
        }
    }

    private RopMethod getRopMethod() {
        int size = this.result.size();
        BasicBlockList basicBlockList = new BasicBlockList(size);
        for (int i = 0; i < size; i++) {
            basicBlockList.set(i, this.result.get(i));
        }
        basicBlockList.setImmutable();
        return new RopMethod(basicBlockList, getSpecialLabel(-1));
    }

    private void doit() {
        int[] iArrMakeBitSet = Bits.makeBitSet(this.maxLabel);
        Bits.set(iArrMakeBitSet, 0);
        addSetupBlocks();
        setFirstFrame();
        while (true) {
            int iFindFirst = Bits.findFirst(iArrMakeBitSet, 0);
            if (iFindFirst < 0) {
                break;
            }
            Bits.clear(iArrMakeBitSet, iFindFirst);
            try {
                processBlock(this.blocks.labelToBlock(iFindFirst), this.startFrames[iFindFirst], iArrMakeBitSet);
            } catch (SimException e) {
                e.addContext("...while working on block " + Hex.u2(iFindFirst));
                throw e;
            }
        }
        addReturnBlock();
        addSynchExceptionHandlerBlock();
        addExceptionSetupBlocks();
        if (this.hasSubroutines) {
            inlineSubroutines();
        }
    }

    private void setFirstFrame() {
        this.startFrames[0].initializeWithParameters(this.method.getEffectiveDescriptor().getParameterTypes());
        this.startFrames[0].setImmutable();
    }

    private void processBlock(ByteBlock byteBlock, Frame frame, int[] iArr) {
        int[] iArr2;
        IntList intList;
        Subroutine subroutine;
        int size;
        int i;
        int primarySuccessorIndex;
        Frame frame2;
        int i2;
        SourcePosition position;
        IntList intListMakeImmutable;
        ByteCatchList catches = byteBlock.getCatches();
        this.machine.startBlock(catches.toRopCatchList());
        Frame frameCopy = frame.copy();
        this.sim.simulate(byteBlock, frameCopy);
        frameCopy.setImmutable();
        int extraBlockCount = this.machine.getExtraBlockCount();
        ArrayList<Insn> insns = this.machine.getInsns();
        int size2 = insns.size();
        int size3 = catches.size();
        IntList successors = byteBlock.getSuccessors();
        if (this.machine.hasJsr()) {
            int i3 = successors.get(1);
            Subroutine[] subroutineArr = this.subroutines;
            if (subroutineArr[i3] == null) {
                subroutineArr[i3] = new Subroutine(i3);
            }
            this.subroutines[i3].addCallerBlock(byteBlock.getLabel());
            iArr2 = iArr;
            intList = successors;
            subroutine = this.subroutines[i3];
            size = 1;
        } else {
            boolean zHasRet = this.machine.hasRet();
            RopperMachine ropperMachine = this.machine;
            if (zHasRet) {
                int subroutineAddress = ropperMachine.getReturnAddress().getSubroutineAddress();
                Subroutine[] subroutineArr2 = this.subroutines;
                Subroutine subroutine2 = subroutineArr2[subroutineAddress];
                if (subroutine2 == null) {
                    subroutineArr2[subroutineAddress] = new Subroutine(this, subroutineAddress, byteBlock.getLabel());
                } else {
                    subroutine2.addRetBlock(byteBlock.getLabel());
                }
                IntList successors2 = this.subroutines[subroutineAddress].getSuccessors();
                iArr2 = iArr;
                this.subroutines[subroutineAddress].mergeToSuccessors(frameCopy, iArr2);
                size = successors2.size();
                intList = successors2;
            } else {
                iArr2 = iArr;
                if (ropperMachine.wereCatchesUsed()) {
                    intList = successors;
                    size = size3;
                } else {
                    intList = successors;
                    subroutine = null;
                    size = 0;
                }
            }
            subroutine = null;
        }
        int size4 = intList.size();
        while (size < size4) {
            int i4 = size;
            int i5 = intList.get(i4);
            int i6 = size4;
            try {
                mergeAndWorkAsNecessary(i5, byteBlock.getLabel(), subroutine, frameCopy, iArr2);
                iArr2 = iArr;
                frameCopy = frameCopy;
                size = i4 + 1;
                size4 = i6;
            } catch (SimException e) {
                e.addContext("...while merging to block " + Hex.u2(i5));
                throw e;
            }
        }
        int i7 = size4;
        Frame frame3 = frameCopy;
        if (i7 == 0 && this.machine.returns()) {
            intList = IntList.makeImmutable(getSpecialLabel(-2));
            i = 1;
        } else {
            i = i7;
        }
        if (i == 0) {
            primarySuccessorIndex = -1;
        } else {
            primarySuccessorIndex = this.machine.getPrimarySuccessorIndex();
            if (primarySuccessorIndex >= 0) {
                primarySuccessorIndex = intList.get(primarySuccessorIndex);
            }
        }
        int i8 = primarySuccessorIndex;
        boolean z = isSynchronized() && this.machine.canThrow();
        if (z || size3 != 0) {
            intList = new IntList(i);
            int i9 = 0;
            boolean z2 = false;
            while (i9 < size3) {
                ByteCatchList.Item item = catches.get(i9);
                CstType exceptionClass = item.getExceptionClass();
                int handlerPc = item.getHandlerPc();
                boolean z3 = (exceptionClass == CstType.OBJECT) | z2;
                Frame frameMakeExceptionHandlerStartFrame = frame3.makeExceptionHandlerStartFrame(exceptionClass);
                int i10 = i9;
                try {
                    Frame frame4 = frame3;
                    i2 = handlerPc;
                    try {
                        mergeAndWorkAsNecessary(i2, byteBlock.getLabel(), null, frameMakeExceptionHandlerStartFrame, iArr);
                        CatchInfo catchInfo = this.catchInfos[i2];
                        if (catchInfo == null) {
                            catchInfo = new CatchInfo();
                            this.catchInfos[i2] = catchInfo;
                        }
                        intList.add(catchInfo.getSetup(exceptionClass.getClassType()).getLabel());
                        i9 = i10 + 1;
                        z2 = z3;
                        frame3 = frame4;
                    } catch (SimException e2) {
                        e = e2;
                        e.addContext("...while merging exception to block " + Hex.u2(i2));
                        throw e;
                    }
                } catch (SimException e3) {
                    e = e3;
                    i2 = handlerPc;
                }
            }
            frame2 = frame3;
            if (z && !z2) {
                intList.add(getSpecialLabel(SYNCH_CATCH_1));
                this.synchNeedsExceptionHandler = true;
                for (int i11 = (size2 - extraBlockCount) - 1; i11 < size2; i11++) {
                    Insn insn = insns.get(i11);
                    if (insn.canThrow()) {
                        insns.set(i11, insn.withAddedCatch(Type.OBJECT));
                    }
                }
            }
            if (i8 >= 0) {
                intList.add(i8);
            }
            intList.setImmutable();
        } else {
            frame2 = frame3;
        }
        int iIndexOf = intList.indexOf(i8);
        while (extraBlockCount > 0) {
            size2--;
            Insn insn2 = insns.get(size2);
            boolean z4 = insn2.getOpcode().getBranchingness() == 1;
            InsnList insnList = new InsnList(z4 ? 2 : 1);
            insnList.set(0, insn2);
            if (z4) {
                insnList.set(1, new PlainInsn(Rops.GOTO, insn2.getPosition(), (RegisterSpec) null, RegisterSpecList.EMPTY));
                intListMakeImmutable = IntList.makeImmutable(i8);
            } else {
                intListMakeImmutable = intList;
            }
            insnList.setImmutable();
            int availableLabel = getAvailableLabel();
            addBlock(new BasicBlock(availableLabel, insnList, intListMakeImmutable, i8), frame2.getSubroutines());
            intList = intList.mutableCopy();
            intList.set(iIndexOf, availableLabel);
            intList.setImmutable();
            extraBlockCount--;
            i8 = availableLabel;
        }
        Insn insn3 = size2 == 0 ? null : insns.get(size2 - 1);
        if (insn3 == null || insn3.getOpcode().getBranchingness() == 1) {
            if (insn3 == null) {
                position = SourcePosition.NO_INFO;
            } else {
                position = insn3.getPosition();
            }
            insns.add(new PlainInsn(Rops.GOTO, position, (RegisterSpec) null, RegisterSpecList.EMPTY));
            size2++;
        }
        InsnList insnList2 = new InsnList(size2);
        for (int i12 = 0; i12 < size2; i12++) {
            insnList2.set(i12, insns.get(i12));
        }
        insnList2.setImmutable();
        addOrReplaceBlock(new BasicBlock(byteBlock.getLabel(), insnList2, intList, i8), frame2.getSubroutines());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeAndWorkAsNecessary(int i, int i2, Subroutine subroutine, Frame frame, int[] iArr) {
        Frame frameMergeWith;
        Frame[] frameArr = this.startFrames;
        Frame frame2 = frameArr[i];
        if (frame2 == null) {
            if (subroutine != null) {
                frameArr[i] = frame.makeNewSubroutineStartFrame(i, i2);
            } else {
                frameArr[i] = frame;
            }
            Bits.set(iArr, i);
            return;
        }
        if (subroutine != null) {
            frameMergeWith = frame2.mergeWithSubroutineCaller(frame, subroutine.getStartBlock(), i2);
        } else {
            frameMergeWith = frame2.mergeWith(frame);
        }
        if (frameMergeWith != frame2) {
            this.startFrames[i] = frameMergeWith;
            Bits.set(iArr, i);
        }
    }

    private void addSetupBlocks() {
        InsnList insnList;
        RegisterSpec registerSpecMakeLocalOptional;
        LocalVariableList localVariables = this.method.getLocalVariables();
        SourcePosition sourcePositionMakeSourcePosistion = this.method.makeSourcePosistion(0);
        StdTypeList parameterTypes = this.method.getEffectiveDescriptor().getParameterTypes();
        int size = parameterTypes.size();
        InsnList insnList2 = new InsnList(size + 1);
        int category = 0;
        for (int i = 0; i < size; i++) {
            Type type = parameterTypes.get(i);
            LocalVariableList.Item itemPcAndIndexToLocal = localVariables.pcAndIndexToLocal(0, category);
            if (itemPcAndIndexToLocal == null) {
                registerSpecMakeLocalOptional = RegisterSpec.make(category, type);
            } else {
                registerSpecMakeLocalOptional = RegisterSpec.makeLocalOptional(category, type, itemPcAndIndexToLocal.getLocalItem());
            }
            insnList2.set(i, new PlainCstInsn(Rops.opMoveParam(type), sourcePositionMakeSourcePosistion, registerSpecMakeLocalOptional, RegisterSpecList.EMPTY, CstInteger.make(category)));
            category += type.getCategory();
        }
        Rop rop = Rops.GOTO;
        RegisterSpecList registerSpecList = RegisterSpecList.EMPTY;
        insnList2.set(size, new PlainInsn(rop, sourcePositionMakeSourcePosistion, (RegisterSpec) null, registerSpecList));
        insnList2.setImmutable();
        boolean zIsSynchronized = isSynchronized();
        int specialLabel = zIsSynchronized ? getSpecialLabel(-4) : 0;
        BasicBlock basicBlock = new BasicBlock(getSpecialLabel(-1), insnList2, IntList.makeImmutable(specialLabel), specialLabel);
        IntList intList = IntList.EMPTY;
        addBlock(basicBlock, intList);
        if (zIsSynchronized) {
            RegisterSpec synchReg = getSynchReg();
            if (isStatic()) {
                ThrowingCstInsn throwingCstInsn = new ThrowingCstInsn(Rops.CONST_OBJECT, sourcePositionMakeSourcePosistion, registerSpecList, StdTypeList.EMPTY, this.method.getDefiningClass());
                insnList = new InsnList(1);
                insnList.set(0, throwingCstInsn);
            } else {
                InsnList insnList3 = new InsnList(2);
                PlainCstInsn plainCstInsn = new PlainCstInsn(Rops.MOVE_PARAM_OBJECT, sourcePositionMakeSourcePosistion, synchReg, registerSpecList, CstInteger.VALUE_0);
                registerSpecList = registerSpecList;
                insnList3.set(0, plainCstInsn);
                insnList3.set(1, new PlainInsn(rop, sourcePositionMakeSourcePosistion, (RegisterSpec) null, registerSpecList));
                insnList = insnList3;
            }
            int specialLabel2 = getSpecialLabel(SYNCH_SETUP_2);
            insnList.setImmutable();
            addBlock(new BasicBlock(specialLabel, insnList, IntList.makeImmutable(specialLabel2), specialLabel2), intList);
            InsnList insnList4 = new InsnList(isStatic() ? 2 : 1);
            if (isStatic()) {
                insnList4.set(0, new PlainInsn(Rops.opMoveResultPseudo(synchReg), sourcePositionMakeSourcePosistion, synchReg, registerSpecList));
            }
            insnList4.set(isStatic() ? 1 : 0, new ThrowingInsn(Rops.MONITOR_ENTER, sourcePositionMakeSourcePosistion, RegisterSpecList.make(synchReg), StdTypeList.EMPTY));
            insnList4.setImmutable();
            addBlock(new BasicBlock(specialLabel2, insnList4, IntList.makeImmutable(0), 0), intList);
        }
    }

    private void addReturnBlock() {
        RegisterSpecList registerSpecListMake;
        Rop returnOp = this.machine.getReturnOp();
        if (returnOp == null) {
            return;
        }
        SourcePosition returnPosition = this.machine.getReturnPosition();
        int specialLabel = getSpecialLabel(-2);
        if (isSynchronized()) {
            InsnList insnList = new InsnList(1);
            insnList.set(0, new ThrowingInsn(Rops.MONITOR_EXIT, returnPosition, RegisterSpecList.make(getSynchReg()), StdTypeList.EMPTY));
            insnList.setImmutable();
            int specialLabel2 = getSpecialLabel(-3);
            addBlock(new BasicBlock(specialLabel, insnList, IntList.makeImmutable(specialLabel2), specialLabel2), IntList.EMPTY);
            specialLabel = specialLabel2;
        }
        InsnList insnList2 = new InsnList(1);
        TypeList sources = returnOp.getSources();
        if (sources.size() == 0) {
            registerSpecListMake = RegisterSpecList.EMPTY;
        } else {
            registerSpecListMake = RegisterSpecList.make(RegisterSpec.make(0, sources.getType(0)));
        }
        insnList2.set(0, new PlainInsn(returnOp, returnPosition, (RegisterSpec) null, registerSpecListMake));
        insnList2.setImmutable();
        IntList intList = IntList.EMPTY;
        addBlock(new BasicBlock(specialLabel, insnList2, intList, -1), intList);
    }

    private void addSynchExceptionHandlerBlock() {
        if (this.synchNeedsExceptionHandler) {
            SourcePosition sourcePositionMakeSourcePosistion = this.method.makeSourcePosistion(0);
            Type type = Type.THROWABLE;
            RegisterSpec registerSpecMake = RegisterSpec.make(0, type);
            InsnList insnList = new InsnList(2);
            insnList.set(0, new PlainInsn(Rops.opMoveException(type), sourcePositionMakeSourcePosistion, registerSpecMake, RegisterSpecList.EMPTY));
            Rop rop = Rops.MONITOR_EXIT;
            RegisterSpecList registerSpecListMake = RegisterSpecList.make(getSynchReg());
            StdTypeList stdTypeList = StdTypeList.EMPTY;
            insnList.set(1, new ThrowingInsn(rop, sourcePositionMakeSourcePosistion, registerSpecListMake, stdTypeList));
            insnList.setImmutable();
            int specialLabel = getSpecialLabel(SYNCH_CATCH_2);
            BasicBlock basicBlock = new BasicBlock(getSpecialLabel(SYNCH_CATCH_1), insnList, IntList.makeImmutable(specialLabel), specialLabel);
            IntList intList = IntList.EMPTY;
            addBlock(basicBlock, intList);
            InsnList insnList2 = new InsnList(1);
            insnList2.set(0, new ThrowingInsn(Rops.THROW, sourcePositionMakeSourcePosistion, RegisterSpecList.make(registerSpecMake), stdTypeList));
            insnList2.setImmutable();
            addBlock(new BasicBlock(specialLabel, insnList2, intList, -1), intList);
        }
    }

    private void addExceptionSetupBlocks() {
        int length = this.catchInfos.length;
        for (int i = 0; i < length; i++) {
            CatchInfo catchInfo = this.catchInfos[i];
            if (catchInfo != null) {
                for (ExceptionHandlerSetup exceptionHandlerSetup : catchInfo.getSetups()) {
                    SourcePosition position = labelToBlock(i).getFirstInsn().getPosition();
                    InsnList insnList = new InsnList(2);
                    Rop ropOpMoveException = Rops.opMoveException(exceptionHandlerSetup.getCaughtType());
                    RegisterSpec registerSpecMake = RegisterSpec.make(this.maxLocals, exceptionHandlerSetup.getCaughtType());
                    RegisterSpecList registerSpecList = RegisterSpecList.EMPTY;
                    insnList.set(0, new PlainInsn(ropOpMoveException, position, registerSpecMake, registerSpecList));
                    insnList.set(1, new PlainInsn(Rops.GOTO, position, (RegisterSpec) null, registerSpecList));
                    insnList.setImmutable();
                    addBlock(new BasicBlock(exceptionHandlerSetup.getLabel(), insnList, IntList.makeImmutable(i), i), this.startFrames[i].getSubroutines());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSubroutineCaller(BasicBlock basicBlock) {
        IntList successors = basicBlock.getSuccessors();
        if (successors.size() < 2) {
            return false;
        }
        int i = successors.get(1);
        Subroutine[] subroutineArr = this.subroutines;
        return i < subroutineArr.length && subroutineArr[i] != null;
    }

    private void inlineSubroutines() {
        final IntList intList = new IntList(4);
        forEachNonSubBlockDepthFirst(0, new BasicBlock.Visitor() { // from class: com.android.dx.cf.code.Ropper.1
            @Override // com.android.dx.rop.code.BasicBlock.Visitor
            public void visitBlock(BasicBlock basicBlock) {
                if (Ropper.this.isSubroutineCaller(basicBlock)) {
                    intList.add(basicBlock.getLabel());
                }
            }
        });
        int availableLabel = getAvailableLabel();
        ArrayList arrayList = new ArrayList(availableLabel);
        for (int i = 0; i < availableLabel; i++) {
            arrayList.add(null);
        }
        for (int i2 = 0; i2 < this.result.size(); i2++) {
            BasicBlock basicBlock = this.result.get(i2);
            if (basicBlock != null) {
                arrayList.set(basicBlock.getLabel(), this.resultSubroutines.get(i2));
            }
        }
        int size = intList.size();
        for (int i3 = 0; i3 < size; i3++) {
            new SubroutineInliner(new LabelAllocator(getAvailableLabel()), arrayList).inlineSubroutineCalledFrom(labelToBlock(intList.get(i3)));
        }
        deleteUnreachableBlocks();
    }

    private void deleteUnreachableBlocks() {
        final IntList intList = new IntList(this.result.size());
        this.resultSubroutines.clear();
        forEachNonSubBlockDepthFirst(getSpecialLabel(-1), new BasicBlock.Visitor() { // from class: com.android.dx.cf.code.Ropper.2
            @Override // com.android.dx.rop.code.BasicBlock.Visitor
            public void visitBlock(BasicBlock basicBlock) {
                intList.add(basicBlock.getLabel());
            }
        });
        intList.sort();
        for (int size = this.result.size() - 1; size >= 0; size--) {
            if (intList.indexOf(this.result.get(size).getLabel()) < 0) {
                this.result.remove(size);
            }
        }
    }

    public static class LabelAllocator {
        int nextAvailableLabel;

        public LabelAllocator(int i) {
            this.nextAvailableLabel = i;
        }

        public int getNextLabel() {
            int i = this.nextAvailableLabel;
            this.nextAvailableLabel = i + 1;
            return i;
        }
    }

    public class ExceptionSetupLabelAllocator extends LabelAllocator {
        int maxSetupLabel;

        public ExceptionSetupLabelAllocator() {
            super(Ropper.this.maxLabel);
            this.maxSetupLabel = Ropper.this.maxLabel + Ropper.this.method.getCatches().size();
        }

        @Override // com.android.dx.cf.code.Ropper.LabelAllocator
        public int getNextLabel() {
            int i = this.nextAvailableLabel;
            if (i >= this.maxSetupLabel) {
                throw new IndexOutOfBoundsException();
            }
            this.nextAvailableLabel = i + 1;
            return i;
        }
    }

    public class SubroutineInliner {
        private final LabelAllocator labelAllocator;
        private final ArrayList<IntList> labelToSubroutines;
        private final HashMap<Integer, Integer> origLabelToCopiedLabel = new HashMap<>();
        private int subroutineStart;
        private int subroutineSuccessor;
        private final BitSet workList;

        public SubroutineInliner(LabelAllocator labelAllocator, ArrayList<IntList> arrayList) {
            this.workList = new BitSet(Ropper.this.maxLabel);
            this.labelAllocator = labelAllocator;
            this.labelToSubroutines = arrayList;
        }

        public void inlineSubroutineCalledFrom(BasicBlock basicBlock) {
            this.subroutineSuccessor = basicBlock.getSuccessors().get(0);
            int i = basicBlock.getSuccessors().get(1);
            this.subroutineStart = i;
            int iMapOrAllocateLabel = mapOrAllocateLabel(i);
            int iNextSetBit = this.workList.nextSetBit(0);
            while (iNextSetBit >= 0) {
                this.workList.clear(iNextSetBit);
                int iIntValue = this.origLabelToCopiedLabel.get(Integer.valueOf(iNextSetBit)).intValue();
                copyBlock(iNextSetBit, iIntValue);
                Ropper ropper = Ropper.this;
                if (ropper.isSubroutineCaller(ropper.labelToBlock(iNextSetBit))) {
                    Ropper.this.new SubroutineInliner(this.labelAllocator, this.labelToSubroutines).inlineSubroutineCalledFrom(Ropper.this.labelToBlock(iIntValue));
                }
                iNextSetBit = this.workList.nextSetBit(0);
            }
            Ropper.this.addOrReplaceBlockNoDelete(new BasicBlock(basicBlock.getLabel(), basicBlock.getInsns(), IntList.makeImmutable(iMapOrAllocateLabel), iMapOrAllocateLabel), this.labelToSubroutines.get(basicBlock.getLabel()));
        }

        private void copyBlock(int i, int i2) {
            IntList intListMakeImmutable;
            BasicBlock basicBlockLabelToBlock = Ropper.this.labelToBlock(i);
            IntList successors = basicBlockLabelToBlock.getSuccessors();
            int i3 = -1;
            if (!Ropper.this.isSubroutineCaller(basicBlockLabelToBlock)) {
                Subroutine subroutineSubroutineFromRetBlock = Ropper.this.subroutineFromRetBlock(i);
                if (subroutineSubroutineFromRetBlock != null) {
                    if (subroutineSubroutineFromRetBlock.startBlock != this.subroutineStart) {
                        StaticFieldStub$$ExternalSyntheticBUOutline0.m978m("ret instruction returns to label ", Hex.u2(subroutineSubroutineFromRetBlock.startBlock), " expected: ", Hex.u2(this.subroutineStart));
                        return;
                    } else {
                        intListMakeImmutable = IntList.makeImmutable(this.subroutineSuccessor);
                        i3 = this.subroutineSuccessor;
                    }
                } else {
                    int primarySuccessor = basicBlockLabelToBlock.getPrimarySuccessor();
                    int size = successors.size();
                    IntList intList = new IntList(size);
                    for (int i4 = 0; i4 < size; i4++) {
                        int i5 = successors.get(i4);
                        int iMapOrAllocateLabel = mapOrAllocateLabel(i5);
                        intList.add(iMapOrAllocateLabel);
                        if (primarySuccessor == i5) {
                            i3 = iMapOrAllocateLabel;
                        }
                    }
                    intList.setImmutable();
                    intListMakeImmutable = intList;
                }
            } else {
                intListMakeImmutable = IntList.makeImmutable(mapOrAllocateLabel(successors.get(0)), successors.get(1));
            }
            Ropper ropper = Ropper.this;
            ropper.addBlock(new BasicBlock(i2, ropper.filterMoveReturnAddressInsns(basicBlockLabelToBlock.getInsns()), intListMakeImmutable, i3), this.labelToSubroutines.get(i2));
        }

        private boolean involvedInSubroutine(int i, int i2) {
            IntList intList = this.labelToSubroutines.get(i);
            return intList != null && intList.size() > 0 && intList.top() == i2;
        }

        private int mapOrAllocateLabel(int i) {
            Integer num = this.origLabelToCopiedLabel.get(Integer.valueOf(i));
            if (num != null) {
                return num.intValue();
            }
            if (!involvedInSubroutine(i, this.subroutineStart)) {
                return i;
            }
            int nextLabel = this.labelAllocator.getNextLabel();
            this.workList.set(i);
            this.origLabelToCopiedLabel.put(Integer.valueOf(i), Integer.valueOf(nextLabel));
            while (true) {
                int size = this.labelToSubroutines.size();
                ArrayList<IntList> arrayList = this.labelToSubroutines;
                if (size <= nextLabel) {
                    arrayList.add(null);
                } else {
                    arrayList.set(nextLabel, arrayList.get(i));
                    return nextLabel;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Subroutine subroutineFromRetBlock(int i) {
        for (int length = this.subroutines.length - 1; length >= 0; length--) {
            Subroutine subroutine = this.subroutines[length];
            if (subroutine != null && subroutine.retBlocks.get(i)) {
                return subroutine;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InsnList filterMoveReturnAddressInsns(InsnList insnList) {
        int size = insnList.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            if (insnList.get(i2).getOpcode() != Rops.MOVE_RETURN_ADDRESS) {
                i++;
            }
        }
        if (i == size) {
            return insnList;
        }
        InsnList insnList2 = new InsnList(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            Insn insn = insnList.get(i4);
            if (insn.getOpcode() != Rops.MOVE_RETURN_ADDRESS) {
                insnList2.set(i3, insn);
                i3++;
            }
        }
        insnList2.setImmutable();
        return insnList2;
    }

    private void forEachNonSubBlockDepthFirst(int i, BasicBlock.Visitor visitor) {
        forEachNonSubBlockDepthFirst0(labelToBlock(i), visitor, new BitSet(this.maxLabel));
    }

    private void forEachNonSubBlockDepthFirst0(BasicBlock basicBlock, BasicBlock.Visitor visitor, BitSet bitSet) {
        int iLabelToResultIndex;
        visitor.visitBlock(basicBlock);
        bitSet.set(basicBlock.getLabel());
        IntList successors = basicBlock.getSuccessors();
        int size = successors.size();
        for (int i = 0; i < size; i++) {
            int i2 = successors.get(i);
            if (!bitSet.get(i2) && ((!isSubroutineCaller(basicBlock) || i <= 0) && (iLabelToResultIndex = labelToResultIndex(i2)) >= 0)) {
                forEachNonSubBlockDepthFirst0(this.result.get(iLabelToResultIndex), visitor, bitSet);
            }
        }
    }
}
