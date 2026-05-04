package com.android.p003dx.dex.file;

import com.android.dex.util.ExceptionWithContext;
import com.android.p003dx.util.AnnotatedOutput;

/* JADX INFO: loaded from: classes4.dex */
public abstract class OffsettedItem extends Item implements Comparable<OffsettedItem> {
    private Section addedTo;
    private final int alignment;
    private int offset;
    private int writeSize;

    protected void place0(Section section, int i) {
    }

    public abstract String toHuman();

    protected abstract void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput);

    public static int getAbsoluteOffsetOr0(OffsettedItem offsettedItem) {
        if (offsettedItem == null) {
            return 0;
        }
        return offsettedItem.getAbsoluteOffset();
    }

    public OffsettedItem(int i, int i2) {
        Section.validateAlignment(i);
        if (i2 < -1) {
            throw new IllegalArgumentException("writeSize < -1");
        }
        this.alignment = i;
        this.writeSize = i2;
        this.addedTo = null;
        this.offset = -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        OffsettedItem offsettedItem = (OffsettedItem) obj;
        return itemType() == offsettedItem.itemType() && compareTo0(offsettedItem) == 0;
    }

    @Override // java.lang.Comparable
    public final int compareTo(OffsettedItem offsettedItem) {
        if (this == offsettedItem) {
            return 0;
        }
        ItemType itemType = itemType();
        ItemType itemType2 = offsettedItem.itemType();
        if (itemType != itemType2) {
            return itemType.compareTo(itemType2);
        }
        return compareTo0(offsettedItem);
    }

    public final void setWriteSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("writeSize < 0");
        }
        if (this.writeSize >= 0) {
            throw new UnsupportedOperationException("writeSize already set");
        }
        this.writeSize = i;
    }

    @Override // com.android.p003dx.dex.file.Item
    public final int writeSize() {
        int i = this.writeSize;
        if (i >= 0) {
            return i;
        }
        throw new UnsupportedOperationException("writeSize is unknown");
    }

    @Override // com.android.p003dx.dex.file.Item
    public final void writeTo(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        annotatedOutput.alignTo(this.alignment);
        try {
            if (this.writeSize < 0) {
                throw new UnsupportedOperationException("writeSize is unknown");
            }
            annotatedOutput.assertCursor(getAbsoluteOffset());
            writeTo0(dexFile, annotatedOutput);
        } catch (RuntimeException e) {
            throw ExceptionWithContext.withContext(e, "...while writing " + this);
        }
    }

    public final int getRelativeOffset() {
        int i = this.offset;
        if (i >= 0) {
            return i;
        }
        throw new RuntimeException("offset not yet known");
    }

    public final int getAbsoluteOffset() {
        int i = this.offset;
        if (i < 0) {
            throw new RuntimeException("offset not yet known");
        }
        return this.addedTo.getAbsoluteOffset(i);
    }

    public final int place(Section section, int i) {
        if (section == null) {
            throw new NullPointerException("addedTo == null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("offset < 0");
        }
        if (this.addedTo != null) {
            throw new RuntimeException("already written");
        }
        int i2 = this.alignment - 1;
        int i3 = (i + i2) & (~i2);
        this.addedTo = section;
        this.offset = i3;
        place0(section, i3);
        return i3;
    }

    public final int getAlignment() {
        return this.alignment;
    }

    public final String offsetString() {
        return '[' + Integer.toHexString(getAbsoluteOffset()) + ']';
    }

    protected int compareTo0(OffsettedItem offsettedItem) {
        throw new UnsupportedOperationException("unsupported");
    }
}
