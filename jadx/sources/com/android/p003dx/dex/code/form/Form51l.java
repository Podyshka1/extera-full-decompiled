package com.android.p003dx.dex.code.form;

import com.android.p003dx.dex.code.CstInsn;
import com.android.p003dx.dex.code.DalvInsn;
import com.android.p003dx.dex.code.InsnFormat;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.cst.CstLiteral64;
import com.android.p003dx.rop.cst.CstLiteralBits;
import com.android.p003dx.util.AnnotatedOutput;
import java.util.BitSet;

/* JADX INFO: loaded from: classes4.dex */
public final class Form51l extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form51l();

    @Override // com.android.p003dx.dex.code.InsnFormat
    public int codeSize() {
        return 5;
    }

    private Form51l() {
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        return dalvInsn.getRegisters().get(0).regString() + ", " + InsnFormat.literalBitsString((CstLiteralBits) ((CstInsn) dalvInsn).getConstant());
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        return InsnFormat.literalBitsComment((CstLiteralBits) ((CstInsn) dalvInsn).getConstant(), 64);
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        if ((dalvInsn instanceof CstInsn) && registers.size() == 1 && InsnFormat.unsignedFitsInByte(registers.get(0).getReg())) {
            return ((CstInsn) dalvInsn).getConstant() instanceof CstLiteral64;
        }
        return false;
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        BitSet bitSet = new BitSet(1);
        bitSet.set(0, InsnFormat.unsignedFitsInByte(registers.get(0).getReg()));
        return bitSet;
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        InsnFormat.write(annotatedOutput, InsnFormat.opcodeUnit(dalvInsn, registers.get(0).getReg()), ((CstLiteral64) ((CstInsn) dalvInsn).getConstant()).getLongBits());
    }
}
