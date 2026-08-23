package com.android.p003dx.dex.code.form;

import com.android.p003dx.dex.code.DalvInsn;
import com.android.p003dx.dex.code.InsnFormat;
import com.android.p003dx.dex.code.TargetInsn;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.util.AnnotatedOutput;
import java.util.BitSet;

/* JADX INFO: loaded from: classes4.dex */
public final class Form31t extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form31t();

    @Override // com.android.p003dx.dex.code.InsnFormat
    public boolean branchFits(TargetInsn targetInsn) {
        return true;
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public int codeSize() {
        return 3;
    }

    private Form31t() {
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        return dalvInsn.getRegisters().get(0).regString() + ", " + InsnFormat.branchString(dalvInsn);
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        return InsnFormat.branchComment(dalvInsn);
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        return (dalvInsn instanceof TargetInsn) && registers.size() == 1 && InsnFormat.unsignedFitsInByte(registers.get(0).getReg());
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
        InsnFormat.write(annotatedOutput, InsnFormat.opcodeUnit(dalvInsn, registers.get(0).getReg()), ((TargetInsn) dalvInsn).getTargetOffset());
    }
}
