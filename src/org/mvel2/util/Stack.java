package org.mvel2.util;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public interface Stack extends Serializable {
    void add(Object obj);

    void clear();

    void discard();

    boolean isEmpty();

    Object peek();

    Object peek2();

    Object pop();

    Object pop2();

    void push(Object obj);

    void push(Object obj, Object obj2);

    void push(Object obj, Object obj2, Object obj3);

    Object pushAndPeek(Object obj);

    void showStack();

    int size();
}
