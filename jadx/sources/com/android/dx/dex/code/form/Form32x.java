package com.android.dx.dex.code.form;

import com.android.dx.dex.code.DalvInsn;
import com.android.dx.dex.code.InsnFormat;
import com.android.dx.dex.code.SimpleInsn;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.util.AnnotatedOutput;
import java.util.BitSet;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class Form32x extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form32x();

    @Override // com.android.dx.dex.code.InsnFormat
    public int codeSize() {
        return 3;
    }

    private Form32x() {
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        return registers.get(0).regString() + ", " + registers.get(1).regString();
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        return (dalvInsn instanceof SimpleInsn) && registers.size() == 2 && InsnFormat.unsignedFitsInShort(registers.get(0).getReg()) && InsnFormat.unsignedFitsInShort(registers.get(1).getReg());
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        BitSet bitSet = new BitSet(2);
        bitSet.set(0, InsnFormat.unsignedFitsInShort(registers.get(0).getReg()));
        bitSet.set(1, InsnFormat.unsignedFitsInShort(registers.get(1).getReg()));
        return bitSet;
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        InsnFormat.write(annotatedOutput, InsnFormat.opcodeUnit(dalvInsn, 0), (short) registers.get(0).getReg(), (short) registers.get(1).getReg());
    }
}
