package com.android.p003dx.dex.code.form;

import com.android.p003dx.dex.code.DalvInsn;
import com.android.p003dx.dex.code.InsnFormat;
import com.android.p003dx.dex.code.SimpleInsn;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.util.AnnotatedOutput;
import java.util.BitSet;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class Form23x extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form23x();

    @Override // com.android.p003dx.dex.code.InsnFormat
    public int codeSize() {
        return 2;
    }

    private Form23x() {
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        return registers.get(0).regString() + ", " + registers.get(1).regString() + ", " + registers.get(2).regString();
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        return (dalvInsn instanceof SimpleInsn) && registers.size() == 3 && InsnFormat.unsignedFitsInByte(registers.get(0).getReg()) && InsnFormat.unsignedFitsInByte(registers.get(1).getReg()) && InsnFormat.unsignedFitsInByte(registers.get(2).getReg());
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        BitSet bitSet = new BitSet(3);
        bitSet.set(0, InsnFormat.unsignedFitsInByte(registers.get(0).getReg()));
        bitSet.set(1, InsnFormat.unsignedFitsInByte(registers.get(1).getReg()));
        bitSet.set(2, InsnFormat.unsignedFitsInByte(registers.get(2).getReg()));
        return bitSet;
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        InsnFormat.write(annotatedOutput, InsnFormat.opcodeUnit(dalvInsn, registers.get(0).getReg()), InsnFormat.codeUnit(registers.get(1).getReg(), registers.get(2).getReg()));
    }
}
