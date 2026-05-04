package com.android.p003dx.ssa;

import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.code.RegisterSpecSet;
import com.android.p003dx.util.MutabilityControl;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public class LocalVariableInfo extends MutabilityControl {
    private final RegisterSpecSet[] blockStarts;
    private final RegisterSpecSet emptySet;
    private final HashMap<SsaInsn, RegisterSpec> insnAssignments;
    private final int regCount;

    public LocalVariableInfo(SsaMethod ssaMethod) {
        if (ssaMethod == null) {
            throw new NullPointerException("method == null");
        }
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        int regCount = ssaMethod.getRegCount();
        this.regCount = regCount;
        RegisterSpecSet registerSpecSet = new RegisterSpecSet(regCount);
        this.emptySet = registerSpecSet;
        this.blockStarts = new RegisterSpecSet[blocks.size()];
        this.insnAssignments = new HashMap<>();
        registerSpecSet.setImmutable();
    }

    public void setStarts(int i, RegisterSpecSet registerSpecSet) {
        throwIfImmutable();
        if (registerSpecSet == null) {
            throw new NullPointerException("specs == null");
        }
        try {
            this.blockStarts[i] = registerSpecSet;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("bogus index");
        }
    }

    public boolean mergeStarts(int i, RegisterSpecSet registerSpecSet) {
        RegisterSpecSet starts0 = getStarts0(i);
        if (starts0 == null) {
            setStarts(i, registerSpecSet);
            return true;
        }
        RegisterSpecSet registerSpecSetMutableCopy = starts0.mutableCopy();
        registerSpecSetMutableCopy.intersect(registerSpecSet, true);
        if (starts0.equals(registerSpecSetMutableCopy)) {
            return false;
        }
        registerSpecSetMutableCopy.setImmutable();
        setStarts(i, registerSpecSetMutableCopy);
        return true;
    }

    public RegisterSpecSet getStarts(int i) {
        RegisterSpecSet starts0 = getStarts0(i);
        return starts0 != null ? starts0 : this.emptySet;
    }

    public RegisterSpecSet getStarts(SsaBasicBlock ssaBasicBlock) {
        return getStarts(ssaBasicBlock.getIndex());
    }

    public RegisterSpecSet mutableCopyOfStarts(int i) {
        RegisterSpecSet starts0 = getStarts0(i);
        return starts0 != null ? starts0.mutableCopy() : new RegisterSpecSet(this.regCount);
    }

    public void addAssignment(SsaInsn ssaInsn, RegisterSpec registerSpec) {
        throwIfImmutable();
        if (ssaInsn == null) {
            throw new NullPointerException("insn == null");
        }
        if (registerSpec == null) {
            throw new NullPointerException("spec == null");
        }
        this.insnAssignments.put(ssaInsn, registerSpec);
    }

    public RegisterSpec getAssignment(SsaInsn ssaInsn) {
        return this.insnAssignments.get(ssaInsn);
    }

    public int getAssignmentCount() {
        return this.insnAssignments.size();
    }

    public void debugDump() {
        int i = 0;
        while (true) {
            RegisterSpecSet[] registerSpecSetArr = this.blockStarts;
            if (i >= registerSpecSetArr.length) {
                return;
            }
            RegisterSpecSet registerSpecSet = registerSpecSetArr[i];
            if (registerSpecSet != null) {
                if (registerSpecSet == this.emptySet) {
                    System.out.printf("%04x: empty set\n", Integer.valueOf(i));
                } else {
                    System.out.printf("%04x: %s\n", Integer.valueOf(i), this.blockStarts[i]);
                }
            }
            i++;
        }
    }

    private RegisterSpecSet getStarts0(int i) {
        try {
            return this.blockStarts[i];
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("bogus index");
        }
    }
}
