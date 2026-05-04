package com.android.p003dx.rop.code;

import com.android.p003dx.rop.cst.Constant;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CstInsn extends Insn {
    private final Constant cst;

    public CstInsn(Rop rop, SourcePosition sourcePosition, RegisterSpec registerSpec, RegisterSpecList registerSpecList, Constant constant) {
        super(rop, sourcePosition, registerSpec, registerSpecList);
        if (constant == null) {
            throw new NullPointerException("cst == null");
        }
        this.cst = constant;
    }

    @Override // com.android.p003dx.rop.code.Insn
    public String getInlineString() {
        return this.cst.toHuman();
    }

    public Constant getConstant() {
        return this.cst;
    }

    @Override // com.android.p003dx.rop.code.Insn
    public boolean contentEquals(Insn insn) {
        return super.contentEquals(insn) && this.cst.equals(((CstInsn) insn).getConstant());
    }
}
