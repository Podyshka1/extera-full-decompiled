package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzpa implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ Bundle zzc;
    final /* synthetic */ zzpb zzd;

    zzpa(zzpb zzpbVar, String str, String str2, Bundle bundle) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = bundle;
        Objects.requireNonNull(zzpbVar);
        this.zzd = zzpbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpg zzpgVar = this.zzd.zza;
        zzpp zzppVarZzt = zzpgVar.zzt();
        long jCurrentTimeMillis = zzpgVar.zzaZ().currentTimeMillis();
        String str = this.zza;
        zzpgVar.zzD((zzbg) Preconditions.checkNotNull(zzppVarZzt.zzac(str, this.zzb, this.zzc, "auto", jCurrentTimeMillis, false, true)), str);
    }
}
