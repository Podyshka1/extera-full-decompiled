package com.android.p003dx.dex.code.form;

import com.android.p003dx.dex.code.CstInsn;
import com.android.p003dx.dex.code.DalvInsn;
import com.android.p003dx.dex.code.InsnFormat;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstLiteralBits;
import com.android.p003dx.util.AnnotatedOutput;
import java.util.BitSet;

/* JADX INFO: loaded from: classes4.dex */
public final class Form21s extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form21s();

    @Override // com.android.p003dx.dex.code.InsnFormat
    public int codeSize() {
        return 2;
    }

    private Form21s() {
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        return dalvInsn.getRegisters().get(0).regString() + ", " + InsnFormat.literalBitsString((CstLiteralBits) ((CstInsn) dalvInsn).getConstant());
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        return InsnFormat.literalBitsComment((CstLiteralBits) ((CstInsn) dalvInsn).getConstant(), 16);
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        if ((dalvInsn instanceof CstInsn) && registers.size() == 1 && InsnFormat.unsignedFitsInByte(registers.get(0).getReg())) {
            Constant constant = ((CstInsn) dalvInsn).getConstant();
            if (!(constant instanceof CstLiteralBits)) {
                return false;
            }
            CstLiteralBits cstLiteralBits = (CstLiteralBits) constant;
            if (cstLiteralBits.fitsInInt() && InsnFormat.signedFitsInShort(cstLiteralBits.getIntBits())) {
                return true;
            }
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
        InsnFormat.write(annotatedOutput, InsnFormat.opcodeUnit(dalvInsn, dalvInsn.getRegisters().get(0).getReg()), (short) ((CstLiteralBits) ((CstInsn) dalvInsn).getConstant()).getIntBits());
    }
}
