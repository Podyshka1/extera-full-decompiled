package com.android.p003dx.dex.code.form;

import com.android.p003dx.dex.code.CstInsn;
import com.android.p003dx.dex.code.DalvInsn;
import com.android.p003dx.dex.code.InsnFormat;
import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstCallSiteRef;
import com.android.p003dx.rop.cst.CstMethodRef;
import com.android.p003dx.rop.cst.CstType;
import com.android.p003dx.rop.type.Type;
import com.android.p003dx.util.AnnotatedOutput;
import java.util.BitSet;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class Form35c extends InsnFormat {
    private static final int MAX_NUM_OPS = 5;
    public static final InsnFormat THE_ONE = new Form35c();

    @Override // com.android.p003dx.dex.code.InsnFormat
    public int codeSize() {
        return 3;
    }

    private Form35c() {
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        return InsnFormat.regListString(explicitize(dalvInsn.getRegisters())) + ", " + dalvInsn.cstString();
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
        if (!(dalvInsn instanceof CstInsn)) {
            return false;
        }
        CstInsn cstInsn = (CstInsn) dalvInsn;
        if (!InsnFormat.unsignedFitsInShort(cstInsn.getIndex())) {
            return false;
        }
        Constant constant = cstInsn.getConstant();
        return ((constant instanceof CstMethodRef) || (constant instanceof CstType) || (constant instanceof CstCallSiteRef)) && wordCount(cstInsn.getRegisters()) >= 0;
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        int size = registers.size();
        BitSet bitSet = new BitSet(size);
        for (int i = 0; i < size; i++) {
            RegisterSpec registerSpec = registers.get(i);
            bitSet.set(i, InsnFormat.unsignedFitsInNibble((registerSpec.getReg() + registerSpec.getCategory()) - 1));
        }
        return bitSet;
    }

    @Override // com.android.p003dx.dex.code.InsnFormat
    public void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn) {
        int index = ((CstInsn) dalvInsn).getIndex();
        RegisterSpecList registerSpecListExplicitize = explicitize(dalvInsn.getRegisters());
        int size = registerSpecListExplicitize.size();
        InsnFormat.write(annotatedOutput, InsnFormat.opcodeUnit(dalvInsn, InsnFormat.makeByte(size > 4 ? registerSpecListExplicitize.get(4).getReg() : 0, size)), (short) index, InsnFormat.codeUnit(size > 0 ? registerSpecListExplicitize.get(0).getReg() : 0, size > 1 ? registerSpecListExplicitize.get(1).getReg() : 0, size > 2 ? registerSpecListExplicitize.get(2).getReg() : 0, size > 3 ? registerSpecListExplicitize.get(3).getReg() : 0));
    }

    private static int wordCount(RegisterSpecList registerSpecList) {
        int size = registerSpecList.size();
        if (size > 5) {
            return -1;
        }
        int category = 0;
        for (int i = 0; i < size; i++) {
            category += registerSpecList.get(i).getCategory();
            if (!InsnFormat.unsignedFitsInNibble((r5.getReg() + r5.getCategory()) - 1)) {
                return -1;
            }
        }
        if (category <= 5) {
            return category;
        }
        return -1;
    }

    private static RegisterSpecList explicitize(RegisterSpecList registerSpecList) {
        int iWordCount = wordCount(registerSpecList);
        int size = registerSpecList.size();
        if (iWordCount == size) {
            return registerSpecList;
        }
        RegisterSpecList registerSpecList2 = new RegisterSpecList(iWordCount);
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RegisterSpec registerSpec = registerSpecList.get(i2);
            registerSpecList2.set(i, registerSpec);
            if (registerSpec.getCategory() == 2) {
                registerSpecList2.set(i + 1, RegisterSpec.make(registerSpec.getReg() + 1, Type.VOID));
                i += 2;
            } else {
                i++;
            }
        }
        registerSpecList2.setImmutable();
        return registerSpecList2;
    }
}
