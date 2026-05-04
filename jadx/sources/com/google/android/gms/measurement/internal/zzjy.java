package com.google.android.gms.measurement.internal;

import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzjy implements Runnable {
    final /* synthetic */ boolean zza;
    final /* synthetic */ zzlj zzb;

    zzjy(zzlj zzljVar, boolean z) {
        this.zza = z;
        Objects.requireNonNull(zzljVar);
        this.zzb = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlj zzljVar = this.zzb;
        zzic zzicVar = zzljVar.zzu;
        boolean zZzB = zzicVar.zzB();
        boolean zZzA = zzicVar.zzA();
        boolean z = this.zza;
        zzicVar.zzz(z);
        if (zZzA == z) {
            zzicVar.zzaV().zzk().zzb("Default data collection state already set to", Boolean.valueOf(z));
        }
        if (zzicVar.zzB() == zZzB || zzicVar.zzB() != zzicVar.zzA()) {
            zzicVar.zzaV().zzh().zzc("Default data collection is different than actual status", Boolean.valueOf(z), Boolean.valueOf(zZzB));
        }
        zzljVar.zzal();
    }
}
