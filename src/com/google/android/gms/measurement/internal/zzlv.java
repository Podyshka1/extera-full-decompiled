package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzlv implements Runnable {
    final /* synthetic */ Bundle zza;
    final /* synthetic */ zzlu zzb;
    final /* synthetic */ zzlu zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ zzmb zze;

    zzlv(zzmb zzmbVar, Bundle bundle, zzlu zzluVar, zzlu zzluVar2, long j) {
        this.zza = bundle;
        this.zzb = zzluVar;
        this.zzc = zzluVar2;
        this.zzd = j;
        Objects.requireNonNull(zzmbVar);
        this.zze = zzmbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zzt(this.zza, this.zzb, this.zzc, this.zzd);
    }
}
