package com.android.dx.rop.code;

import com.android.dx.rop.code.Insn;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;

/* JADX INFO: loaded from: classes4.dex */
public final class ThrowingCstInsn extends CstInsn {
    private final TypeList catches;

    public ThrowingCstInsn(Rop rop, SourcePosition sourcePosition, RegisterSpecList registerSpecList, TypeList typeList, Constant constant) {
        super(rop, sourcePosition, null, registerSpecList, constant);
        if (rop.getBranchingness() == 6) {
            if (typeList == null) {
                throw new NullPointerException("catches == null");
            }
            this.catches = typeList;
        } else {
            throw new IllegalArgumentException("opcode with invalid branchingness: " + rop.getBranchingness());
        }
    }

    @Override // com.android.dx.rop.code.CstInsn, com.android.dx.rop.code.Insn
    public String getInlineString() {
        Constant constant = getConstant();
        String human = constant.toHuman();
        if (constant instanceof CstString) {
            human = ((CstString) constant).toQuoted();
        }
        return human + " " + ThrowingInsn.toCatchString(this.catches);
    }

    @Override // com.android.dx.rop.code.Insn
    public TypeList getCatches() {
        return this.catches;
    }

    @Override // com.android.dx.rop.code.Insn
    public void accept(Insn.Visitor visitor) {
        visitor.visitThrowingCstInsn(this);
    }

    @Override // com.android.dx.rop.code.Insn
    public Insn withAddedCatch(Type type) {
        return new ThrowingCstInsn(getOpcode(), getPosition(), getSources(), this.catches.withAddedType(type), getConstant());
    }

    @Override // com.android.dx.rop.code.Insn
    public Insn withRegisterOffset(int i) {
        return new ThrowingCstInsn(getOpcode(), getPosition(), getSources().withOffset(i), this.catches, getConstant());
    }

    @Override // com.android.dx.rop.code.Insn
    public Insn withNewRegisters(RegisterSpec registerSpec, RegisterSpecList registerSpecList) {
        return new ThrowingCstInsn(getOpcode(), getPosition(), registerSpecList, this.catches, getConstant());
    }
}
