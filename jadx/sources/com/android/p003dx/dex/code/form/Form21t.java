package com.android.p003dx.dex.code.form;

import com.android.p003dx.dex.code.DalvInsn;
import com.android.p003dx.dex.code.InsnFormat;
import com.android.p003dx.dex.code.TargetInsn;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.util.AnnotatedOutput;
import java.util.BitSet;

/* JADX INFO: loaded from: classes4.dex */
public final class Form21t extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form21t();

    @Override // com.android.p003dx.dex.code.InsnFormat
    public int codeSize() {
        return 2;
    }

    private Form21t() {
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
        if (!(dalvInsn instanceof TargetInsn) || registers.size() != 1 || !InsnFormat.unsignedFitsInByte(registers.get(0).getReg())) {
            return false;
        }
        TargetInsn targetInsn = (TargetInsn) dalvInsn;
        if (targetInsn.hasTargetOffset()) {
            return branchFits(targetInsn);
        }
        return true;
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        BitSet bitSet = new BitSet(1);
        bitSet.set(0, InsnFormat.unsignedFitsInByte(registers.get(0).getReg()));
        return bitSet;
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public boolean branchFits(TargetInsn targetInsn) {
        int targetOffset = targetInsn.getTargetOffset();
        return targetOffset != 0 && InsnFormat.signedFitsInShort(targetOffset);
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn) {
        InsnFormat.write(annotatedOutput, InsnFormat.opcodeUnit(dalvInsn, dalvInsn.getRegisters().get(0).getReg()), (short) ((TargetInsn) dalvInsn).getTargetOffset());
    }
}
