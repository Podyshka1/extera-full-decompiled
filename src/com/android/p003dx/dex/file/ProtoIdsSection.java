package com.android.p003dx.dex.file;

import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstProtoRef;
import com.android.p003dx.rop.type.Prototype;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.Hex;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public final class ProtoIdsSection extends UniformItemSection {
    private final TreeMap<Prototype, ProtoIdItem> protoIds;

    public ProtoIdsSection(DexFile dexFile) {
        super("proto_ids", dexFile, 4);
        this.protoIds = new TreeMap<>();
    }

    @Override // com.android.p003dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.protoIds.values();
    }

    @Override // com.android.p003dx.dex.file.UniformItemSection
    public IndexedItem get(Constant constant) {
        if (constant == null) {
            throw new NullPointerException("cst == null");
        }
        if (!(constant instanceof CstProtoRef)) {
            throw new IllegalArgumentException("cst not instance of CstProtoRef");
        }
        throwIfNotPrepared();
        ProtoIdItem protoIdItem = this.protoIds.get(((CstProtoRef) constant).getPrototype());
        if (protoIdItem != null) {
            return protoIdItem;
        }
        throw new IllegalArgumentException("not found");
    }

    public void writeHeaderPart(AnnotatedOutput annotatedOutput) {
        throwIfNotPrepared();
        int size = this.protoIds.size();
        int fileOffset = size == 0 ? 0 : getFileOffset();
        if (size > 65536) {
            throw new UnsupportedOperationException("too many proto ids");
        }
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(4, "proto_ids_size:  " + Hex.m214u4(size));
            annotatedOutput.annotate(4, "proto_ids_off:   " + Hex.m214u4(fileOffset));
        }
        annotatedOutput.writeInt(size);
        annotatedOutput.writeInt(fileOffset);
    }

    public synchronized ProtoIdItem intern(Prototype prototype) {
        ProtoIdItem protoIdItem;
        if (prototype == null) {
            throw new NullPointerException("prototype == null");
        }
        throwIfPrepared();
        protoIdItem = this.protoIds.get(prototype);
        if (protoIdItem == null) {
            protoIdItem = new ProtoIdItem(prototype);
            this.protoIds.put(prototype, protoIdItem);
        }
        return protoIdItem;
    }

    public int indexOf(Prototype prototype) {
        if (prototype == null) {
            throw new NullPointerException("prototype == null");
        }
        throwIfNotPrepared();
        ProtoIdItem protoIdItem = this.protoIds.get(prototype);
        if (protoIdItem == null) {
            throw new IllegalArgumentException("not found");
        }
        return protoIdItem.getIndex();
    }

    @Override // com.android.p003dx.dex.file.UniformItemSection
    protected void orderItems() {
        Iterator<? extends Item> it = items().iterator();
        int i = 0;
        while (it.hasNext()) {
            ((ProtoIdItem) it.next()).setIndex(i);
            i++;
        }
    }
}
