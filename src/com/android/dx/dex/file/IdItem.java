package com.android.dx.dex.file;

import com.android.dx.rop.cst.CstType;

/* JADX INFO: loaded from: classes4.dex */
public abstract class IdItem extends IndexedItem {
    private final CstType type;

    public IdItem(CstType cstType) {
        if (cstType == null) {
            throw new NullPointerException("type == null");
        }
        this.type = cstType;
    }

    @Override // com.android.dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        dexFile.getTypeIds().intern(this.type);
    }

    public final CstType getDefiningClass() {
        return this.type;
    }
}
