package com.android.dx.dex.file;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.util.AnnotatedOutput;
import okio.ByteString$$ExternalSyntheticBUOutline0;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
public abstract class OffsettedItem extends Item implements Comparable<OffsettedItem> {
    private Section addedTo;
    private final int alignment;
    private int offset;
    private int writeSize;

    public void place0(Section section, int i) {
    }

    public abstract String toHuman();

    public abstract void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput);

    public static int getAbsoluteOffsetOr0(OffsettedItem offsettedItem) {
        if (offsettedItem == null) {
            return 0;
        }
        return offsettedItem.getAbsoluteOffset();
    }

    public OffsettedItem(int i, int i2) {
        Section.validateAlignment(i);
        if (i2 < -1) {
            f$$ExternalSyntheticBUOutline1.m178m("writeSize < -1");
            throw null;
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
            f$$ExternalSyntheticBUOutline1.m178m("writeSize < 0");
        } else if (this.writeSize >= 0) {
            ByteString$$ExternalSyntheticBUOutline0.m838m("writeSize already set");
        } else {
            this.writeSize = i;
        }
    }

    @Override // com.android.dx.dex.file.Item
    public final int writeSize() {
        int i = this.writeSize;
        if (i >= 0) {
            return i;
        }
        ByteString$$ExternalSyntheticBUOutline0.m838m("writeSize is unknown");
        return 0;
    }

    @Override // com.android.dx.dex.file.Item
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
        GlShader$$ExternalSyntheticBUOutline1.m966m("offset not yet known");
        return 0;
    }

    public final int getAbsoluteOffset() {
        int i = this.offset;
        if (i < 0) {
            GlShader$$ExternalSyntheticBUOutline1.m966m("offset not yet known");
            return 0;
        }
        return this.addedTo.getAbsoluteOffset(i);
    }

    public final int place(Section section, int i) {
        if (section == null) {
            f$$ExternalSyntheticBUOutline2.m179m("addedTo == null");
            return 0;
        }
        if (i < 0) {
            f$$ExternalSyntheticBUOutline1.m178m("offset < 0");
            return 0;
        }
        if (this.addedTo != null) {
            GlShader$$ExternalSyntheticBUOutline1.m966m("already written");
            return 0;
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
        return "[" + Integer.toHexString(getAbsoluteOffset()) + ']';
    }

    public int compareTo0(OffsettedItem offsettedItem) {
        throw new UnsupportedOperationException("unsupported");
    }
}
