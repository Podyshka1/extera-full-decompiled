package com.google.android.gms.internal.cast;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzeb implements zzaw {
    final /* synthetic */ zzee zza;

    public /* synthetic */ zzeb(zzee zzeeVar, byte[] bArr) {
        Objects.requireNonNull(zzeeVar);
        this.zza = zzeeVar;
    }

    @Override // com.google.android.gms.internal.cast.zzaw
    public final void zza() {
        zzee zzeeVar = this.zza;
        zzeeVar.zze();
        zzeeVar.zzd();
    }

    @Override // com.google.android.gms.internal.cast.zzaw
    public final void zzb() {
        zzee zzeeVar = this.zza;
        zzeeVar.zze();
        zzeeVar.zzc();
    }
}
