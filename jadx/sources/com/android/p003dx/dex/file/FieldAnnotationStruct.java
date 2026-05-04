package com.android.p003dx.dex.file;

import com.android.p003dx.rop.annotation.Annotations;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstFieldRef;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.Hex;
import com.android.p003dx.util.ToHuman;

/* JADX INFO: loaded from: classes4.dex */
public final class FieldAnnotationStruct implements ToHuman, Comparable<FieldAnnotationStruct> {
    private AnnotationSetItem annotations;
    private final CstFieldRef field;

    public FieldAnnotationStruct(CstFieldRef cstFieldRef, AnnotationSetItem annotationSetItem) {
        if (cstFieldRef == null) {
            throw new NullPointerException("field == null");
        }
        if (annotationSetItem == null) {
            throw new NullPointerException("annotations == null");
        }
        this.field = cstFieldRef;
        this.annotations = annotationSetItem;
    }

    public int hashCode() {
        return this.field.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj instanceof FieldAnnotationStruct) {
            return this.field.equals(((FieldAnnotationStruct) obj).field);
        }
        return false;
    }

    @Override // java.lang.Comparable
    public int compareTo(FieldAnnotationStruct fieldAnnotationStruct) {
        return this.field.compareTo((Constant) fieldAnnotationStruct.field);
    }

    public void addContents(DexFile dexFile) {
        FieldIdsSection fieldIds = dexFile.getFieldIds();
        MixedItemSection wordData = dexFile.getWordData();
        fieldIds.intern(this.field);
        this.annotations = (AnnotationSetItem) wordData.intern(this.annotations);
    }

    public void writeTo(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        int iIndexOf = dexFile.getFieldIds().indexOf(this.field);
        int absoluteOffset = this.annotations.getAbsoluteOffset();
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, "    " + this.field.toHuman());
            annotatedOutput.annotate(4, "      field_idx:       " + Hex.m214u4(iIndexOf));
            annotatedOutput.annotate(4, "      annotations_off: " + Hex.m214u4(absoluteOffset));
        }
        annotatedOutput.writeInt(iIndexOf);
        annotatedOutput.writeInt(absoluteOffset);
    }

    @Override // com.android.p003dx.util.ToHuman
    public String toHuman() {
        return this.field.toHuman() + ": " + this.annotations;
    }

    public CstFieldRef getField() {
        return this.field;
    }

    public Annotations getAnnotations() {
        return this.annotations.getAnnotations();
    }
}
