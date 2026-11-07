package com.google.common.collect;

import java.util.Collection;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public interface Multiset<E> extends Collection<E> {

    public interface Entry<E> {
        int getCount();

        E getElement();
    }

    int count(Object obj);

    Set<E> elementSet();

    Set<Entry<E>> entrySet();

    @Override // java.util.Collection
    int size();
}
