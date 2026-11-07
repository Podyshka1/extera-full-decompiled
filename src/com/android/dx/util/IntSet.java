package com.android.dx.util;

/* JADX INFO: loaded from: classes4.dex */
public interface IntSet {
    void add(int i);

    int elements();

    boolean has(int i);

    IntIterator iterator();

    void merge(IntSet intSet);

    void remove(int i);
}
