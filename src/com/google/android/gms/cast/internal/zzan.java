package com.google.android.gms.cast.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzan implements zzat {
    final /* synthetic */ zzat zza;
    final /* synthetic */ zzar zzb;

    public zzan(zzar zzarVar, zzat zzatVar) {
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
        zzat zzatVar = this.zza;
        if (zzatVar != null) {
            if (i == 2001) {
                zzar zzarVar = this.zzb;
                zzarVar.zza.m294w("Possibility of local queue out of sync with receiver queue. Refetching sequence number. Current Local Sequence Number = %d", Integer.valueOf(zzarVar.zzQ()));
                zzarVar.zzP().zzm();
                i = 2001;
            }
            zzatVar.zzb(str, j, i, obj, j2, j3);
        }
    }
}
