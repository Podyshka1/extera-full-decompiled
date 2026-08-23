package com.android.p003dx.dex.file;

import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstBaseMethodRef;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.Hex;
import java.util.Collection;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public final class MethodIdsSection extends MemberIdsSection {
    private final TreeMap<CstBaseMethodRef, MethodIdItem> methodIds;

    public MethodIdsSection(DexFile dexFile) {
        super("method_ids", dexFile);
        this.methodIds = new TreeMap<>();
    }

    @Override // com.android.p003dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.methodIds.values();
    }

    @Override // com.android.p003dx.dex.file.UniformItemSection
    public IndexedItem get(Constant constant) {
        if (constant == null) {
            throw new NullPointerException("cst == null");
        }
        throwIfNotPrepared();
        MethodIdItem methodIdItem = this.methodIds.get((CstBaseMethodRef) constant);
        if (methodIdItem != null) {
            return methodIdItem;
        }
        throw new IllegalArgumentException("not found");
    }

    public void writeHeaderPart(AnnotatedOutput annotatedOutput) {
        throwIfNotPrepared();
        int size = this.methodIds.size();
        int fileOffset = size == 0 ? 0 : getFileOffset();
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(4, "method_ids_size: " + Hex.m214u4(size));
            annotatedOutput.annotate(4, "method_ids_off:  " + Hex.m214u4(fileOffset));
        }
        annotatedOutput.writeInt(size);
        annotatedOutput.writeInt(fileOffset);
    }

    public synchronized MethodIdItem intern(CstBaseMethodRef cstBaseMethodRef) {
        MethodIdItem methodIdItem;
        if (cstBaseMethodRef == null) {
            throw new NullPointerException("method == null");
        }
        throwIfPrepared();
        methodIdItem = this.methodIds.get(cstBaseMethodRef);
        if (methodIdItem == null) {
            methodIdItem = new MethodIdItem(cstBaseMethodRef);
            this.methodIds.put(cstBaseMethodRef, methodIdItem);
        }
        return methodIdItem;
    }

    public int indexOf(CstBaseMethodRef cstBaseMethodRef) {
        if (cstBaseMethodRef == null) {
            throw new NullPointerException("ref == null");
        }
        throwIfNotPrepared();
        MethodIdItem methodIdItem = this.methodIds.get(cstBaseMethodRef);
        if (methodIdItem == null) {
            throw new IllegalArgumentException("not found");
        }
        return methodIdItem.getIndex();
    }
}
