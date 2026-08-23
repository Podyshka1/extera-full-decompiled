package com.android.p003dx.dex.file;

import com.android.p003dx.rop.cst.CstBaseMethodRef;

/* JADX INFO: loaded from: classes4.dex */
public final class MethodIdItem extends MemberIdItem {
    public MethodIdItem(CstBaseMethodRef cstBaseMethodRef) {
        super(cstBaseMethodRef);
    }

    @Override // com.android.p003dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_METHOD_ID_ITEM;
    }

    @Override // com.android.p003dx.dex.file.MemberIdItem, com.android.p003dx.dex.file.IdItem, com.android.p003dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        super.addContents(dexFile);
        dexFile.getProtoIds().intern(getMethodRef().getPrototype());
    }

    public CstBaseMethodRef getMethodRef() {
        return (CstBaseMethodRef) getRef();
    }

    @Override // com.android.p003dx.dex.file.MemberIdItem
    protected int getTypoidIdx(DexFile dexFile) {
        return dexFile.getProtoIds().indexOf(getMethodRef().getPrototype());
    }

    @Override // com.android.p003dx.dex.file.MemberIdItem
    protected String getTypoidName() {
        return "proto_idx";
    }
}
