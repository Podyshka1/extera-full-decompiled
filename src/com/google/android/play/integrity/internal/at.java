package com.google.android.play.integrity.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class at extends ar {

    /* JADX INFO: renamed from: a */
    static final ar f396a = new at(new Object[0], 0);

    /* JADX INFO: renamed from: b */
    final transient Object[] f397b;

    public at(Object[] objArr, int i) {
        this.f397b = objArr;
    }

    @Override // com.google.android.play.integrity.internal.ar, com.google.android.play.integrity.internal.ao
    /* JADX INFO: renamed from: a */
    public final int mo423a(Object[] objArr, int i) {
        System.arraycopy(this.f397b, 0, objArr, 0, 0);
        return 0;
    }

    @Override // com.google.android.play.integrity.internal.ao
    /* JADX INFO: renamed from: b */
    public final int mo424b() {
        return 0;
    }

    @Override // com.google.android.play.integrity.internal.ao
    /* JADX INFO: renamed from: c */
    public final int mo425c() {
        return 0;
    }

    @Override // com.google.android.play.integrity.internal.ao
    /* JADX INFO: renamed from: e */
    public final Object[] mo426e() {
        return this.f397b;
    }

    @Override // java.util.List
    public final Object get(int i) {
        al.m417a(i, 0, "index");
        Object obj = this.f397b[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return 0;
    }
}
