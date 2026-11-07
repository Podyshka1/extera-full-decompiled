package com.google.android.play.integrity.internal;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
final class aq extends ar {

    /* JADX INFO: renamed from: a */
    final transient int f392a;

    /* JADX INFO: renamed from: b */
    final transient int f393b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ ar f394c;

    public aq(ar arVar, int i, int i2) {
        this.f394c = arVar;
        this.f392a = i;
        this.f393b = i2;
    }

    @Override // com.google.android.play.integrity.internal.ao
    /* JADX INFO: renamed from: b */
    public final int mo448b() {
        return this.f394c.mo449c() + this.f392a + this.f393b;
    }

    @Override // com.google.android.play.integrity.internal.ao
    /* JADX INFO: renamed from: c */
    public final int mo449c() {
        return this.f394c.mo449c() + this.f392a;
    }

    @Override // com.google.android.play.integrity.internal.ao
    /* JADX INFO: renamed from: e */
    public final Object[] mo450e() {
        return this.f394c.mo450e();
    }

    @Override // com.google.android.play.integrity.internal.ar
    /* JADX INFO: renamed from: f */
    public final ar subList(int i, int i2) {
        al.m443c(i, i2, this.f393b);
        int i3 = this.f392a;
        return this.f394c.subList(i + i3, i2 + i3);
    }

    @Override // java.util.List
    public final Object get(int i) {
        al.m441a(i, this.f393b, "index");
        return this.f394c.get(i + this.f392a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f393b;
    }

    @Override // com.google.android.play.integrity.internal.ar, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }
}
