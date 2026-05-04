package com.android.p003dx.dex.file;

import com.android.p003dx.rop.annotation.AnnotationsList;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstMethodRef;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.Hex;
import com.android.p003dx.util.ToHuman;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class ParameterAnnotationStruct implements ToHuman, Comparable<ParameterAnnotationStruct> {
    private final UniformListItem<AnnotationSetRefItem> annotationsItem;
    private final AnnotationsList annotationsList;
    private final CstMethodRef method;

    public ParameterAnnotationStruct(CstMethodRef cstMethodRef, AnnotationsList annotationsList, DexFile dexFile) {
        if (cstMethodRef == null) {
            throw new NullPointerException("method == null");
        }
        if (annotationsList == null) {
            throw new NullPointerException("annotationsList == null");
        }
        this.method = cstMethodRef;
        this.annotationsList = annotationsList;
        int size = annotationsList.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new AnnotationSetRefItem(new AnnotationSetItem(annotationsList.get(i), dexFile)));
        }
        this.annotationsItem = new UniformListItem<>(ItemType.TYPE_ANNOTATION_SET_REF_LIST, arrayList);
    }

    public int hashCode() {
        return this.method.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj instanceof ParameterAnnotationStruct) {
            return this.method.equals(((ParameterAnnotationStruct) obj).method);
        }
        return false;
    }

    @Override // java.lang.Comparable
    public int compareTo(ParameterAnnotationStruct parameterAnnotationStruct) {
        return this.method.compareTo((Constant) parameterAnnotationStruct.method);
    }

    public void addContents(DexFile dexFile) {
        MethodIdsSection methodIds = dexFile.getMethodIds();
        MixedItemSection wordData = dexFile.getWordData();
        methodIds.intern(this.method);
        wordData.add(this.annotationsItem);
    }

    public void writeTo(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        int iIndexOf = dexFile.getMethodIds().indexOf(this.method);
        int absoluteOffset = this.annotationsItem.getAbsoluteOffset();
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, "    " + this.method.toHuman());
            annotatedOutput.annotate(4, "      method_idx:      " + Hex.m214u4(iIndexOf));
            annotatedOutput.annotate(4, "      annotations_off: " + Hex.m214u4(absoluteOffset));
        }
        annotatedOutput.writeInt(iIndexOf);
        annotatedOutput.writeInt(absoluteOffset);
    }

    @Override // com.android.p003dx.util.ToHuman
    public String toHuman() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.method.toHuman());
        sb.append(": ");
        boolean z = true;
        for (T t : this.annotationsItem.getItems()) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(t.toHuman());
        }
        return sb.toString();
    }

    public CstMethodRef getMethod() {
        return this.method;
    }

    public AnnotationsList getAnnotationsList() {
        return this.annotationsList;
    }
}
