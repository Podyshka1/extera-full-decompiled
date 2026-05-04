package com.android.dx.dex.code.form;

import com.android.dx.dex.code.DalvInsn;
import com.android.dx.dex.code.InsnFormat;
import com.android.dx.dex.code.SimpleInsn;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.util.AnnotatedOutput;
import java.util.BitSet;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class Form11x extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form11x();

    @Override // com.android.dx.dex.code.InsnFormat
    public int codeSize() {
        return 1;
    }

    private Form11x() {
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        return dalvInsn.getRegisters().get(0).regString();
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        return (dalvInsn instanceof SimpleInsn) && registers.size() == 1 && InsnFormat.unsignedFitsInByte(registers.get(0).getReg());
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        BitSet bitSet = new BitSet(1);
        bitSet.set(0, InsnFormat.unsignedFitsInByte(registers.get(0).getReg()));
        return bitSet;
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn) {
        InsnFormat.write(annotatedOutput, InsnFormat.opcodeUnit(dalvInsn, dalvInsn.getRegisters().get(0).getReg()));
    }
}
