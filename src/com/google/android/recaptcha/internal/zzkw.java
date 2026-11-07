package com.google.android.recaptcha.internal;

import android.app.Application;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes5.dex */
public final class zzkw implements zzkp {
    private final zzhq zza;
    private final zzmw zzb;
    private final zzhh zzc;
    private final zzhu zzd;

    public zzkw(Application application, zzhq zzhqVar, zzmw zzmwVar, zzhh zzhhVar, zzhu zzhuVar) {
        this.zza = zzhqVar;
        this.zzb = zzmwVar;
        this.zzc = zzhhVar;
        this.zzd = zzhuVar;
    }

    public static final /* synthetic */ zzhg zzb(zzkw zzkwVar, Exception exc) {
        return exc instanceof TimeoutCancellationException ? zzkwVar.zzc.zza(exc, new zzhg(zzhf.zzc, zzhe.zzb, exc.getMessage(), null, 8, null)) : exc instanceof zzhg ? zzkwVar.zzc.zza(exc, (zzhg) exc) : zzkwVar.zzc.zza(exc, new zzhg(zzhf.zzc, zzhe.zzs, exc.getMessage(), null, 8, null));
    }

    @Override // com.google.android.recaptcha.internal.zzkp
    public final Object zza(String str, zzakg zzakgVar, zzaku zzakuVar, String str2, long j, Continuation continuation) {
        return new zzmc(new zzks(str, zzakuVar, zzakgVar, null, this, j, null));
    }
}
