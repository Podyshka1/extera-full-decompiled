package com.google.android.recaptcha.internal;

import kotlin.coroutines.Continuation;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdo implements zzdp {
    private final zzcx zza;
    private final zzct zzb;
    private final zzng zzc;
    private final zzdv zzd;
    private final Mutex zze = MutexKt.Mutex$default(false, 1, null);
    private final zzhu zzf;

    public zzdo(zzcx zzcxVar, zzct zzctVar, zzng zzngVar, zzdv zzdvVar, zzhu zzhuVar) {
        this.zza = zzcxVar;
        this.zzb = zzctVar;
        this.zzc = zzngVar;
        this.zzd = zzdvVar;
        this.zzf = zzhuVar;
    }

    public static final /* synthetic */ Object zzf(zzdo zzdoVar, String str, zzaka zzakaVar, Continuation continuation) {
        return new zzmb(67, new zzda(zzdoVar, str, zzakaVar, null), null);
    }

    public static final /* synthetic */ Object zzg(zzdo zzdoVar, String str, String str2, zzcz zzczVar, Continuation continuation) {
        return new zzmc(new zzdn(zzdoVar, str, zzczVar, str2, null));
    }

    @Override // com.google.android.recaptcha.internal.zzdp
    public final Object zza(long j, zzakg zzakgVar, Continuation continuation) {
        return new zzmb(65, new zzdj(this, j, zzakgVar, null), null);
    }

    @Override // com.google.android.recaptcha.internal.zzdp
    public final Object zzb(String str, String str2, zzaka zzakaVar, long j, Continuation continuation) {
        return new zzmb(66, new zzdd(this, str, str2, zzakaVar, j, null), null);
    }

    @Override // com.google.android.recaptcha.internal.zzdp
    public final Object zzc(String str, String str2, zzaka zzakaVar, Continuation continuation) {
        return new zzmc(new zzdl(this, str, str2, null));
    }
}
