package com.android.p003dx.dex.file;

import com.android.dex.Leb128;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstString;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.ByteArray;
import com.android.p003dx.util.Hex;

/* JADX INFO: loaded from: classes4.dex */
public final class StringDataItem extends OffsettedItem {
    private final CstString value;

    @Override // com.android.p003dx.dex.file.Item
    public void addContents(DexFile dexFile) {
    }

    public StringDataItem(CstString cstString) {
        super(1, writeSize(cstString));
        this.value = cstString;
    }

    private static int writeSize(CstString cstString) {
        return Leb128.unsignedLeb128Size(cstString.getUtf16Size()) + cstString.getUtf8Size() + 1;
    }

    @Override // com.android.p003dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_STRING_DATA_ITEM;
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    public void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        ByteArray bytes = this.value.getBytes();
        int utf16Size = this.value.getUtf16Size();
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(Leb128.unsignedLeb128Size(utf16Size), "utf16_size: " + Hex.m214u4(utf16Size));
            annotatedOutput.annotate(bytes.size() + 1, this.value.toQuoted());
        }
        annotatedOutput.writeUleb128(utf16Size);
        annotatedOutput.write(bytes);
        annotatedOutput.writeByte(0);
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    public String toHuman() {
        return this.value.toQuoted();
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    protected int compareTo0(OffsettedItem offsettedItem) {
        return this.value.compareTo((Constant) ((StringDataItem) offsettedItem).value);
    }
}
