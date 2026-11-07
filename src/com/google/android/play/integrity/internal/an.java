package com.google.android.play.integrity.internal;

import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
abstract class an extends aw {

    /* JADX INFO: renamed from: a */
    private final int f388a;

    /* JADX INFO: renamed from: b */
    private int f389b;

    public an(int i, int i2) {
        al.m442b(i2, i, "index");
        this.f388a = i;
        this.f389b = i2;
    }

    /* JADX INFO: renamed from: a */
    public abstract Object mo446a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f389b < this.f388a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f389b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            Utils$$ExternalSyntheticBUOutline0.m1121m();
            return null;
        }
        int i = this.f389b;
        this.f389b = i + 1;
        return mo446a(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f389b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            Utils$$ExternalSyntheticBUOutline0.m1121m();
            return null;
        }
        int i = this.f389b - 1;
        this.f389b = i;
        return mo446a(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f389b - 1;
    }
}
