package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.internal.Preconditions;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzeb extends zzeq {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ boolean zzc;
    final /* synthetic */ zzco zzd;
    final /* synthetic */ zzfb zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzeb(zzfb zzfbVar, String str, String str2, boolean z, zzco zzcoVar) {
        super(zzfbVar, true);
        this.zza = str;
        this.zzb = str2;
        this.zzc = z;
        this.zzd = zzcoVar;
        Objects.requireNonNull(zzfbVar);
        this.zze = zzfbVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzeq
    final void zza() {
        ((zzcr) Preconditions.checkNotNull(this.zze.zzQ())).getUserProperties(this.zza, this.zzb, this.zzc, this.zzd);
    }

    @Override // com.google.android.gms.internal.measurement.zzeq
    protected final void zzb() {
        this.zzd.zzb(null);
    }
}
