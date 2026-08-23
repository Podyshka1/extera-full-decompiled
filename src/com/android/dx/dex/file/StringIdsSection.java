package com.android.dx.dex.file;

import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
public final class StringIdsSection extends UniformItemSection {
    private final TreeMap<CstString, StringIdItem> strings;

    public StringIdsSection(DexFile dexFile) {
        super("string_ids", dexFile, 4);
        this.strings = new TreeMap<>();
    }

    @Override // com.android.dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.strings.values();
    }

    @Override // com.android.dx.dex.file.UniformItemSection
    public IndexedItem get(Constant constant) {
        if (constant == null) {
            f$$ExternalSyntheticBUOutline2.m179m("cst == null");
            return null;
        }
        throwIfNotPrepared();
        StringIdItem stringIdItem = this.strings.get((CstString) constant);
        if (stringIdItem != null) {
            return stringIdItem;
        }
        f$$ExternalSyntheticBUOutline1.m178m("not found");
        return null;
    }

    public void writeHeaderPart(AnnotatedOutput annotatedOutput) {
        throwIfNotPrepared();
        int size = this.strings.size();
        int fileOffset = size == 0 ? 0 : getFileOffset();
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(4, "string_ids_size: " + Hex.u4(size));
            annotatedOutput.annotate(4, "string_ids_off:  " + Hex.u4(fileOffset));
        }
        annotatedOutput.writeInt(size);
        annotatedOutput.writeInt(fileOffset);
    }

    public StringIdItem intern(String str) {
        return intern(new StringIdItem(new CstString(str)));
    }

    public StringIdItem intern(CstString cstString) {
        return intern(new StringIdItem(cstString));
    }

    public synchronized StringIdItem intern(StringIdItem stringIdItem) {
        if (stringIdItem == null) {
            throw new NullPointerException("string == null");
        }
        throwIfPrepared();
        CstString value = stringIdItem.getValue();
        StringIdItem stringIdItem2 = this.strings.get(value);
        if (stringIdItem2 != null) {
            return stringIdItem2;
        }
        this.strings.put(value, stringIdItem);
        return stringIdItem;
    }

    public synchronized void intern(CstNat cstNat) {
        intern(cstNat.getName());
        intern(cstNat.getDescriptor());
    }

    public int indexOf(CstString cstString) {
        if (cstString == null) {
            f$$ExternalSyntheticBUOutline2.m179m("string == null");
            return 0;
        }
        throwIfNotPrepared();
        StringIdItem stringIdItem = this.strings.get(cstString);
        if (stringIdItem == null) {
            f$$ExternalSyntheticBUOutline1.m178m("not found");
            return 0;
        }
        return stringIdItem.getIndex();
    }

    @Override // com.android.dx.dex.file.UniformItemSection
    public void orderItems() {
        Iterator<StringIdItem> it = this.strings.values().iterator();
        int i = 0;
        while (it.hasNext()) {
            it.next().setIndex(i);
            i++;
        }
    }
}
