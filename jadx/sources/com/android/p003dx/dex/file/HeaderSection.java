package com.android.p003dx.dex.file;

import com.android.p003dx.rop.cst.Constant;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class HeaderSection extends UniformItemSection {
    private final List<HeaderItem> list;

    @Override // com.android.p003dx.dex.file.UniformItemSection
    public IndexedItem get(Constant constant) {
        return null;
    }

    @Override // com.android.p003dx.dex.file.UniformItemSection
    protected void orderItems() {
    }

    public HeaderSection(DexFile dexFile) {
        super(null, dexFile, 4);
        HeaderItem headerItem = new HeaderItem();
        headerItem.setIndex(0);
        this.list = Collections.singletonList(headerItem);
    }

    @Override // com.android.p003dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.list;
    }
}
