package com.google.android.gms.cast.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzam implements zzat {
    final /* synthetic */ zzat zza;
    final /* synthetic */ zzar zzb;

    public zzam(zzar zzarVar, zzat zzatVar) {
        this.zza = zzatVar;
        Objects.requireNonNull(zzarVar);
        this.zzb = zzarVar;
    }

    @Override // com.google.android.gms.cast.internal.zzat
    public final void zza(String str, long j, long j2, long j3) {
        zzat zzatVar = this.zza;
        if (zzatVar != null) {
            zzatVar.zza(str, j, j2, j3);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzat
    public final void zzb(String str, long j, int i, Object obj, long j2, long j3) {
        this.zzb.zzO(null);
        zzat zzatVar = this.zza;
        if (zzatVar != null) {
            zzatVar.zzb(str, j, i, obj, j2, j3);
        }
    }
}
