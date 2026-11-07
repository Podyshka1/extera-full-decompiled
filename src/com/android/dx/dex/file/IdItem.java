package com.android.dx.dex.file;

import com.android.dx.rop.cst.CstType;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
public abstract class IdItem extends IndexedItem {
    private final CstType type;

    public IdItem(CstType cstType) {
        if (cstType == null) {
            f$$ExternalSyntheticBUOutline2.m213m("type == null");
            throw null;
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
