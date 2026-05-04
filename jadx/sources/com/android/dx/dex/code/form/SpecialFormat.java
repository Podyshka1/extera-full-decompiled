package com.android.dx.dex.code.form;

import com.android.dx.dex.code.DalvInsn;
import com.android.dx.dex.code.InsnFormat;
import com.android.dx.util.AnnotatedOutput;

/* JADX INFO: loaded from: classes4.dex */
public final class SpecialFormat extends InsnFormat {
    public static final InsnFormat THE_ONE = new SpecialFormat();

    @Override // com.android.dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        return true;
    }

    private SpecialFormat() {
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        throw new RuntimeException("unsupported");
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        throw new RuntimeException("unsupported");
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public int codeSize() {
        throw new RuntimeException("unsupported");
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn) {
        throw new RuntimeException("unsupported");
    }
}
