package com.android.p003dx.dex.file;

import com.android.dex.Leb128;
import com.android.p003dx.rop.code.AccessFlags;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstFieldRef;
import com.android.p003dx.rop.cst.CstString;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.Hex;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class EncodedField extends EncodedMember implements Comparable<EncodedField> {
    private final CstFieldRef field;

    public EncodedField(CstFieldRef cstFieldRef, int i) {
        super(i);
        if (cstFieldRef == null) {
            throw new NullPointerException("field == null");
        }
        this.field = cstFieldRef;
    }

    public int hashCode() {
        return this.field.hashCode();
    }

    public boolean equals(Object obj) {
        return (obj instanceof EncodedField) && compareTo((EncodedField) obj) == 0;
    }

    @Override // java.lang.Comparable
    public int compareTo(EncodedField encodedField) {
        return this.field.compareTo((Constant) encodedField.field);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append(EncodedField.class.getName());
        sb.append('{');
        sb.append(Hex.m212u2(getAccessFlags()));
        sb.append(' ');
        sb.append(this.field);
        sb.append('}');
        return sb.toString();
    }

    @Override // com.android.p003dx.dex.file.EncodedMember
    public void addContents(DexFile dexFile) {
        dexFile.getFieldIds().intern(this.field);
    }

    @Override // com.android.p003dx.dex.file.EncodedMember
    public CstString getName() {
        return this.field.getNat().getName();
    }

    @Override // com.android.p003dx.util.ToHuman
    public String toHuman() {
        return this.field.toHuman();
    }

    @Override // com.android.p003dx.dex.file.EncodedMember
    public void debugPrint(PrintWriter printWriter, boolean z) {
        printWriter.println(toString());
    }

    public CstFieldRef getRef() {
        return this.field;
    }

    @Override // com.android.p003dx.dex.file.EncodedMember
    public int encode(DexFile dexFile, AnnotatedOutput annotatedOutput, int i, int i2) {
        int iIndexOf = dexFile.getFieldIds().indexOf(this.field);
        int i3 = iIndexOf - i;
        int accessFlags = getAccessFlags();
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, String.format("  [%x] %s", Integer.valueOf(i2), this.field.toHuman()));
            annotatedOutput.annotate(Leb128.unsignedLeb128Size(i3), "    field_idx:    " + Hex.m214u4(iIndexOf));
            annotatedOutput.annotate(Leb128.unsignedLeb128Size(accessFlags), "    access_flags: " + AccessFlags.fieldString(accessFlags));
        }
        annotatedOutput.writeUleb128(i3);
        annotatedOutput.writeUleb128(accessFlags);
        return iIndexOf;
    }
}
