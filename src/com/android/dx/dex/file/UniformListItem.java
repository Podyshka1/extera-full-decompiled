package com.android.dx.dex.file;

import com.android.dx.dex.file.OffsettedItem;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import java.util.Iterator;
import java.util.List;
import okio.ByteString$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
public final class UniformListItem<T extends OffsettedItem> extends OffsettedItem {
    private static final int HEADER_SIZE = 4;
    private final ItemType itemType;
    private final List<T> items;

    public UniformListItem(ItemType itemType, List<T> list) {
        super(getAlignment(list), writeSize(list));
        if (itemType == null) {
            f$$ExternalSyntheticBUOutline2.m213m("itemType == null");
            throw null;
        }
        this.items = list;
        this.itemType = itemType;
    }

    private static int getAlignment(List<? extends OffsettedItem> list) {
        try {
            return Math.max(4, list.get(0).getAlignment());
        } catch (IndexOutOfBoundsException unused) {
            f$$ExternalSyntheticBUOutline1.m212m("items.size() == 0");
            return 0;
        } catch (NullPointerException unused2) {
            f$$ExternalSyntheticBUOutline2.m213m("items == null");
            return 0;
        }
    }

    private static int writeSize(List<? extends OffsettedItem> list) {
        return (list.size() * list.get(0).writeSize()) + getAlignment(list);
    }

    @Override // com.android.dx.dex.file.Item
    public ItemType itemType() {
        return this.itemType;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append(UniformListItem.class.getName());
        sb.append(this.items);
        return sb.toString();
    }

    @Override // com.android.dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        Iterator<T> it = this.items.iterator();
        while (it.hasNext()) {
            it.next().addContents(dexFile);
        }
    }

    @Override // com.android.dx.dex.file.OffsettedItem
    public final String toHuman() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("{");
        boolean z = true;
        for (T t : this.items) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(t.toHuman());
        }
        sb.append("}");
        return sb.toString();
    }

    public final List<T> getItems() {
        return this.items;
    }

    @Override // com.android.dx.dex.file.OffsettedItem
    public void place0(Section section, int i) {
        int iHeaderSize = i + headerSize();
        boolean z = true;
        int i2 = -1;
        int alignment = -1;
        for (T t : this.items) {
            int iWriteSize = t.writeSize();
            if (z) {
                alignment = t.getAlignment();
                z = false;
                i2 = iWriteSize;
            } else if (iWriteSize != i2) {
                ByteString$$ExternalSyntheticBUOutline0.m920m("item size mismatch");
                return;
            } else if (t.getAlignment() != alignment) {
                ByteString$$ExternalSyntheticBUOutline0.m920m("item alignment mismatch");
                return;
            }
            iHeaderSize = t.place(section, iHeaderSize) + iWriteSize;
        }
    }

    @Override // com.android.dx.dex.file.OffsettedItem
    public void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        int size = this.items.size();
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, offsetString() + " " + typeName());
            StringBuilder sb = new StringBuilder("  size: ");
            sb.append(Hex.u4(size));
            annotatedOutput.annotate(4, sb.toString());
        }
        annotatedOutput.writeInt(size);
        Iterator<T> it = this.items.iterator();
        while (it.hasNext()) {
            it.next().writeTo(dexFile, annotatedOutput);
        }
    }

    private int headerSize() {
        return getAlignment();
    }
}
