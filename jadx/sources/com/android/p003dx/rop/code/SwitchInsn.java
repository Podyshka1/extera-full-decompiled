package com.android.p003dx.rop.code;

import com.android.p003dx.rop.code.Insn;
import com.android.p003dx.rop.type.StdTypeList;
import com.android.p003dx.rop.type.Type;
import com.android.p003dx.rop.type.TypeList;
import com.android.p003dx.util.IntList;

/* JADX INFO: loaded from: classes4.dex */
public final class SwitchInsn extends Insn {
    private final IntList cases;

    @Override // com.android.p003dx.rop.code.Insn
    public boolean contentEquals(Insn insn) {
        return false;
    }

    public SwitchInsn(Rop rop, SourcePosition sourcePosition, RegisterSpec registerSpec, RegisterSpecList registerSpecList, IntList intList) {
        super(rop, sourcePosition, registerSpec, registerSpecList);
        if (rop.getBranchingness() != 5) {
            throw new IllegalArgumentException("bogus branchingness");
        }
        if (intList == null) {
            throw new NullPointerException("cases == null");
        }
        this.cases = intList;
    }

    @Override // com.android.p003dx.rop.code.Insn
    public String getInlineString() {
        return this.cases.toString();
    }

    @Override // com.android.p003dx.rop.code.Insn
    public TypeList getCatches() {
        return StdTypeList.EMPTY;
    }

    @Override // com.android.p003dx.rop.code.Insn
    public void accept(Insn.Visitor visitor) {
        visitor.visitSwitchInsn(this);
    }

    @Override // com.android.p003dx.rop.code.Insn
    public Insn withAddedCatch(Type type) {
        throw new UnsupportedOperationException("unsupported");
    }

    @Override // com.android.p003dx.rop.code.Insn
    public Insn withRegisterOffset(int i) {
        return new SwitchInsn(getOpcode(), getPosition(), getResult().withOffset(i), getSources().withOffset(i), this.cases);
    }

    @Override // com.android.p003dx.rop.code.Insn
    public Insn withNewRegisters(RegisterSpec registerSpec, RegisterSpecList registerSpecList) {
        return new SwitchInsn(getOpcode(), getPosition(), registerSpec, registerSpecList, this.cases);
    }

    public IntList getCases() {
        return this.cases;
    }
}
