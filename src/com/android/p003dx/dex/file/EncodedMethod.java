package com.android.p003dx.dex.file;

import com.android.dex.Leb128;
import com.android.p003dx.dex.code.DalvCode;
import com.android.p003dx.rop.code.AccessFlags;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstMethodRef;
import com.android.p003dx.rop.cst.CstString;
import com.android.p003dx.rop.type.TypeList;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.Hex;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class EncodedMethod extends EncodedMember implements Comparable<EncodedMethod> {
    private final CodeItem code;
    private final CstMethodRef method;

    public EncodedMethod(CstMethodRef cstMethodRef, int i, DalvCode dalvCode, TypeList typeList) {
        super(i);
        if (cstMethodRef == null) {
            throw new NullPointerException("method == null");
        }
        this.method = cstMethodRef;
        if (dalvCode == null) {
            this.code = null;
        } else {
            this.code = new CodeItem(cstMethodRef, dalvCode, (i & 8) != 0, typeList);
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof EncodedMethod) && compareTo((EncodedMethod) obj) == 0;
    }

    @Override // java.lang.Comparable
    public int compareTo(EncodedMethod encodedMethod) {
        return this.method.compareTo((Constant) encodedMethod.method);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append(EncodedMethod.class.getName());
        sb.append('{');
        sb.append(Hex.m212u2(getAccessFlags()));
        sb.append(' ');
        sb.append(this.method);
        if (this.code != null) {
            sb.append(' ');
            sb.append(this.code);
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // com.android.p003dx.dex.file.EncodedMember
    public void addContents(DexFile dexFile) {
        MethodIdsSection methodIds = dexFile.getMethodIds();
        MixedItemSection wordData = dexFile.getWordData();
        methodIds.intern(this.method);
        CodeItem codeItem = this.code;
        if (codeItem != null) {
            wordData.add(codeItem);
        }
    }

    @Override // com.android.p003dx.util.ToHuman
    public final String toHuman() {
        return this.method.toHuman();
    }

    @Override // com.android.p003dx.dex.file.EncodedMember
    public final CstString getName() {
        return this.method.getNat().getName();
    }

    @Override // com.android.p003dx.dex.file.EncodedMember
    public void debugPrint(PrintWriter printWriter, boolean z) {
        CodeItem codeItem = this.code;
        if (codeItem == null) {
            printWriter.println(getRef().toHuman() + ": abstract or native");
            return;
        }
        codeItem.debugPrint(printWriter, "  ", z);
    }

    public final CstMethodRef getRef() {
        return this.method;
    }

    @Override // com.android.p003dx.dex.file.EncodedMember
    public int encode(DexFile dexFile, AnnotatedOutput annotatedOutput, int i, int i2) {
        int iIndexOf = dexFile.getMethodIds().indexOf(this.method);
        int i3 = iIndexOf - i;
        int accessFlags = getAccessFlags();
        int absoluteOffsetOr0 = OffsettedItem.getAbsoluteOffsetOr0(this.code);
        if ((absoluteOffsetOr0 != 0) != ((accessFlags & 1280) == 0)) {
            throw new UnsupportedOperationException("code vs. access_flags mismatch");
        }
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, String.format("  [%x] %s", Integer.valueOf(i2), this.method.toHuman()));
            annotatedOutput.annotate(Leb128.unsignedLeb128Size(i3), "    method_idx:   " + Hex.m214u4(iIndexOf));
            annotatedOutput.annotate(Leb128.unsignedLeb128Size(accessFlags), "    access_flags: " + AccessFlags.methodString(accessFlags));
            annotatedOutput.annotate(Leb128.unsignedLeb128Size(absoluteOffsetOr0), "    code_off:     " + Hex.m214u4(absoluteOffsetOr0));
        }
        annotatedOutput.writeUleb128(i3);
        annotatedOutput.writeUleb128(accessFlags);
        annotatedOutput.writeUleb128(absoluteOffsetOr0);
        return iIndexOf;
    }
}
