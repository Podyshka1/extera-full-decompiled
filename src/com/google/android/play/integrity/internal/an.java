package com.google.android.play.integrity.internal;

import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
abstract class an extends aw {

    /* JADX INFO: renamed from: a */
    private final int f387a;

    /* JADX INFO: renamed from: b */
    private int f388b;

    public an(int i, int i2) {
        al.m418b(i2, i, "index");
        this.f387a = i;
        this.f388b = i2;
    }

    /* JADX INFO: renamed from: a */
    public abstract Object mo422a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f388b < this.f387a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f388b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            Utils$$ExternalSyntheticBUOutline0.m1068m();
            return null;
        }
        int i = this.f388b;
        this.f388b = i + 1;
        return mo422a(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f388b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            Utils$$ExternalSyntheticBUOutline0.m1068m();
            return null;
        }
        int i = this.f388b - 1;
        this.f388b = i;
        return mo422a(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f388b - 1;
    }
}
