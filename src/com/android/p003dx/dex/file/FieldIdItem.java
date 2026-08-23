package com.android.p003dx.dex.file;

import com.android.p003dx.rop.cst.CstFieldRef;

/* JADX INFO: loaded from: classes4.dex */
public final class FieldIdItem extends MemberIdItem {
    public FieldIdItem(CstFieldRef cstFieldRef) {
        super(cstFieldRef);
    }

    @Override // com.android.p003dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_FIELD_ID_ITEM;
    }

    @Override // com.android.p003dx.dex.file.MemberIdItem, com.android.p003dx.dex.file.IdItem, com.android.p003dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        super.addContents(dexFile);
        dexFile.getTypeIds().intern(getFieldRef().getType());
    }

    public CstFieldRef getFieldRef() {
        return (CstFieldRef) getRef();
    }

    @Override // com.android.p003dx.dex.file.MemberIdItem
    protected int getTypoidIdx(DexFile dexFile) {
        return dexFile.getTypeIds().indexOf(getFieldRef().getType());
    }

    @Override // com.android.p003dx.dex.file.MemberIdItem
    protected String getTypoidName() {
        return "type_idx";
    }
}
