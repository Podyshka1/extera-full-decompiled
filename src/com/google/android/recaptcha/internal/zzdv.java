package com.google.android.recaptcha.internal;

import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdv {
    private final zzmu zza;
    private final zzhh zzb;
    private final zzhu zzc;

    public zzdv(zzmu zzmuVar, zzhh zzhhVar, zzhu zzhuVar) {
        this.zza = zzmuVar;
        this.zzb = zzhhVar;
        this.zzc = zzhuVar;
    }

    public static final /* synthetic */ zzhg zza(zzdv zzdvVar, Exception exc) {
        return exc instanceof TimeoutCancellationException ? zzdvVar.zzb.zza(exc, new zzhg(zzhf.zzc, zzhe.zzb, exc.getMessage(), null, 8, null)) : exc instanceof zzhg ? zzdvVar.zzb.zza(exc, (zzhg) exc) : zzdvVar.zzb.zza(exc, new zzhg(zzhf.zzc, zzhe.zzk, exc.getMessage(), null, 8, null));
    }
}
