package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
final class ReverseOrdering extends Ordering implements Serializable {
    final Ordering forwardOrder;

    ReverseOrdering(Ordering ordering) {
        this.forwardOrder = (Ordering) Preconditions.checkNotNull(ordering);
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return this.forwardOrder.compare(obj2, obj);
    }

    @Override // com.google.common.collect.Ordering
    public Ordering reverse() {
        return this.forwardOrder;
    }

    public int hashCode() {
        return -this.forwardOrder.hashCode();
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ReverseOrdering) {
            return this.forwardOrder.equals(((ReverseOrdering) obj).forwardOrder);
        }
        return false;
    }

    public String toString() {
        return this.forwardOrder + ".reverse()";
    }
}
