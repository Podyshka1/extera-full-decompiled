package com.android.p003dx.dex.file;

import com.android.p003dx.rop.annotation.Annotations;
import com.android.p003dx.rop.annotation.AnnotationsList;
import com.android.p003dx.rop.cst.CstFieldRef;
import com.android.p003dx.rop.cst.CstMethodRef;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.Hex;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes4.dex */
public final class AnnotationsDirectoryItem extends OffsettedItem {
    private static final int ALIGNMENT = 4;
    private static final int ELEMENT_SIZE = 8;
    private static final int HEADER_SIZE = 16;
    private AnnotationSetItem classAnnotations;
    private ArrayList<FieldAnnotationStruct> fieldAnnotations;
    private ArrayList<MethodAnnotationStruct> methodAnnotations;
    private ArrayList<ParameterAnnotationStruct> parameterAnnotations;

    public AnnotationsDirectoryItem() {
        super(4, -1);
        this.classAnnotations = null;
        this.fieldAnnotations = null;
        this.methodAnnotations = null;
        this.parameterAnnotations = null;
    }

    @Override // com.android.p003dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_ANNOTATIONS_DIRECTORY_ITEM;
    }

    public boolean isEmpty() {
        return this.classAnnotations == null && this.fieldAnnotations == null && this.methodAnnotations == null && this.parameterAnnotations == null;
    }

    public boolean isInternable() {
        return this.classAnnotations != null && this.fieldAnnotations == null && this.methodAnnotations == null && this.parameterAnnotations == null;
    }

    public int hashCode() {
        AnnotationSetItem annotationSetItem = this.classAnnotations;
        if (annotationSetItem == null) {
            return 0;
        }
        return annotationSetItem.hashCode();
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    public int compareTo0(OffsettedItem offsettedItem) {
        if (!isInternable()) {
            throw new UnsupportedOperationException("uninternable instance");
        }
        return this.classAnnotations.compareTo((OffsettedItem) ((AnnotationsDirectoryItem) offsettedItem).classAnnotations);
    }

    public void setClassAnnotations(Annotations annotations, DexFile dexFile) {
        if (annotations == null) {
            throw new NullPointerException("annotations == null");
        }
        if (this.classAnnotations != null) {
            throw new UnsupportedOperationException("class annotations already set");
        }
        this.classAnnotations = new AnnotationSetItem(annotations, dexFile);
    }

    public void addFieldAnnotations(CstFieldRef cstFieldRef, Annotations annotations, DexFile dexFile) {
        if (this.fieldAnnotations == null) {
            this.fieldAnnotations = new ArrayList<>();
        }
        this.fieldAnnotations.add(new FieldAnnotationStruct(cstFieldRef, new AnnotationSetItem(annotations, dexFile)));
    }

    public void addMethodAnnotations(CstMethodRef cstMethodRef, Annotations annotations, DexFile dexFile) {
        if (this.methodAnnotations == null) {
            this.methodAnnotations = new ArrayList<>();
        }
        this.methodAnnotations.add(new MethodAnnotationStruct(cstMethodRef, new AnnotationSetItem(annotations, dexFile)));
    }

    public void addParameterAnnotations(CstMethodRef cstMethodRef, AnnotationsList annotationsList, DexFile dexFile) {
        if (this.parameterAnnotations == null) {
            this.parameterAnnotations = new ArrayList<>();
        }
        this.parameterAnnotations.add(new ParameterAnnotationStruct(cstMethodRef, annotationsList, dexFile));
    }

    public Annotations getMethodAnnotations(CstMethodRef cstMethodRef) {
        ArrayList<MethodAnnotationStruct> arrayList = this.methodAnnotations;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            MethodAnnotationStruct methodAnnotationStruct = arrayList.get(i);
            i++;
            MethodAnnotationStruct methodAnnotationStruct2 = methodAnnotationStruct;
            if (methodAnnotationStruct2.getMethod().equals(cstMethodRef)) {
                return methodAnnotationStruct2.getAnnotations();
            }
        }
        return null;
    }

    public AnnotationsList getParameterAnnotations(CstMethodRef cstMethodRef) {
        ArrayList<ParameterAnnotationStruct> arrayList = this.parameterAnnotations;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            ParameterAnnotationStruct parameterAnnotationStruct = arrayList.get(i);
            i++;
            ParameterAnnotationStruct parameterAnnotationStruct2 = parameterAnnotationStruct;
            if (parameterAnnotationStruct2.getMethod().equals(cstMethodRef)) {
                return parameterAnnotationStruct2.getAnnotationsList();
            }
        }
        return null;
    }

    @Override // com.android.p003dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        MixedItemSection wordData = dexFile.getWordData();
        AnnotationSetItem annotationSetItem = this.classAnnotations;
        if (annotationSetItem != null) {
            this.classAnnotations = (AnnotationSetItem) wordData.intern(annotationSetItem);
        }
        ArrayList<FieldAnnotationStruct> arrayList = this.fieldAnnotations;
        int i = 0;
        if (arrayList != null) {
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                FieldAnnotationStruct fieldAnnotationStruct = arrayList.get(i2);
                i2++;
                fieldAnnotationStruct.addContents(dexFile);
            }
        }
        ArrayList<MethodAnnotationStruct> arrayList2 = this.methodAnnotations;
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            int i3 = 0;
            while (i3 < size2) {
                MethodAnnotationStruct methodAnnotationStruct = arrayList2.get(i3);
                i3++;
                methodAnnotationStruct.addContents(dexFile);
            }
        }
        ArrayList<ParameterAnnotationStruct> arrayList3 = this.parameterAnnotations;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            while (i < size3) {
                ParameterAnnotationStruct parameterAnnotationStruct = arrayList3.get(i);
                i++;
                parameterAnnotationStruct.addContents(dexFile);
            }
        }
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    public String toHuman() {
        throw new RuntimeException("unsupported");
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    protected void place0(Section section, int i) {
        setWriteSize(((listSize(this.fieldAnnotations) + listSize(this.methodAnnotations) + listSize(this.parameterAnnotations)) * 8) + 16);
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    protected void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        boolean zAnnotates = annotatedOutput.annotates();
        int absoluteOffsetOr0 = OffsettedItem.getAbsoluteOffsetOr0(this.classAnnotations);
        int iListSize = listSize(this.fieldAnnotations);
        int iListSize2 = listSize(this.methodAnnotations);
        int iListSize3 = listSize(this.parameterAnnotations);
        int i = 0;
        if (zAnnotates) {
            annotatedOutput.annotate(0, offsetString() + " annotations directory");
            annotatedOutput.annotate(4, "  class_annotations_off: " + Hex.m214u4(absoluteOffsetOr0));
            annotatedOutput.annotate(4, "  fields_size:           " + Hex.m214u4(iListSize));
            annotatedOutput.annotate(4, "  methods_size:          " + Hex.m214u4(iListSize2));
            annotatedOutput.annotate(4, "  parameters_size:       " + Hex.m214u4(iListSize3));
        }
        annotatedOutput.writeInt(absoluteOffsetOr0);
        annotatedOutput.writeInt(iListSize);
        annotatedOutput.writeInt(iListSize2);
        annotatedOutput.writeInt(iListSize3);
        if (iListSize != 0) {
            Collections.sort(this.fieldAnnotations);
            if (zAnnotates) {
                annotatedOutput.annotate(0, "  fields:");
            }
            ArrayList<FieldAnnotationStruct> arrayList = this.fieldAnnotations;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                FieldAnnotationStruct fieldAnnotationStruct = arrayList.get(i2);
                i2++;
                fieldAnnotationStruct.writeTo(dexFile, annotatedOutput);
            }
        }
        if (iListSize2 != 0) {
            Collections.sort(this.methodAnnotations);
            if (zAnnotates) {
                annotatedOutput.annotate(0, "  methods:");
            }
            ArrayList<MethodAnnotationStruct> arrayList2 = this.methodAnnotations;
            int size2 = arrayList2.size();
            int i3 = 0;
            while (i3 < size2) {
                MethodAnnotationStruct methodAnnotationStruct = arrayList2.get(i3);
                i3++;
                methodAnnotationStruct.writeTo(dexFile, annotatedOutput);
            }
        }
        if (iListSize3 != 0) {
            Collections.sort(this.parameterAnnotations);
            if (zAnnotates) {
                annotatedOutput.annotate(0, "  parameters:");
            }
            ArrayList<ParameterAnnotationStruct> arrayList3 = this.parameterAnnotations;
            int size3 = arrayList3.size();
            while (i < size3) {
                ParameterAnnotationStruct parameterAnnotationStruct = arrayList3.get(i);
                i++;
                parameterAnnotationStruct.writeTo(dexFile, annotatedOutput);
            }
        }
    }

    private static int listSize(ArrayList<?> arrayList) {
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    void debugPrint(PrintWriter printWriter) {
        if (this.classAnnotations != null) {
            printWriter.println("  class annotations: " + this.classAnnotations);
        }
        int i = 0;
        if (this.fieldAnnotations != null) {
            printWriter.println("  field annotations:");
            ArrayList<FieldAnnotationStruct> arrayList = this.fieldAnnotations;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                FieldAnnotationStruct fieldAnnotationStruct = arrayList.get(i2);
                i2++;
                printWriter.println("    " + fieldAnnotationStruct.toHuman());
            }
        }
        if (this.methodAnnotations != null) {
            printWriter.println("  method annotations:");
            ArrayList<MethodAnnotationStruct> arrayList2 = this.methodAnnotations;
            int size2 = arrayList2.size();
            int i3 = 0;
            while (i3 < size2) {
                MethodAnnotationStruct methodAnnotationStruct = arrayList2.get(i3);
                i3++;
                printWriter.println("    " + methodAnnotationStruct.toHuman());
            }
        }
        if (this.parameterAnnotations != null) {
            printWriter.println("  parameter annotations:");
            ArrayList<ParameterAnnotationStruct> arrayList3 = this.parameterAnnotations;
            int size3 = arrayList3.size();
            while (i < size3) {
                ParameterAnnotationStruct parameterAnnotationStruct = arrayList3.get(i);
                i++;
                printWriter.println("    " + parameterAnnotationStruct.toHuman());
            }
        }
    }
}
