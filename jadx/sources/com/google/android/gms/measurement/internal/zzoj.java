package com.google.android.gms.measurement.internal;

import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzoj extends zzay {
    final /* synthetic */ zzok zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzoj(zzok zzokVar, zzjg zzjgVar) {
        super(zzjgVar);
        Objects.requireNonNull(zzokVar);
        this.zza = zzokVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzay
    public final void zza() {
        zzok zzokVar = this.zza;
        zzokVar.zzd();
        zzokVar.zzu.zzaV().zzk().zza("Starting upload from DelayedRunnable");
        zzokVar.zzg.zzM();
    }
}
