package com.android.p003dx.dex.file;

import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstMethodHandle;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public final class MethodHandlesSection extends UniformItemSection {
    private final TreeMap<CstMethodHandle, MethodHandleItem> methodHandles;

    public MethodHandlesSection(DexFile dexFile) {
        super("method_handles", dexFile, 8);
        this.methodHandles = new TreeMap<>();
    }

    @Override // com.android.p003dx.dex.file.UniformItemSection
    public IndexedItem get(Constant constant) {
        if (constant == null) {
            throw new NullPointerException("cst == null");
        }
        throwIfNotPrepared();
        MethodHandleItem methodHandleItem = this.methodHandles.get((CstMethodHandle) constant);
        if (methodHandleItem != null) {
            return methodHandleItem;
        }
        throw new IllegalArgumentException("not found");
    }

    @Override // com.android.p003dx.dex.file.UniformItemSection
    protected void orderItems() {
        Iterator<MethodHandleItem> it = this.methodHandles.values().iterator();
        int i = 0;
        while (it.hasNext()) {
            it.next().setIndex(i);
            i++;
        }
    }

    @Override // com.android.p003dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.methodHandles.values();
    }

    public void intern(CstMethodHandle cstMethodHandle) {
        if (cstMethodHandle == null) {
            throw new NullPointerException("methodHandle == null");
        }
        throwIfPrepared();
        if (this.methodHandles.get(cstMethodHandle) == null) {
            this.methodHandles.put(cstMethodHandle, new MethodHandleItem(cstMethodHandle));
        }
    }

    int indexOf(CstMethodHandle cstMethodHandle) {
        return this.methodHandles.get(cstMethodHandle).getIndex();
    }
}
