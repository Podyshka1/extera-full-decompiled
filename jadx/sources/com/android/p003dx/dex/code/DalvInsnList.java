package com.android.p003dx.dex.code;

import com.android.dex.util.ExceptionWithContext;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstBaseMethodRef;
import com.android.p003dx.rop.cst.CstCallSiteRef;
import com.android.p003dx.rop.cst.CstProtoRef;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.FixedSizeList;
import com.android.p003dx.util.IndentingWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class DalvInsnList extends FixedSizeList {
    private final int regCount;

    public static DalvInsnList makeImmutable(ArrayList<DalvInsn> arrayList, int i) {
        int size = arrayList.size();
        DalvInsnList dalvInsnList = new DalvInsnList(size, i);
        for (int i2 = 0; i2 < size; i2++) {
            dalvInsnList.set(i2, arrayList.get(i2));
        }
        dalvInsnList.setImmutable();
        return dalvInsnList;
    }

    public DalvInsnList(int i, int i2) {
        super(i);
        this.regCount = i2;
    }

    public DalvInsn get(int i) {
        return (DalvInsn) get0(i);
    }

    public void set(int i, DalvInsn dalvInsn) {
        set0(i, dalvInsn);
    }

    public int codeSize() {
        int size = size();
        if (size == 0) {
            return 0;
        }
        return get(size - 1).getNextAddress();
    }

    public void writeTo(AnnotatedOutput annotatedOutput) {
        int cursor = annotatedOutput.getCursor();
        int size = size();
        if (annotatedOutput.annotates()) {
            boolean zIsVerbose = annotatedOutput.isVerbose();
            for (int i = 0; i < size; i++) {
                DalvInsn dalvInsn = (DalvInsn) get0(i);
                int iCodeSize = dalvInsn.codeSize() * 2;
                String strListingString = (iCodeSize != 0 || zIsVerbose) ? dalvInsn.listingString("  ", annotatedOutput.getAnnotationWidth(), true) : null;
                if (strListingString != null) {
                    annotatedOutput.annotate(iCodeSize, strListingString);
                } else if (iCodeSize != 0) {
                    annotatedOutput.annotate(iCodeSize, _UrlKt.FRAGMENT_ENCODE_SET);
                }
            }
        }
        for (int i2 = 0; i2 < size; i2++) {
            DalvInsn dalvInsn2 = (DalvInsn) get0(i2);
            try {
                dalvInsn2.writeTo(annotatedOutput);
            } catch (RuntimeException e) {
                throw ExceptionWithContext.withContext(e, "...while writing " + dalvInsn2);
            }
        }
        int cursor2 = (annotatedOutput.getCursor() - cursor) / 2;
        if (cursor2 == codeSize()) {
            return;
        }
        throw new RuntimeException("write length mismatch; expected " + codeSize() + " but actually wrote " + cursor2);
    }

    public int getRegistersSize() {
        return this.regCount;
    }

    public int getOutsSize() {
        int wordCount;
        int size = size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            DalvInsn dalvInsn = (DalvInsn) get0(i2);
            if (dalvInsn instanceof CstInsn) {
                Constant constant = ((CstInsn) dalvInsn).getConstant();
                if (constant instanceof CstBaseMethodRef) {
                    wordCount = ((CstBaseMethodRef) constant).getParameterWordCount(dalvInsn.getOpcode().getFamily() == 113);
                } else {
                    wordCount = constant instanceof CstCallSiteRef ? ((CstCallSiteRef) constant).getPrototype().getParameterTypes().getWordCount() : 0;
                }
            } else if (!(dalvInsn instanceof MultiCstInsn)) {
                continue;
            } else {
                if (dalvInsn.getOpcode().getFamily() != 250) {
                    throw new RuntimeException("Expecting invoke-polymorphic");
                }
                wordCount = ((CstProtoRef) ((MultiCstInsn) dalvInsn).getConstant(1)).getPrototype().getParameterTypes().getWordCount() + 1;
            }
            if (wordCount > i) {
                i = wordCount;
            }
        }
        return i;
    }

    public void debugPrint(Writer writer, String str, boolean z) {
        IndentingWriter indentingWriter = new IndentingWriter(writer, 0, str);
        int size = size();
        for (int i = 0; i < size; i++) {
            try {
                DalvInsn dalvInsn = (DalvInsn) get0(i);
                String strListingString = (dalvInsn.codeSize() != 0 || z) ? dalvInsn.listingString(_UrlKt.FRAGMENT_ENCODE_SET, 0, z) : null;
                if (strListingString != null) {
                    indentingWriter.write(strListingString);
                }
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        indentingWriter.flush();
    }

    public void debugPrint(OutputStream outputStream, String str, boolean z) {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream);
        debugPrint(outputStreamWriter, str, z);
        try {
            outputStreamWriter.flush();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
