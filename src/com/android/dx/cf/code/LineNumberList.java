package com.android.dx.cf.code;

import com.android.dx.util.FixedSizeList;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public final class LineNumberList extends FixedSizeList {
    public static final LineNumberList EMPTY = new LineNumberList(0);

    public static LineNumberList concat(LineNumberList lineNumberList, LineNumberList lineNumberList2) {
        if (lineNumberList == EMPTY) {
            return lineNumberList2;
        }
        int size = lineNumberList.size();
        int size2 = lineNumberList2.size();
        LineNumberList lineNumberList3 = new LineNumberList(size + size2);
        for (int i = 0; i < size; i++) {
            lineNumberList3.set(i, lineNumberList.get(i));
        }
        for (int i2 = 0; i2 < size2; i2++) {
            lineNumberList3.set(size + i2, lineNumberList2.get(i2));
        }
        return lineNumberList3;
    }

    public LineNumberList(int i) {
        super(i);
    }

    public Item get(int i) {
        return (Item) get0(i);
    }

    public void set(int i, Item item) {
        if (item == null) {
            f$$ExternalSyntheticBUOutline2.m213m("item == null");
        } else {
            set0(i, item);
        }
    }

    public void set(int i, int i2, int i3) {
        set0(i, new Item(i2, i3));
    }

    public int pcToLine(int i) {
        int size = size();
        int i2 = -1;
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            Item item = get(i4);
            int startPc = item.getStartPc();
            if (startPc <= i && startPc > i2) {
                int lineNumber = item.getLineNumber();
                if (startPc == i) {
                    return lineNumber;
                }
                i3 = lineNumber;
                i2 = startPc;
            }
        }
        return i3;
    }

    public static class Item {
        private final int lineNumber;
        private final int startPc;

        public Item(int i, int i2) {
            if (i < 0) {
                f$$ExternalSyntheticBUOutline1.m212m("startPc < 0");
                throw null;
            }
            if (i2 < 0) {
                f$$ExternalSyntheticBUOutline1.m212m("lineNumber < 0");
                throw null;
            }
            this.startPc = i;
            this.lineNumber = i2;
        }

        public int getStartPc() {
            return this.startPc;
        }

        public int getLineNumber() {
            return this.lineNumber;
        }
    }
}
