package com.google.common.collect;

import com.google.common.base.Function;
import java.util.Comparator;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Ordering<T> implements Comparator<T> {
    @Override // java.util.Comparator
    public abstract int compare(T t, T t2);

    public static <C extends Comparable> Ordering<C> natural() {
        return NaturalOrdering.INSTANCE;
    }

    public static <T> Ordering<T> from(Comparator<T> comparator) {
        if (comparator instanceof Ordering) {
            return (Ordering) comparator;
        }
        return new ComparatorOrdering(comparator);
    }

    public <S extends T> Ordering<S> reverse() {
        return new ReverseOrdering(this);
    }

    public <F> Ordering<F> onResultOf(Function<F, ? extends T> function) {
        return new ByFunctionOrdering(function, this);
    }
}
