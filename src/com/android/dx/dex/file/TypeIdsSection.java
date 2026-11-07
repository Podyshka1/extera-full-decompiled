package com.android.dx.dex.file;

import com.android.dex.DexIndexOverflowException;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import com.sun.jna.Native$$ExternalSyntheticBUOutline5;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
public final class TypeIdsSection extends UniformItemSection {
    private final TreeMap<Type, TypeIdItem> typeIds;

    public TypeIdsSection(DexFile dexFile) {
        super("type_ids", dexFile, 4);
        this.typeIds = new TreeMap<>();
    }

    @Override // com.android.dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.typeIds.values();
    }

    @Override // com.android.dx.dex.file.UniformItemSection
    public IndexedItem get(Constant constant) {
        if (constant == null) {
            f$$ExternalSyntheticBUOutline2.m213m("cst == null");
            return null;
        }
        throwIfNotPrepared();
        TypeIdItem typeIdItem = this.typeIds.get(((CstType) constant).getClassType());
        if (typeIdItem != null) {
            return typeIdItem;
        }
        Native$$ExternalSyntheticBUOutline5.m493m("not found: ", constant);
        return null;
    }

    public void writeHeaderPart(AnnotatedOutput annotatedOutput) {
        throwIfNotPrepared();
        int size = this.typeIds.size();
        int fileOffset = size == 0 ? 0 : getFileOffset();
        if (size > 65536) {
            throw new DexIndexOverflowException(String.format("Too many type identifiers to fit in one dex file: %1$d; max is %2$d.%nYou may try using multi-dex. If multi-dex is enabled then the list of classes for the main dex list is too large.", Integer.valueOf(items().size()), 65536));
        }
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(4, "type_ids_size:   " + Hex.u4(size));
            annotatedOutput.annotate(4, "type_ids_off:    " + Hex.u4(fileOffset));
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
            f$$ExternalSyntheticBUOutline2.m213m("type == null");
            return 0;
        }
        throwIfNotPrepared();
        TypeIdItem typeIdItem = this.typeIds.get(type);
        if (typeIdItem == null) {
            Native$$ExternalSyntheticBUOutline5.m493m("not found: ", type);
            return 0;
        }
        return typeIdItem.getIndex();
    }

    public int indexOf(CstType cstType) {
        if (cstType == null) {
            f$$ExternalSyntheticBUOutline2.m213m("type == null");
            return 0;
        }
        return indexOf(cstType.getClassType());
    }

    @Override // com.android.dx.dex.file.UniformItemSection
    public void orderItems() {
        Iterator<? extends Item> it = items().iterator();
        int i = 0;
        while (it.hasNext()) {
            ((TypeIdItem) it.next()).setIndex(i);
            i++;
        }
    }
}
