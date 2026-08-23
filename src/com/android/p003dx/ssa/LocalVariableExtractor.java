package com.android.p003dx.ssa;

import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.code.RegisterSpecSet;
import com.android.p003dx.util.IntList;
import java.util.ArrayList;
import java.util.BitSet;

/* JADX INFO: loaded from: classes4.dex */
public class LocalVariableExtractor {
    private final ArrayList<SsaBasicBlock> blocks;
    private final SsaMethod method;
    private final LocalVariableInfo resultInfo;
    private final BitSet workSet;

    public static LocalVariableInfo extract(SsaMethod ssaMethod) {
        return new LocalVariableExtractor(ssaMethod).doit();
    }

    private LocalVariableExtractor(SsaMethod ssaMethod) {
        if (ssaMethod == null) {
            throw new NullPointerException("method == null");
        }
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        this.method = ssaMethod;
        this.blocks = blocks;
        this.resultInfo = new LocalVariableInfo(ssaMethod);
        this.workSet = new BitSet(blocks.size());
    }

    private LocalVariableInfo doit() {
        if (this.method.getRegCount() > 0) {
            int entryBlockIndex = this.method.getEntryBlockIndex();
            while (entryBlockIndex >= 0) {
                this.workSet.clear(entryBlockIndex);
                processBlock(entryBlockIndex);
                entryBlockIndex = this.workSet.nextSetBit(0);
            }
        }
        this.resultInfo.setImmutable();
        return this.resultInfo;
    }

    private void processBlock(int i) {
        RegisterSpecSet registerSpecSetMutableCopyOfStarts = this.resultInfo.mutableCopyOfStarts(i);
        SsaBasicBlock ssaBasicBlock = this.blocks.get(i);
        ArrayList<SsaInsn> insns = ssaBasicBlock.getInsns();
        int size = insns.size();
        if (i == this.method.getExitBlockIndex()) {
            return;
        }
        int i2 = size - 1;
        SsaInsn ssaInsn = insns.get(i2);
        boolean z = (ssaInsn.getOriginalRopInsn().getCatches().size() == 0 || ssaInsn.getResult() == null) ? false : true;
        RegisterSpecSet registerSpecSetMutableCopy = registerSpecSetMutableCopyOfStarts;
        for (int i3 = 0; i3 < size; i3++) {
            if (z && i3 == i2) {
                registerSpecSetMutableCopy.setImmutable();
                registerSpecSetMutableCopy = registerSpecSetMutableCopy.mutableCopy();
            }
            SsaInsn ssaInsn2 = insns.get(i3);
            RegisterSpec localAssignment = ssaInsn2.getLocalAssignment();
            if (localAssignment == null) {
                RegisterSpec result = ssaInsn2.getResult();
                if (result != null && registerSpecSetMutableCopy.get(result.getReg()) != null) {
                    registerSpecSetMutableCopy.remove(registerSpecSetMutableCopy.get(result.getReg()));
                }
            } else {
                RegisterSpec registerSpecWithSimpleType = localAssignment.withSimpleType();
                if (!registerSpecWithSimpleType.equals(registerSpecSetMutableCopy.get(registerSpecWithSimpleType))) {
                    RegisterSpec registerSpecLocalItemToSpec = registerSpecSetMutableCopy.localItemToSpec(registerSpecWithSimpleType.getLocalItem());
                    if (registerSpecLocalItemToSpec != null && registerSpecLocalItemToSpec.getReg() != registerSpecWithSimpleType.getReg()) {
                        registerSpecSetMutableCopy.remove(registerSpecLocalItemToSpec);
                    }
                    this.resultInfo.addAssignment(ssaInsn2, registerSpecWithSimpleType);
                    registerSpecSetMutableCopy.put(registerSpecWithSimpleType);
                }
            }
        }
        registerSpecSetMutableCopy.setImmutable();
        IntList successorList = ssaBasicBlock.getSuccessorList();
        int size2 = successorList.size();
        int primarySuccessorIndex = ssaBasicBlock.getPrimarySuccessorIndex();
        for (int i4 = 0; i4 < size2; i4++) {
            int i5 = successorList.get(i4);
            if (this.resultInfo.mergeStarts(i5, i5 == primarySuccessorIndex ? registerSpecSetMutableCopy : registerSpecSetMutableCopyOfStarts)) {
                this.workSet.set(i5);
            }
        }
    }
}
