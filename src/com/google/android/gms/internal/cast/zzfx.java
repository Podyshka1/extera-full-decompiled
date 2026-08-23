package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
final class zzfx extends zzfq {
    static final zzfq zza = new zzfx(new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    zzfx(Object[] objArr, int i) {
        this.zzb = objArr;
        this.zzc = i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzez.zza(i, this.zzc, "index");
        Object obj = this.zzb[i];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.cast.zzfq, com.google.android.gms.internal.cast.zzfm
    final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzb, 0, objArr, 0, this.zzc);
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    final int zzb() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    final Object[] zzg() {
        return this.zzb;
    }
}
