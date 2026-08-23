package com.android.dx.dex.file;

import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstMethodHandle;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public final class MethodHandlesSection extends UniformItemSection {
    private final TreeMap<CstMethodHandle, MethodHandleItem> methodHandles;

    public MethodHandlesSection(DexFile dexFile) {
        super("method_handles", dexFile, 8);
        this.methodHandles = new TreeMap<>();
    }

    @Override // com.android.dx.dex.file.UniformItemSection
    public IndexedItem get(Constant constant) {
        if (constant == null) {
            f$$ExternalSyntheticBUOutline2.m179m("cst == null");
            return null;
        }
        throwIfNotPrepared();
        MethodHandleItem methodHandleItem = this.methodHandles.get((CstMethodHandle) constant);
        if (methodHandleItem != null) {
            return methodHandleItem;
        }
        f$$ExternalSyntheticBUOutline1.m178m("not found");
        return null;
    }

    @Override // com.android.dx.dex.file.UniformItemSection
    public void orderItems() {
        Iterator<MethodHandleItem> it = this.methodHandles.values().iterator();
        int i = 0;
        while (it.hasNext()) {
            it.next().setIndex(i);
            i++;
        }
    }

    @Override // com.android.dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.methodHandles.values();
    }

    public void intern(CstMethodHandle cstMethodHandle) {
        if (cstMethodHandle == null) {
            f$$ExternalSyntheticBUOutline2.m179m("methodHandle == null");
            return;
        }
        throwIfPrepared();
        if (this.methodHandles.get(cstMethodHandle) == null) {
            this.methodHandles.put(cstMethodHandle, new MethodHandleItem(cstMethodHandle));
        }
    }

    public int indexOf(CstMethodHandle cstMethodHandle) {
        return this.methodHandles.get(cstMethodHandle).getIndex();
    }
}
