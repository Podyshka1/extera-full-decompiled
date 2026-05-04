package com.android.p003dx.p004cf.code;

import com.android.p003dx.p004cf.code.ByteCatchList;
import com.android.p003dx.p004cf.code.BytecodeArray;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstInvokeDynamic;
import com.android.p003dx.rop.cst.CstMemberRef;
import com.android.p003dx.rop.cst.CstMethodHandle;
import com.android.p003dx.rop.cst.CstProtoRef;
import com.android.p003dx.rop.cst.CstString;
import com.android.p003dx.rop.cst.CstType;
import com.android.p003dx.rop.type.Type;
import com.android.p003dx.util.Bits;
import com.android.p003dx.util.IntList;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class BasicBlocker implements BytecodeArray.Visitor {
    private final int[] blockSet;
    private final ByteCatchList[] catchLists;
    private final int[] liveSet;
    private final ConcreteMethod method;
    private int previousOffset;
    private final IntList[] targetLists;
    private final int[] workSet;

    public static ByteBlockList identifyBlocks(ConcreteMethod concreteMethod) {
        BasicBlocker basicBlocker = new BasicBlocker(concreteMethod);
        basicBlocker.doit();
        return basicBlocker.getBlockList();
    }

    private BasicBlocker(ConcreteMethod concreteMethod) {
        if (concreteMethod == null) {
            throw new NullPointerException("method == null");
        }
        this.method = concreteMethod;
        int size = concreteMethod.getCode().size() + 1;
        this.workSet = Bits.makeBitSet(size);
        this.liveSet = Bits.makeBitSet(size);
        this.blockSet = Bits.makeBitSet(size);
        this.targetLists = new IntList[size];
        this.catchLists = new ByteCatchList[size];
        this.previousOffset = -1;
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitInvalid(int i, int i2, int i3) {
        visitCommon(i2, i3, true);
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitNoArgs(int i, int i2, int i3, Type type) {
        if (i == 108 || i == 112) {
            visitCommon(i2, i3, true);
            if (type == Type.INT || type == Type.LONG) {
                visitThrowing(i2, i3, true);
                return;
            }
            return;
        }
        if (i == 172 || i == 177) {
            visitCommon(i2, i3, false);
            this.targetLists[i2] = IntList.EMPTY;
            return;
        }
        if (i != 190) {
            if (i == 191) {
                visitCommon(i2, i3, false);
                visitThrowing(i2, i3, false);
                return;
            } else if (i != 194 && i != 195) {
                switch (i) {
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                    case 50:
                    case 51:
                    case 52:
                    case 53:
                        break;
                    default:
                        switch (i) {
                            case 79:
                            case 80:
                            case 81:
                            case 82:
                            case 83:
                            case 84:
                            case 85:
                            case 86:
                                break;
                            default:
                                visitCommon(i2, i3, true);
                                break;
                        }
                        return;
                }
            }
        }
        visitCommon(i2, i3, true);
        visitThrowing(i2, i3, true);
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitLocal(int i, int i2, int i3, int i4, Type type, int i5) {
        if (i == 169) {
            visitCommon(i2, i3, false);
            this.targetLists[i2] = IntList.EMPTY;
        } else {
            visitCommon(i2, i3, true);
        }
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitConstant(int i, int i2, int i3, Constant constant, int i4) {
        visitCommon(i2, i3, true);
        if ((constant instanceof CstMemberRef) || (constant instanceof CstType) || (constant instanceof CstString) || (constant instanceof CstInvokeDynamic) || (constant instanceof CstMethodHandle) || (constant instanceof CstProtoRef)) {
            visitThrowing(i2, i3, true);
        }
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitBranch(int i, int i2, int i3, int i4) {
        if (i == 167) {
            visitCommon(i2, i3, false);
            this.targetLists[i2] = IntList.makeImmutable(i4);
        } else {
            if (i == 168) {
                addWorkIfNecessary(i2, true);
            }
            int i5 = i2 + i3;
            visitCommon(i2, i3, true);
            addWorkIfNecessary(i5, true);
            this.targetLists[i2] = IntList.makeImmutable(i5, i4);
        }
        addWorkIfNecessary(i4, true);
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitSwitch(int i, int i2, int i3, SwitchList switchList, int i4) {
        visitCommon(i2, i3, false);
        addWorkIfNecessary(switchList.getDefaultTarget(), true);
        int size = switchList.size();
        for (int i5 = 0; i5 < size; i5++) {
            addWorkIfNecessary(switchList.getTarget(i5), true);
        }
        this.targetLists[i2] = switchList.getTargets();
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitNewarray(int i, int i2, CstType cstType, ArrayList<Constant> arrayList) {
        visitCommon(i, i2, true);
        visitThrowing(i, i2, true);
    }

    private ByteBlockList getBlockList() {
        ByteCatchList byteCatchList;
        ByteBlock[] byteBlockArr = new ByteBlock[this.method.getCode().size()];
        int i = 0;
        int i2 = 0;
        while (true) {
            int iFindFirst = Bits.findFirst(this.blockSet, i + 1);
            if (iFindFirst < 0) {
                break;
            }
            if (Bits.get(this.liveSet, i)) {
                int i3 = iFindFirst - 1;
                IntList intListMakeImmutable = null;
                while (true) {
                    if (i3 < i) {
                        i3 = -1;
                        break;
                    }
                    intListMakeImmutable = this.targetLists[i3];
                    if (intListMakeImmutable != null) {
                        break;
                    }
                    i3--;
                }
                if (intListMakeImmutable == null) {
                    intListMakeImmutable = IntList.makeImmutable(iFindFirst);
                    byteCatchList = ByteCatchList.EMPTY;
                } else {
                    byteCatchList = this.catchLists[i3];
                    if (byteCatchList == null) {
                        byteCatchList = ByteCatchList.EMPTY;
                    }
                }
                byteBlockArr[i2] = new ByteBlock(i, i, iFindFirst, intListMakeImmutable, byteCatchList);
                i2++;
            }
            i = iFindFirst;
        }
        ByteBlockList byteBlockList = new ByteBlockList(i2);
        for (int i4 = 0; i4 < i2; i4++) {
            byteBlockList.set(i4, byteBlockArr[i4]);
        }
        return byteBlockList;
    }

    private void doit() {
        BytecodeArray code = this.method.getCode();
        ByteCatchList catches = this.method.getCatches();
        int size = catches.size();
        Bits.set(this.workSet, 0);
        Bits.set(this.blockSet, 0);
        while (!Bits.isEmpty(this.workSet)) {
            try {
                code.processWorkSet(this.workSet, this);
                for (int i = 0; i < size; i++) {
                    ByteCatchList.Item item = catches.get(i);
                    int startPc = item.getStartPc();
                    int endPc = item.getEndPc();
                    if (Bits.anyInRange(this.liveSet, startPc, endPc)) {
                        Bits.set(this.blockSet, startPc);
                        Bits.set(this.blockSet, endPc);
                        addWorkIfNecessary(item.getHandlerPc(), true);
                    }
                }
            } catch (IllegalArgumentException e) {
                throw new SimException("flow of control falls off end of method", e);
            }
        }
    }

    private void addWorkIfNecessary(int i, boolean z) {
        if (!Bits.get(this.liveSet, i)) {
            Bits.set(this.workSet, i);
        }
        if (z) {
            Bits.set(this.blockSet, i);
        }
    }

    private void visitCommon(int i, int i2, boolean z) {
        Bits.set(this.liveSet, i);
        if (z) {
            addWorkIfNecessary(i + i2, false);
        } else {
            Bits.set(this.blockSet, i + i2);
        }
    }

    private void visitThrowing(int i, int i2, boolean z) {
        int i3 = i2 + i;
        if (z) {
            addWorkIfNecessary(i3, true);
        }
        ByteCatchList byteCatchListListFor = this.method.getCatches().listFor(i);
        this.catchLists[i] = byteCatchListListFor;
        IntList[] intListArr = this.targetLists;
        if (!z) {
            i3 = -1;
        }
        intListArr[i] = byteCatchListListFor.toTargetList(i3);
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void setPreviousOffset(int i) {
        this.previousOffset = i;
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public int getPreviousOffset() {
        return this.previousOffset;
    }
}
