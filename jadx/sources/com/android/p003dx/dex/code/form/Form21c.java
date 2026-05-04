package com.android.p003dx.dex.code.form;

import com.android.p003dx.dex.code.CstInsn;
import com.android.p003dx.dex.code.DalvInsn;
import com.android.p003dx.dex.code.InsnFormat;
import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstFieldRef;
import com.android.p003dx.rop.cst.CstMethodHandle;
import com.android.p003dx.rop.cst.CstProtoRef;
import com.android.p003dx.rop.cst.CstString;
import com.android.p003dx.rop.cst.CstType;
import com.android.p003dx.util.AnnotatedOutput;
import java.util.BitSet;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class Form21c extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form21c();

    @Override // com.android.p003dx.dex.code.InsnFormat
    public int codeSize() {
        return 2;
    }

    private Form21c() {
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        return dalvInsn.getRegisters().get(0).regString() + ", " + dalvInsn.cstString();
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
        RegisterSpec registerSpec;
        if (!(dalvInsn instanceof CstInsn)) {
            return false;
        }
        RegisterSpecList registers = dalvInsn.getRegisters();
        int size = registers.size();
        if (size == 1) {
            registerSpec = registers.get(0);
        } else {
            if (size != 2) {
                return false;
            }
            registerSpec = registers.get(0);
            if (registerSpec.getReg() != registers.get(1).getReg()) {
                return false;
            }
        }
        if (!InsnFormat.unsignedFitsInByte(registerSpec.getReg())) {
            return false;
        }
        CstInsn cstInsn = (CstInsn) dalvInsn;
        int index = cstInsn.getIndex();
        Constant constant = cstInsn.getConstant();
        if (InsnFormat.unsignedFitsInShort(index)) {
            return (constant instanceof CstType) || (constant instanceof CstFieldRef) || (constant instanceof CstString) || (constant instanceof CstMethodHandle) || (constant instanceof CstProtoRef);
        }
        return false;
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        int size = registers.size();
        BitSet bitSet = new BitSet(size);
        boolean zUnsignedFitsInByte = InsnFormat.unsignedFitsInByte(registers.get(0).getReg());
        if (size == 1) {
            bitSet.set(0, zUnsignedFitsInByte);
            return bitSet;
        }
        if (registers.get(0).getReg() == registers.get(1).getReg()) {
            bitSet.set(0, zUnsignedFitsInByte);
            bitSet.set(1, zUnsignedFitsInByte);
        }
        return bitSet;
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn) {
        InsnFormat.write(annotatedOutput, InsnFormat.opcodeUnit(dalvInsn, dalvInsn.getRegisters().get(0).getReg()), (short) ((CstInsn) dalvInsn).getIndex());
    }
}
