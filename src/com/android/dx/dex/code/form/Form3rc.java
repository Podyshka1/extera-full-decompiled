package com.android.dx.dex.code.form;

import com.android.dx.dex.code.CstInsn;
import com.android.dx.dex.code.DalvInsn;
import com.android.dx.dex.code.InsnFormat;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstCallSiteRef;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstType;
import com.android.dx.util.AnnotatedOutput;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class Form3rc extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form3rc();

    @Override // com.android.dx.dex.code.InsnFormat
    public int codeSize() {
        return 3;
    }

    private Form3rc() {
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        return InsnFormat.regRangeString(dalvInsn.getRegisters()) + ", " + dalvInsn.cstString();
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        if (z) {
            return dalvInsn.cstComment();
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        if (!(dalvInsn instanceof CstInsn)) {
            return false;
        }
        CstInsn cstInsn = (CstInsn) dalvInsn;
        int index = cstInsn.getIndex();
        Constant constant = cstInsn.getConstant();
        if (!InsnFormat.unsignedFitsInShort(index)) {
            return false;
        }
        if (!(constant instanceof CstMethodRef) && !(constant instanceof CstType) && !(constant instanceof CstCallSiteRef)) {
            return false;
        }
        RegisterSpecList registers = cstInsn.getRegisters();
        registers.size();
        if (registers.size() != 0) {
            return InsnFormat.isRegListSequential(registers) && InsnFormat.unsignedFitsInShort(registers.get(0).getReg()) && InsnFormat.unsignedFitsInByte(registers.getWordCount());
        }
        return true;
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        InsnFormat.write(annotatedOutput, InsnFormat.opcodeUnit(dalvInsn, registers.getWordCount()), (short) ((CstInsn) dalvInsn).getIndex(), (short) (registers.size() != 0 ? registers.get(0).getReg() : 0));
    }
}
