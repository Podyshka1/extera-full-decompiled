package com.google.android.gms.cast.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzt implements Runnable {
    final /* synthetic */ zzw zza;
    final /* synthetic */ zza zzb;

    zzt(zzv zzvVar, zzw zzwVar, zza zzaVar) {
        this.zza = zzwVar;
        this.zzb = zzaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzw.zzH(this.zza, this.zzb);
    }
}
