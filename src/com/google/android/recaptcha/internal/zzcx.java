package com.google.android.recaptcha.internal;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes5.dex */
public final class zzcx implements zzdp {
    private final zzct zza;

    public zzcx(zzct zzctVar) {
        this.zza = zzctVar;
    }

    @Override // com.google.android.recaptcha.internal.zzdp
    public final Object zza(long j, zzakg zzakgVar, Continuation continuation) {
        return new zzmb(30, new zzcv(this, j, zzakgVar, null), null);
    }

    @Override // com.google.android.recaptcha.internal.zzdp
    public final Object zzb(String str, String str2, zzaka zzakaVar, long j, Continuation continuation) {
        return new zzmb(31, new zzcu(this, str, zzakaVar, j, null), null);
    }

    @Override // com.google.android.recaptcha.internal.zzdp
    public final Object zzc(String str, String str2, zzaka zzakaVar, Continuation continuation) {
        return new zzmc(new zzcw(null));
    }
}
