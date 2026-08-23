package com.android.p003dx.dex.file;

import com.android.p003dx.rop.cst.CstCallSite;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.ByteArrayAnnotatedOutput;

/* JADX INFO: loaded from: classes4.dex */
public final class CallSiteItem extends OffsettedItem {
    private byte[] encodedForm;
    private final CstCallSite value;

    private static int writeSize(CstCallSite cstCallSite) {
        return -1;
    }

    public CallSiteItem(CstCallSite cstCallSite) {
        super(1, writeSize(cstCallSite));
        this.value = cstCallSite;
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    protected void place0(Section section, int i) {
        ByteArrayAnnotatedOutput byteArrayAnnotatedOutput = new ByteArrayAnnotatedOutput();
        new ValueEncoder(section.getFile(), byteArrayAnnotatedOutput).writeArray(this.value, true);
        byte[] byteArray = byteArrayAnnotatedOutput.toByteArray();
        this.encodedForm = byteArray;
        setWriteSize(byteArray.length);
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    public String toHuman() {
        return this.value.toHuman();
    }

    public String toString() {
        return this.value.toString();
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    protected void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, offsetString() + " call site");
            new ValueEncoder(dexFile, annotatedOutput).writeArray(this.value, true);
            return;
        }
        annotatedOutput.write(this.encodedForm);
    }

    @Override // com.android.p003dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_ENCODED_ARRAY_ITEM;
    }

    @Override // com.android.p003dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        ValueEncoder.addContents(dexFile, this.value);
    }
}
