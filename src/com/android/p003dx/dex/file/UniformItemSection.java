package com.android.p003dx.dex.file;

import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.util.AnnotatedOutput;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class UniformItemSection extends Section {
    public abstract IndexedItem get(Constant constant);

    protected abstract void orderItems();

    public UniformItemSection(String str, DexFile dexFile, int i) {
        super(str, dexFile, i);
    }

    @Override // com.android.p003dx.dex.file.Section
    public final int writeSize() {
        Collection<? extends Item> collectionItems = items();
        int size = collectionItems.size();
        if (size == 0) {
            return 0;
        }
        return size * collectionItems.iterator().next().writeSize();
    }

    @Override // com.android.p003dx.dex.file.Section
    protected final void prepare0() {
        DexFile file = getFile();
        orderItems();
        Iterator<? extends Item> it = items().iterator();
        while (it.hasNext()) {
            it.next().addContents(file);
        }
    }

    @Override // com.android.p003dx.dex.file.Section
    protected final void writeTo0(AnnotatedOutput annotatedOutput) {
        DexFile file = getFile();
        int alignment = getAlignment();
        Iterator<? extends Item> it = items().iterator();
        while (it.hasNext()) {
            it.next().writeTo(file, annotatedOutput);
            annotatedOutput.alignTo(alignment);
        }
    }

    @Override // com.android.p003dx.dex.file.Section
    public final int getAbsoluteItemOffset(Item item) {
        IndexedItem indexedItem = (IndexedItem) item;
        return getAbsoluteOffset(indexedItem.getIndex() * indexedItem.writeSize());
    }
}
