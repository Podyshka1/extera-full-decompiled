package com.google.android.recaptcha.internal;

import kotlin.coroutines.Continuation;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes5.dex */
public final class zzlf implements zzkx {
    private final zzmt zza;
    private final zzhq zzb;
    private final zzon zzc;
    private final zzhh zzd;
    private Deferred zze;
    private final zzhu zzf;

    public zzlf(zzmt zzmtVar, zzhq zzhqVar, zzon zzonVar, zzhu zzhuVar, zzhh zzhhVar) {
        this.zza = zzmtVar;
        this.zzb = zzhqVar;
        this.zzc = zzonVar;
        this.zzf = zzhuVar;
        this.zzd = zzhhVar;
    }

    @Override // com.google.android.recaptcha.internal.zzkx
    public final Object zza(zzamf zzamfVar, long j, Continuation continuation) {
        return new zzmb(22, new zzla(this, zzamfVar, j, null), null);
    }
}
