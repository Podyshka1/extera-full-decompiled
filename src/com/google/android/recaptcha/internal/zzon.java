package com.google.android.recaptcha.internal;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes5.dex */
public final class zzon {
    private final zzni zza;
    private final zzng zzb;
    private final zznm zzc;

    public zzon(zzni zzniVar, zzng zzngVar, zznm zznmVar) {
        this.zza = zzniVar;
        this.zzb = zzngVar;
        this.zzc = zznmVar;
    }

    public final zzni zza() {
        return this.zza;
    }

    public final zzng zzb() {
        return this.zzb;
    }

    public final zznm zzc() {
        return this.zzc;
    }

    public final Object zzd(zzakg zzakgVar, Continuation continuation) {
        return new zzmc(new zzok(this, zzakgVar, null));
    }

    public final Object zze(zzaer zzaerVar, zzaer zzaerVar2, String str, Continuation continuation) {
        return new zzmc(new zzol(str, zzaerVar2, zzaerVar, this, null));
    }

    public final Object zzf(Continuation continuation) {
        return new zzmc(new zzoi(this, null));
    }

    public final Object zzg(Continuation continuation) {
        return new zzmc(new zzog(this, null));
    }

    public final Object zzh(Continuation continuation) {
        return new zzmc(new zzof(this, null));
    }
}
