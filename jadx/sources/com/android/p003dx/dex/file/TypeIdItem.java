package com.android.p003dx.dex.file;

import com.android.p003dx.rop.cst.CstString;
import com.android.p003dx.rop.cst.CstType;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.Hex;

/* JADX INFO: loaded from: classes4.dex */
public final class TypeIdItem extends IdItem {
    @Override // com.android.p003dx.dex.file.Item
    public int writeSize() {
        return 4;
    }

    public TypeIdItem(CstType cstType) {
        super(cstType);
    }

    @Override // com.android.p003dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_TYPE_ID_ITEM;
    }

    @Override // com.android.p003dx.dex.file.IdItem, com.android.p003dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        dexFile.getStringIds().intern(getDefiningClass().getDescriptor());
    }

    @Override // com.android.p003dx.dex.file.Item
    public void writeTo(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        CstString descriptor = getDefiningClass().getDescriptor();
        int iIndexOf = dexFile.getStringIds().indexOf(descriptor);
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, indexString() + ' ' + descriptor.toHuman());
            StringBuilder sb = new StringBuilder();
            sb.append("  descriptor_idx: ");
            sb.append(Hex.m214u4(iIndexOf));
            annotatedOutput.annotate(4, sb.toString());
        }
        annotatedOutput.writeInt(iIndexOf);
    }
}
