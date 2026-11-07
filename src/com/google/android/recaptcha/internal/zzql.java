package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class zzql extends zzpt {
    static final zzpt zza = new zzql(new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    public zzql(Object[] objArr, int i) {
        this.zzb = objArr;
        this.zzc = i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzoq.zze(i, this.zzc, "index");
        Object obj = this.zzb[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.recaptcha.internal.zzpq
    public final Object[] zzb() {
        return this.zzb;
    }

    @Override // com.google.android.recaptcha.internal.zzpq
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.recaptcha.internal.zzpq
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.recaptcha.internal.zzpt, com.google.android.recaptcha.internal.zzpq
    public final int zzf(Object[] objArr, int i) {
        Object[] objArr2 = this.zzb;
        int i2 = this.zzc;
        System.arraycopy(objArr2, 0, objArr, 0, i2);
        return i2;
    }
}
