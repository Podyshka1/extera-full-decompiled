package com.android.p003dx.dex.code;

import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstType;
import com.android.p003dx.util.FixedSizeList;
import com.android.p003dx.util.Hex;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class CatchHandlerList extends FixedSizeList implements Comparable<CatchHandlerList> {
    public static final CatchHandlerList EMPTY = new CatchHandlerList(0);

    public CatchHandlerList(int i) {
        super(i);
    }

    public Entry get(int i) {
        return (Entry) get0(i);
    }

    @Override // com.android.p003dx.util.FixedSizeList, com.android.p003dx.util.ToHuman
    public String toHuman() {
        return toHuman(_UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET);
    }

    public String toHuman(String str, String str2) {
        StringBuilder sb = new StringBuilder(100);
        int size = size();
        sb.append(str);
        sb.append(str2);
        sb.append("catch ");
        for (int i = 0; i < size; i++) {
            Entry entry = get(i);
            if (i != 0) {
                sb.append(",\n");
                sb.append(str);
                sb.append("  ");
            }
            if (i == size - 1 && catchesAll()) {
                sb.append("<any>");
            } else {
                sb.append(entry.getExceptionType().toHuman());
            }
            sb.append(" -> ");
            sb.append(Hex.u2or4(entry.getHandler()));
        }
        return sb.toString();
    }

    public boolean catchesAll() {
        int size = size();
        if (size == 0) {
            return false;
        }
        return get(size - 1).getExceptionType().equals(CstType.OBJECT);
    }

    public void set(int i, CstType cstType, int i2) {
        set0(i, new Entry(cstType, i2));
    }

    public void set(int i, Entry entry) {
        set0(i, entry);
    }

    @Override // java.lang.Comparable
    public int compareTo(CatchHandlerList catchHandlerList) {
        if (this == catchHandlerList) {
            return 0;
        }
        int size = size();
        int size2 = catchHandlerList.size();
        int iMin = Math.min(size, size2);
        for (int i = 0; i < iMin; i++) {
            int iCompareTo = get(i).compareTo(catchHandlerList.get(i));
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
        private final CstType exceptionType;
        private final int handler;

        public Entry(CstType cstType, int i) {
            if (i < 0) {
                throw new IllegalArgumentException("handler < 0");
            }
            if (cstType == null) {
                throw new NullPointerException("exceptionType == null");
            }
            this.handler = i;
            this.exceptionType = cstType;
        }

        public int hashCode() {
            return (this.handler * 31) + this.exceptionType.hashCode();
        }

        public boolean equals(Object obj) {
            return (obj instanceof Entry) && compareTo((Entry) obj) == 0;
        }

        @Override // java.lang.Comparable
        public int compareTo(Entry entry) {
            int i = this.handler;
            int i2 = entry.handler;
            if (i < i2) {
                return -1;
            }
            if (i > i2) {
                return 1;
            }
            return this.exceptionType.compareTo((Constant) entry.exceptionType);
        }

        public CstType getExceptionType() {
            return this.exceptionType;
        }

        public int getHandler() {
            return this.handler;
        }
    }
}
