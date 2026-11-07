package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzmi implements zzmt {
    private final zzmx zza;

    public zzmi(zzmx zzmxVar) {
        this.zza = zzmxVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.google.android.recaptcha.internal.zzmt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zza(String str, zzamf zzamfVar, Continuation continuation) throws zzhg {
        zzmh zzmhVar;
        zzhg zzhgVar;
        if (continuation instanceof zzmh) {
            zzmhVar = (zzmh) continuation;
            int i = zzmhVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzmhVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzmhVar = new zzmh(this, continuation);
            }
        }
        Object objZza = zzmhVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzmhVar.zzc;
        try {
            try {
                if (i2 == 0) {
                    ResultKt.throwOnFailure(objZza);
                    zzmx zzmxVar = this.zza;
                    byte[] bArrZzw = zzamfVar.zzw();
                    zzmhVar.zzc = 1;
                    objZza = zzmxVar.zza(str, bArrZzw, zzmhVar);
                    if (objZza == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i2 != 1) {
                        Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(objZza);
                }
                zznb zznbVar = (zznb) objZza;
                try {
                    return (zzakg) zznbVar.zzd(zzakg.zzn());
                } catch (zzhg e) {
                    if (!Intrinsics.areEqual(e.zzb(), zzhe.zzK)) {
                        throw e;
                    }
                    try {
                        zzhg zzhgVar2 = (zzhg) zzhg.zzf.get(zzamh.zzb(zznbVar.zza()).zza());
                        if (zzhgVar2 != null) {
                            throw zzhgVar2;
                        }
                        zzhgVar = new zzhg(zzhf.zza, zzhe.zzA, null, null, 12, null);
                    } catch (Exception e2) {
                        zzhgVar = new zzhg(zzhf.zzc, zzhe.zzl, e2.getMessage(), null, 8, null);
                    }
                    throw zzhgVar;
                }
            } catch (Exception e3) {
                throw new zzhg(zzhf.zzc, zzhe.zzk, e3.getMessage(), null, 8, null);
            }
        } catch (zzhg e4) {
            throw e4;
        }
    }
}
