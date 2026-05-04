package com.android.p003dx.dex.file;

import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.Hex;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class MapItem extends OffsettedItem {
    private static final int ALIGNMENT = 4;
    private static final int WRITE_SIZE = 12;
    private final Item firstItem;
    private final int itemCount;
    private final Item lastItem;
    private final Section section;
    private final ItemType type;

    @Override // com.android.p003dx.dex.file.Item
    public void addContents(DexFile dexFile) {
    }

    public static void addMap(Section[] sectionArr, MixedItemSection mixedItemSection) {
        if (sectionArr == null) {
            throw new NullPointerException("sections == null");
        }
        if (mixedItemSection.items().size() != 0) {
            throw new IllegalArgumentException("mapSection.items().size() != 0");
        }
        ArrayList arrayList = new ArrayList(50);
        for (Section section : sectionArr) {
            int i = 0;
            ItemType itemType = null;
            Item item = null;
            Item item2 = null;
            for (Item item3 : section.items()) {
                ItemType itemType2 = item3.itemType();
                if (itemType2 != itemType) {
                    if (i != 0) {
                        arrayList.add(new MapItem(itemType, section, item, item2, i));
                    }
                    i = 0;
                    item = item3;
                    itemType = itemType2;
                }
                i++;
                item2 = item3;
            }
            if (i != 0) {
                arrayList.add(new MapItem(itemType, section, item, item2, i));
            } else if (section == mixedItemSection) {
                arrayList.add(new MapItem(mixedItemSection));
            }
        }
        mixedItemSection.add(new UniformListItem(ItemType.TYPE_MAP_LIST, arrayList));
    }

    private MapItem(ItemType itemType, Section section, Item item, Item item2, int i) {
        super(4, 12);
        if (itemType == null) {
            throw new NullPointerException("type == null");
        }
        if (section == null) {
            throw new NullPointerException("section == null");
        }
        if (item == null) {
            throw new NullPointerException("firstItem == null");
        }
        if (item2 == null) {
            throw new NullPointerException("lastItem == null");
        }
        if (i <= 0) {
            throw new IllegalArgumentException("itemCount <= 0");
        }
        this.type = itemType;
        this.section = section;
        this.firstItem = item;
        this.lastItem = item2;
        this.itemCount = i;
    }

    private MapItem(Section section) {
        super(4, 12);
        if (section == null) {
            throw new NullPointerException("section == null");
        }
        this.type = ItemType.TYPE_MAP_LIST;
        this.section = section;
        this.firstItem = null;
        this.lastItem = null;
        this.itemCount = 1;
    }

    @Override // com.android.p003dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_MAP_ITEM;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append(MapItem.class.getName());
        sb.append('{');
        sb.append(this.section.toString());
        sb.append(' ');
        sb.append(this.type.toHuman());
        sb.append('}');
        return sb.toString();
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    public final String toHuman() {
        return toString();
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    protected void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        int absoluteItemOffset;
        int mapValue = this.type.getMapValue();
        Item item = this.firstItem;
        if (item == null) {
            absoluteItemOffset = this.section.getFileOffset();
        } else {
            absoluteItemOffset = this.section.getAbsoluteItemOffset(item);
        }
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, offsetString() + ' ' + this.type.getTypeName() + " map");
            annotatedOutput.annotate(2, "  type:   " + Hex.m212u2(mapValue) + " // " + this.type.toString());
            annotatedOutput.annotate(2, "  unused: 0");
            StringBuilder sb = new StringBuilder();
            sb.append("  size:   ");
            sb.append(Hex.m214u4(this.itemCount));
            annotatedOutput.annotate(4, sb.toString());
            annotatedOutput.annotate(4, "  offset: " + Hex.m214u4(absoluteItemOffset));
        }
        annotatedOutput.writeShort(mapValue);
        annotatedOutput.writeShort(0);
        annotatedOutput.writeInt(this.itemCount);
        annotatedOutput.writeInt(absoluteItemOffset);
    }
}
