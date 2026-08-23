package com.android.p003dx.dex.code;

import com.android.p003dx.util.FixedSizeList;

/* JADX INFO: loaded from: classes4.dex */
public final class CatchTable extends FixedSizeList implements Comparable<CatchTable> {
    public static final CatchTable EMPTY = new CatchTable(0);

    public CatchTable(int i) {
        super(i);
    }

    public Entry get(int i) {
        return (Entry) get0(i);
    }

    public void set(int i, Entry entry) {
        set0(i, entry);
    }

    @Override // java.lang.Comparable
    public int compareTo(CatchTable catchTable) {
        if (this == catchTable) {
            return 0;
        }
        int size = size();
        int size2 = catchTable.size();
        int iMin = Math.min(size, size2);
        for (int i = 0; i < iMin; i++) {
            int iCompareTo = get(i).compareTo(catchTable.get(i));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        if (size < size2) {
            return -1;
        }
        return size > size2 ? 1 : 0;
    }

    public static class Entry implements Comparable<Entry> {
        private final int end;
        private final CatchHandlerList handlers;
        private final int start;

        public Entry(int i, int i2, CatchHandlerList catchHandlerList) {
            if (i < 0) {
                throw new IllegalArgumentException("start < 0");
            }
            if (i2 <= i) {
                throw new IllegalArgumentException("end <= start");
            }
            if (catchHandlerList.isMutable()) {
                throw new IllegalArgumentException("handlers.isMutable()");
            }
            this.start = i;
            this.end = i2;
            this.handlers = catchHandlerList;
        }

        public int hashCode() {
            return (((this.start * 31) + this.end) * 31) + this.handlers.hashCode();
        }

        public boolean equals(Object obj) {
            return (obj instanceof Entry) && compareTo((Entry) obj) == 0;
        }

        @Override // java.lang.Comparable
        public int compareTo(Entry entry) {
            int i = this.start;
            int i2 = entry.start;
            if (i < i2) {
                return -1;
            }
            if (i > i2) {
                return 1;
            }
            int i3 = this.end;
            int i4 = entry.end;
            if (i3 < i4) {
                return -1;
            }
            if (i3 > i4) {
                return 1;
            }
            return this.handlers.compareTo(entry.handlers);
        }

        public int getStart() {
            return this.start;
        }

        public int getEnd() {
            return this.end;
        }

        public CatchHandlerList getHandlers() {
            return this.handlers;
        }
    }
}
