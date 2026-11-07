package com.google.android.play.integrity.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class at extends ar {

    /* JADX INFO: renamed from: a */
    static final ar f397a = new at(new Object[0], 0);

    /* JADX INFO: renamed from: b */
    final transient Object[] f398b;

    public at(Object[] objArr, int i) {
        this.f398b = objArr;
    }

    @Override // com.google.android.play.integrity.internal.ar, com.google.android.play.integrity.internal.ao
    /* JADX INFO: renamed from: a */
    public final int mo447a(Object[] objArr, int i) {
        System.arraycopy(this.f398b, 0, objArr, 0, 0);
        return 0;
    }

    @Override // com.google.android.play.integrity.internal.ao
    /* JADX INFO: renamed from: b */
    public final int mo448b() {
        return 0;
    }

    @Override // com.google.android.play.integrity.internal.ao
    /* JADX INFO: renamed from: c */
    public final int mo449c() {
        return 0;
    }

    @Override // com.google.android.play.integrity.internal.ao
    /* JADX INFO: renamed from: e */
    public final Object[] mo450e() {
        return this.f398b;
    }

    @Override // java.util.List
    public final Object get(int i) {
        al.m441a(i, 0, "index");
        Object obj = this.f398b[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return 0;
    }
}
