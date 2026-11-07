package com.google.android.play.integrity.internal;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
final class aq extends ar {

    /* JADX INFO: renamed from: a */
    final transient int f391a;

    /* JADX INFO: renamed from: b */
    final transient int f392b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ ar f393c;

    public aq(ar arVar, int i, int i2) {
        this.f393c = arVar;
        this.f391a = i;
        this.f392b = i2;
    }

    @Override // com.google.android.play.integrity.internal.ao
    /* JADX INFO: renamed from: b */
    public final int mo424b() {
        return this.f393c.mo425c() + this.f391a + this.f392b;
    }

    @Override // com.google.android.play.integrity.internal.ao
    /* JADX INFO: renamed from: c */
    public final int mo425c() {
        return this.f393c.mo425c() + this.f391a;
    }

    @Override // com.google.android.play.integrity.internal.ao
    /* JADX INFO: renamed from: e */
    public final Object[] mo426e() {
        return this.f393c.mo426e();
    }

    @Override // com.google.android.play.integrity.internal.ar
    /* JADX INFO: renamed from: f */
    public final ar subList(int i, int i2) {
        al.m419c(i, i2, this.f392b);
        int i3 = this.f391a;
        return this.f393c.subList(i + i3, i2 + i3);
    }

    @Override // java.util.List
    public final Object get(int i) {
        al.m417a(i, this.f392b, "index");
        return this.f393c.get(i + this.f391a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f392b;
    }

    @Override // com.google.android.play.integrity.internal.ar, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }
}
