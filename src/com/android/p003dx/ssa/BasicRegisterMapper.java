package com.android.p003dx.ssa;

import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.util.IntList;

/* JADX INFO: loaded from: classes4.dex */
public class BasicRegisterMapper extends RegisterMapper {
    private final IntList oldToNew;
    private int runningCountNewRegisters;

    public BasicRegisterMapper(int i) {
        this.oldToNew = new IntList(i);
    }

    @Override // com.android.p003dx.ssa.RegisterMapper
    public int getNewRegisterCount() {
        return this.runningCountNewRegisters;
    }

    @Override // com.android.p003dx.ssa.RegisterMapper
    public RegisterSpec map(RegisterSpec registerSpec) {
        int i;
        if (registerSpec == null) {
            return null;
        }
        try {
            i = this.oldToNew.get(registerSpec.getReg());
        } catch (IndexOutOfBoundsException unused) {
            i = -1;
        }
        if (i < 0) {
            throw new RuntimeException("no mapping specified for register");
        }
        return registerSpec.withReg(i);
    }

    public int oldToNew(int i) {
        if (i >= this.oldToNew.size()) {
            return -1;
        }
        return this.oldToNew.get(i);
    }

    public String toHuman() {
        StringBuilder sb = new StringBuilder();
        sb.append("Old\tNew\n");
        int size = this.oldToNew.size();
        for (int i = 0; i < size; i++) {
            sb.append(i);
            sb.append('\t');
            sb.append(this.oldToNew.get(i));
            sb.append('\n');
        }
        sb.append("new reg count:");
        sb.append(this.runningCountNewRegisters);
        sb.append('\n');
        return sb.toString();
    }

    public void addMapping(int i, int i2, int i3) {
        if (i >= this.oldToNew.size()) {
            for (int size = i - this.oldToNew.size(); size >= 0; size--) {
                this.oldToNew.add(-1);
            }
        }
        this.oldToNew.set(i, i2);
        int i4 = i2 + i3;
        if (this.runningCountNewRegisters < i4) {
            this.runningCountNewRegisters = i4;
        }
    }
}
