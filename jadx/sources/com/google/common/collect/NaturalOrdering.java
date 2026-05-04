package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
final class NaturalOrdering extends Ordering implements Serializable {
    static final NaturalOrdering INSTANCE = new NaturalOrdering();

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(Comparable comparable, Comparable comparable2) {
        Preconditions.checkNotNull(comparable);
        Preconditions.checkNotNull(comparable2);
        return comparable.compareTo(comparable2);
    }

    @Override // com.google.common.collect.Ordering
    public Ordering reverse() {
        return ReverseNaturalOrdering.INSTANCE;
    }

    public String toString() {
        return "Ordering.natural()";
    }

    private NaturalOrdering() {
    }
}
