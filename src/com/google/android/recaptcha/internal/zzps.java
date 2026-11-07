package com.google.android.recaptcha.internal;

import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class zzps extends zzpt {
    final transient int zza;
    final transient int zzb;
    final /* synthetic */ zzpt zzc;

    public zzps(zzpt zzptVar, int i, int i2) {
        Objects.requireNonNull(zzptVar);
        this.zzc = zzptVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzoq.zze(i, this.zzb, "index");
        return this.zzc.get(i + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.recaptcha.internal.zzpt, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override // com.google.android.recaptcha.internal.zzpq
    public final Object[] zzb() {
        return this.zzc.zzb();
    }

    @Override // com.google.android.recaptcha.internal.zzpq
    public final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.recaptcha.internal.zzpq
    public final int zzd() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override // com.google.android.recaptcha.internal.zzpt
    /* JADX INFO: renamed from: zzg */
    public final zzpt subList(int i, int i2) {
        zzoq.zzg(i, i2, this.zzb);
        int i3 = this.zza;
        return this.zzc.subList(i + i3, i2 + i3);
    }
}
