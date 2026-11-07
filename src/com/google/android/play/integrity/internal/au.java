package com.google.android.play.integrity.internal;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
final class au extends as {

    /* JADX INFO: renamed from: a */
    static final au f398a;

    /* JADX INFO: renamed from: d */
    private static final Object[] f399d;

    /* JADX INFO: renamed from: b */
    final transient Object[] f400b;

    /* JADX INFO: renamed from: c */
    final transient Object[] f401c;

    static {
        Object[] objArr = new Object[0];
        f399d = objArr;
        f398a = new au(objArr, 0, objArr, 0, 0);
    }

    public au(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.f400b = objArr;
        this.f401c = objArr2;
    }

    @Override // com.google.android.play.integrity.internal.ao
    /* JADX INFO: renamed from: a */
    public final int mo423a(Object[] objArr, int i) {
        System.arraycopy(this.f400b, 0, objArr, 0, 0);
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

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        int length = this.f401c.length;
        return false;
    }

    @Override // com.google.android.play.integrity.internal.ao
    /* JADX INFO: renamed from: e */
    public final Object[] mo426e() {
        return this.f400b;
    }

    @Override // com.google.android.play.integrity.internal.as
    /* JADX INFO: renamed from: g */
    public final ar mo431g() {
        int i = ar.$r8$clinit;
        return at.f396a;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return 0;
    }

    @Override // com.google.android.play.integrity.internal.as
    /* JADX INFO: renamed from: i */
    public final boolean mo432i() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return m430f().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 0;
    }
}
