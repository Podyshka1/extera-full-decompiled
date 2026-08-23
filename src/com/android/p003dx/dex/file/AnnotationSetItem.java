package com.android.p003dx.dex.file;

import com.android.p003dx.rop.annotation.Annotation;
import com.android.p003dx.rop.annotation.Annotations;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.Hex;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class AnnotationSetItem extends OffsettedItem {
    private static final int ALIGNMENT = 4;
    private static final int ENTRY_WRITE_SIZE = 4;
    private final Annotations annotations;
    private final AnnotationItem[] items;

    public AnnotationSetItem(Annotations annotations, DexFile dexFile) {
        super(4, writeSize(annotations));
        this.annotations = annotations;
        this.items = new AnnotationItem[annotations.size()];
        Iterator<Annotation> it = annotations.getAnnotations().iterator();
        int i = 0;
        while (it.hasNext()) {
            this.items[i] = new AnnotationItem(it.next(), dexFile);
            i++;
        }
    }

    private static int writeSize(Annotations annotations) {
        try {
            return (annotations.size() * 4) + 4;
        } catch (NullPointerException unused) {
            throw new NullPointerException("list == null");
        }
    }

    public Annotations getAnnotations() {
        return this.annotations;
    }

    public int hashCode() {
        return this.annotations.hashCode();
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    protected int compareTo0(OffsettedItem offsettedItem) {
        return this.annotations.compareTo(((AnnotationSetItem) offsettedItem).annotations);
    }

    @Override // com.android.p003dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_ANNOTATION_SET_ITEM;
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    public String toHuman() {
        return this.annotations.toString();
    }

    @Override // com.android.p003dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        MixedItemSection byteData = dexFile.getByteData();
        int length = this.items.length;
        for (int i = 0; i < length; i++) {
            AnnotationItem[] annotationItemArr = this.items;
            annotationItemArr[i] = (AnnotationItem) byteData.intern(annotationItemArr[i]);
        }
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    protected void place0(Section section, int i) {
        AnnotationItem.sortByTypeIdIndex(this.items);
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    protected void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        boolean zAnnotates = annotatedOutput.annotates();
        int length = this.items.length;
        if (zAnnotates) {
            annotatedOutput.annotate(0, offsetString() + " annotation set");
            annotatedOutput.annotate(4, "  size: " + Hex.m214u4(length));
        }
        annotatedOutput.writeInt(length);
        for (int i = 0; i < length; i++) {
            int absoluteOffset = this.items[i].getAbsoluteOffset();
            if (zAnnotates) {
                annotatedOutput.annotate(4, "  entries[" + Integer.toHexString(i) + "]: " + Hex.m214u4(absoluteOffset));
                this.items[i].annotateTo(annotatedOutput, "    ");
            }
            annotatedOutput.writeInt(absoluteOffset);
        }
    }
}
