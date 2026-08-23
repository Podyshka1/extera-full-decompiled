package com.android.p003dx.dex.file;

import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstArray;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.ByteArrayAnnotatedOutput;

/* JADX INFO: loaded from: classes4.dex */
public final class EncodedArrayItem extends OffsettedItem {
    private static final int ALIGNMENT = 1;
    private final CstArray array;
    private byte[] encodedForm;

    public EncodedArrayItem(CstArray cstArray) {
        super(1, -1);
        if (cstArray == null) {
            throw new NullPointerException("array == null");
        }
        this.array = cstArray;
        this.encodedForm = null;
    }

    @Override // com.android.p003dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_ENCODED_ARRAY_ITEM;
    }

    public int hashCode() {
        return this.array.hashCode();
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    protected int compareTo0(OffsettedItem offsettedItem) {
        return this.array.compareTo((Constant) ((EncodedArrayItem) offsettedItem).array);
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    public String toHuman() {
        return this.array.toHuman();
    }

    @Override // com.android.p003dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        ValueEncoder.addContents(dexFile, this.array);
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    protected void place0(Section section, int i) {
        ByteArrayAnnotatedOutput byteArrayAnnotatedOutput = new ByteArrayAnnotatedOutput();
        new ValueEncoder(section.getFile(), byteArrayAnnotatedOutput).writeArray(this.array, false);
        byte[] byteArray = byteArrayAnnotatedOutput.toByteArray();
        this.encodedForm = byteArray;
        setWriteSize(byteArray.length);
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    protected void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, offsetString() + " encoded array");
            new ValueEncoder(dexFile, annotatedOutput).writeArray(this.array, true);
            return;
        }
        annotatedOutput.write(this.encodedForm);
    }
}
