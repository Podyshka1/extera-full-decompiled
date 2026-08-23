package com.android.p003dx.dex.code.form;

import com.android.p003dx.dex.code.DalvInsn;
import com.android.p003dx.dex.code.InsnFormat;
import com.android.p003dx.dex.code.MultiCstInsn;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.cst.CstMethodRef;
import com.android.p003dx.rop.cst.CstProtoRef;
import com.android.p003dx.util.AnnotatedOutput;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class Form4rcc extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form4rcc();

    @Override // com.android.p003dx.dex.code.InsnFormat
    public int codeSize() {
        return 4;
    }

    private Form4rcc() {
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        return InsnFormat.regRangeString(dalvInsn.getRegisters()) + ", " + dalvInsn.cstString();
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        if (z) {
            return dalvInsn.cstComment();
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        if (!(dalvInsn instanceof MultiCstInsn)) {
            return false;
        }
        MultiCstInsn multiCstInsn = (MultiCstInsn) dalvInsn;
        int index = multiCstInsn.getIndex(0);
        int index2 = multiCstInsn.getIndex(1);
        if (!InsnFormat.unsignedFitsInShort(index) || !InsnFormat.unsignedFitsInShort(index2) || !(multiCstInsn.getConstant(0) instanceof CstMethodRef) || !(multiCstInsn.getConstant(1) instanceof CstProtoRef)) {
            return false;
        }
        RegisterSpecList registers = multiCstInsn.getRegisters();
        int size = registers.size();
        if (size == 0) {
            return true;
        }
        return InsnFormat.unsignedFitsInByte(registers.getWordCount()) && InsnFormat.unsignedFitsInShort(size) && InsnFormat.unsignedFitsInShort(registers.get(0).getReg()) && InsnFormat.isRegListSequential(registers);
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn) {
        MultiCstInsn multiCstInsn = (MultiCstInsn) dalvInsn;
        short index = (short) multiCstInsn.getIndex(0);
        short index2 = (short) multiCstInsn.getIndex(1);
        RegisterSpecList registers = dalvInsn.getRegisters();
        InsnFormat.write(annotatedOutput, InsnFormat.opcodeUnit(dalvInsn, registers.getWordCount()), index, registers.size() > 0 ? (short) registers.get(0).getReg() : (short) 0, index2);
    }
}
