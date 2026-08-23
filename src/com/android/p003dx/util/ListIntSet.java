package com.android.p003dx.util;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
public class ListIntSet implements IntSet {
    final IntList ints;

    public ListIntSet() {
        IntList intList = new IntList();
        this.ints = intList;
        intList.sort();
    }

    @Override // com.android.p003dx.util.IntSet
    public void add(int i) {
        int iBinarysearch = this.ints.binarysearch(i);
        if (iBinarysearch < 0) {
            this.ints.insert(-(iBinarysearch + 1), i);
        }
    }

    @Override // com.android.p003dx.util.IntSet
    public void remove(int i) {
        int iIndexOf = this.ints.indexOf(i);
        if (iIndexOf >= 0) {
            this.ints.removeIndex(iIndexOf);
        }
    }

    @Override // com.android.p003dx.util.IntSet
    public boolean has(int i) {
        return this.ints.indexOf(i) >= 0;
    }

    @Override // com.android.p003dx.util.IntSet
    public void merge(IntSet intSet) {
        int iFindFirst = 0;
        if (intSet instanceof ListIntSet) {
            ListIntSet listIntSet = (ListIntSet) intSet;
            int size = this.ints.size();
            int size2 = listIntSet.ints.size();
            int i = 0;
            while (iFindFirst < size2 && i < size) {
                while (iFindFirst < size2 && listIntSet.ints.get(iFindFirst) < this.ints.get(i)) {
                    add(listIntSet.ints.get(iFindFirst));
                    iFindFirst++;
                }
                if (iFindFirst == size2) {
                    break;
                }
                while (i < size && listIntSet.ints.get(iFindFirst) >= this.ints.get(i)) {
                    i++;
                }
            }
            while (iFindFirst < size2) {
                add(listIntSet.ints.get(iFindFirst));
                iFindFirst++;
            }
            this.ints.sort();
            return;
        }
        if (intSet instanceof BitIntSet) {
            BitIntSet bitIntSet = (BitIntSet) intSet;
            while (iFindFirst >= 0) {
                this.ints.add(iFindFirst);
                iFindFirst = Bits.findFirst(bitIntSet.bits, iFindFirst + 1);
            }
            this.ints.sort();
            return;
        }
        IntIterator it = intSet.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }

    @Override // com.android.p003dx.util.IntSet
    public int elements() {
        return this.ints.size();
    }

    @Override // com.android.p003dx.util.IntSet
    public IntIterator iterator() {
        return new IntIterator() { // from class: com.android.dx.util.ListIntSet.1
            private int idx = 0;

            @Override // com.android.p003dx.util.IntIterator
            public boolean hasNext() {
                return this.idx < ListIntSet.this.ints.size();
            }

            @Override // com.android.p003dx.util.IntIterator
            public int next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                IntList intList = ListIntSet.this.ints;
                int i = this.idx;
                this.idx = i + 1;
                return intList.get(i);
            }
        };
    }

    public String toString() {
        return this.ints.toString();
    }
}
