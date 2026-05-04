package com.android.p003dx.dex.code.form;

import com.android.p003dx.dex.code.CstInsn;
import com.android.p003dx.dex.code.DalvInsn;
import com.android.p003dx.dex.code.InsnFormat;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstFieldRef;
import com.android.p003dx.rop.cst.CstType;
import com.android.p003dx.util.AnnotatedOutput;
import java.util.BitSet;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class Form22c extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form22c();

    @Override // com.android.p003dx.dex.code.InsnFormat
    public int codeSize() {
        return 2;
    }

    private Form22c() {
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        return registers.get(0).regString() + ", " + registers.get(1).regString() + ", " + dalvInsn.cstString();
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
        RegisterSpecList registers = dalvInsn.getRegisters();
        if (!(dalvInsn instanceof CstInsn) || registers.size() != 2 || !InsnFormat.unsignedFitsInNibble(registers.get(0).getReg()) || !InsnFormat.unsignedFitsInNibble(registers.get(1).getReg())) {
            return false;
        }
        CstInsn cstInsn = (CstInsn) dalvInsn;
        if (!InsnFormat.unsignedFitsInShort(cstInsn.getIndex())) {
            return false;
        }
        Constant constant = cstInsn.getConstant();
        return (constant instanceof CstType) || (constant instanceof CstFieldRef);
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        BitSet bitSet = new BitSet(2);
        bitSet.set(0, InsnFormat.unsignedFitsInNibble(registers.get(0).getReg()));
        bitSet.set(1, InsnFormat.unsignedFitsInNibble(registers.get(1).getReg()));
        return bitSet;
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        InsnFormat.write(annotatedOutput, InsnFormat.opcodeUnit(dalvInsn, InsnFormat.makeByte(registers.get(0).getReg(), registers.get(1).getReg())), (short) ((CstInsn) dalvInsn).getIndex());
    }
}
