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
public final class Form21h extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form21h();

    @Override // com.android.p003dx.dex.code.InsnFormat
    public int codeSize() {
        return 2;
    }

    private Form21h() {
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        return dalvInsn.getRegisters().get(0).regString() + ", " + InsnFormat.literalBitsString((CstLiteralBits) ((CstInsn) dalvInsn).getConstant());
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        return InsnFormat.literalBitsComment((CstLiteralBits) ((CstInsn) dalvInsn).getConstant(), dalvInsn.getRegisters().get(0).getCategory() == 1 ? 32 : 64);
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
            if (registers.get(0).getCategory() == 1) {
                return (cstLiteralBits.getIntBits() & 65535) == 0;
            }
            if ((cstLiteralBits.getLongBits() & 281474976710655L) == 0) {
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
        int longBits;
        RegisterSpecList registers = dalvInsn.getRegisters();
        CstLiteralBits cstLiteralBits = (CstLiteralBits) ((CstInsn) dalvInsn).getConstant();
        if (registers.get(0).getCategory() == 1) {
            longBits = cstLiteralBits.getIntBits() >>> 16;
        } else {
            longBits = (int) (cstLiteralBits.getLongBits() >>> 48);
        }
        InsnFormat.write(annotatedOutput, InsnFormat.opcodeUnit(dalvInsn, registers.get(0).getReg()), (short) longBits);
    }
}
