package com.google.android.recaptcha.internal;

import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes5.dex */
public interface zzev {
    int zza();

    boolean zzb();

    Object zzc(String str, zzaka zzakaVar, Continuation continuation);

    default Object zzd(Exception exc, Continuation continuation) {
        int i = 27;
        if (!(exc instanceof TimeoutCancellationException) && (!(exc instanceof zzhg) || !Intrinsics.areEqual(((zzhg) exc).zzb(), zzhe.zzb))) {
            i = 2;
        }
        int iZza = zza();
        zzalw zzalwVarZza = zzalx.zza();
        zzalwVarZza.zza(iZza);
        zzalwVarZza.zzb(13);
        zzalwVarZza.zzc(i);
        return zzew.zzb(this, (zzalx) zzalwVarZza.zzp());
    }

    default Object zzg(zzakk zzakkVar, Continuation continuation) {
        return zzme.zza(36, zza(), new zzet(this, zzakkVar, null), continuation);
    }

    default Object zzh(String str, zzaka zzakaVar, Continuation continuation) {
        return new zzmc(new zzes(this, str, zzakaVar, null));
    }

    default Object zzk(zzakk zzakkVar, Continuation continuation) {
        return new zzmc(new zzeu(null));
    }
}
