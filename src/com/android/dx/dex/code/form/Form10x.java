package com.android.dx.dex.code.form;

import com.android.dx.dex.code.DalvInsn;
import com.android.dx.dex.code.InsnFormat;
import com.android.dx.dex.code.SimpleInsn;
import com.android.dx.util.AnnotatedOutput;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class Form10x extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form10x();

    @Override // com.android.dx.dex.code.InsnFormat
    public int codeSize() {
        return 1;
    }

    private Form10x() {
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        return (dalvInsn instanceof SimpleInsn) && dalvInsn.getRegisters().size() == 0;
    }

    @Override // com.android.dx.dex.code.InsnFormat
    public void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn) {
        InsnFormat.write(annotatedOutput, InsnFormat.opcodeUnit(dalvInsn, 0));
    }
}
