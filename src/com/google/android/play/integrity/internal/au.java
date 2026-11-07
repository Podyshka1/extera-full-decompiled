package com.google.android.play.integrity.internal;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
final class au extends as {

    /* JADX INFO: renamed from: a */
    static final au f399a;

    /* JADX INFO: renamed from: d */
    private static final Object[] f400d;

    /* JADX INFO: renamed from: b */
    final transient Object[] f401b;

    /* JADX INFO: renamed from: c */
    final transient Object[] f402c;

    static {
        Object[] objArr = new Object[0];
        f400d = objArr;
        f399a = new au(objArr, 0, objArr, 0, 0);
    }

    public au(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.f401b = objArr;
        this.f402c = objArr2;
    }

    @Override // com.google.android.play.integrity.internal.ao
    /* JADX INFO: renamed from: a */
    public final int mo447a(Object[] objArr, int i) {
        System.arraycopy(this.f401b, 0, objArr, 0, 0);
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

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        int length = this.f402c.length;
        return false;
    }

    @Override // com.google.android.play.integrity.internal.ao
    /* JADX INFO: renamed from: e */
    public final Object[] mo450e() {
        return this.f401b;
    }

    @Override // com.google.android.play.integrity.internal.as
    /* JADX INFO: renamed from: g */
    public final ar mo455g() {
        int i = ar.$r8$clinit;
        return at.f397a;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return 0;
    }

    @Override // com.google.android.play.integrity.internal.as
    /* JADX INFO: renamed from: i */
    public final boolean mo456i() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return m454f().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 0;
    }
}
