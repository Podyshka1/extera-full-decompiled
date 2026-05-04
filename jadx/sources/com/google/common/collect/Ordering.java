package com.google.common.collect;

import com.google.common.base.Function;
import java.util.Comparator;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Ordering implements Comparator {
    @Override // java.util.Comparator
    public abstract int compare(Object obj, Object obj2);

    public static Ordering natural() {
        return NaturalOrdering.INSTANCE;
    }

    public static Ordering from(Comparator comparator) {
        if (comparator instanceof Ordering) {
            return (Ordering) comparator;
        }
        return new ComparatorOrdering(comparator);
    }

    protected Ordering() {
    }

    public Ordering reverse() {
        return new ReverseOrdering(this);
    }

    public Ordering onResultOf(Function function) {
        return new ByFunctionOrdering(function, this);
    }
}
