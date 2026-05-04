package com.google.android.gms.internal.mlkit_language_id_bundled;

import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class zbj extends zbi {
    static final zbi zba = new zbj(new Object[0], 0);
    final transient Object[] zbb;
    private final transient int zbc;

    zbj(Object[] objArr, int i) {
        this.zbb = objArr;
        this.zbc = i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zbc.zba(i, this.zbc, "index");
        Object obj = this.zbb[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zbc;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.zbi, com.google.android.gms.internal.mlkit_language_id_bundled.zbf
    final int zba(Object[] objArr, int i) {
        System.arraycopy(this.zbb, 0, objArr, 0, this.zbc);
        return this.zbc;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.zbf
    final int zbb() {
        return this.zbc;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.zbf
    final int zbc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.zbf
    final Object[] zbe() {
        return this.zbb;
    }
}
