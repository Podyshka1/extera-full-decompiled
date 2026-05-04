package com.android.p003dx.dex.file;

import com.android.dex.DexIndexOverflowException;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstType;
import com.android.p003dx.rop.type.Type;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.Hex;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public final class TypeIdsSection extends UniformItemSection {
    private final TreeMap<Type, TypeIdItem> typeIds;

    public TypeIdsSection(DexFile dexFile) {
        super("type_ids", dexFile, 4);
        this.typeIds = new TreeMap<>();
    }

    @Override // com.android.p003dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.typeIds.values();
    }

    @Override // com.android.p003dx.dex.file.UniformItemSection
    public IndexedItem get(Constant constant) {
        if (constant == null) {
            throw new NullPointerException("cst == null");
        }
        throwIfNotPrepared();
        TypeIdItem typeIdItem = this.typeIds.get(((CstType) constant).getClassType());
        if (typeIdItem != null) {
            return typeIdItem;
        }
        throw new IllegalArgumentException("not found: " + constant);
    }

    public void writeHeaderPart(AnnotatedOutput annotatedOutput) {
        throwIfNotPrepared();
        int size = this.typeIds.size();
        int fileOffset = size == 0 ? 0 : getFileOffset();
        if (size > 65536) {
            throw new DexIndexOverflowException(String.format("Too many type identifiers to fit in one dex file: %1$d; max is %2$d.%nYou may try using multi-dex. If multi-dex is enabled then the list of classes for the main dex list is too large.", Integer.valueOf(items().size()), 65536));
        }
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(4, "type_ids_size:   " + Hex.m214u4(size));
            annotatedOutput.annotate(4, "type_ids_off:    " + Hex.m214u4(fileOffset));
        }
        annotatedOutput.writeInt(size);
        annotatedOutput.writeInt(fileOffset);
    }

    public synchronized TypeIdItem intern(Type type) {
        TypeIdItem typeIdItem;
        if (type == null) {
            throw new NullPointerException("type == null");
        }
        throwIfPrepared();
        typeIdItem = this.typeIds.get(type);
        if (typeIdItem == null) {
            typeIdItem = new TypeIdItem(new CstType(type));
            this.typeIds.put(type, typeIdItem);
        }
        return typeIdItem;
    }

    public synchronized TypeIdItem intern(CstType cstType) {
        TypeIdItem typeIdItem;
        if (cstType == null) {
            throw new NullPointerException("type == null");
        }
        throwIfPrepared();
        Type classType = cstType.getClassType();
        typeIdItem = this.typeIds.get(classType);
        if (typeIdItem == null) {
            typeIdItem = new TypeIdItem(cstType);
            this.typeIds.put(classType, typeIdItem);
        }
        return typeIdItem;
    }

    public int indexOf(Type type) {
        if (type == null) {
            throw new NullPointerException("type == null");
        }
        throwIfNotPrepared();
        TypeIdItem typeIdItem = this.typeIds.get(type);
        if (typeIdItem == null) {
            throw new IllegalArgumentException("not found: " + type);
        }
        return typeIdItem.getIndex();
    }

    public int indexOf(CstType cstType) {
        if (cstType == null) {
            throw new NullPointerException("type == null");
        }
        return indexOf(cstType.getClassType());
    }

    @Override // com.android.p003dx.dex.file.UniformItemSection
    protected void orderItems() {
        Iterator<? extends Item> it = items().iterator();
        int i = 0;
        while (it.hasNext()) {
            ((TypeIdItem) it.next()).setIndex(i);
            i++;
        }
    }
}
