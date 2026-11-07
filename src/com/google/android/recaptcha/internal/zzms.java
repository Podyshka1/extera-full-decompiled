package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzms implements zzmw {
    private final zzmx zza;

    public zzms(zzmx zzmxVar) {
        this.zza = zzmxVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.google.android.recaptcha.internal.zzmw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zza(zzhq zzhqVar, zzala zzalaVar, Continuation continuation) throws zzhg {
        zzmr zzmrVar;
        if (continuation instanceof zzmr) {
            zzmrVar = (zzmr) continuation;
            int i = zzmrVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzmrVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzmrVar = new zzmr(this, continuation);
            }
        }
        Object objZza = zzmrVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzmrVar.zzc;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objZza);
                zzmx zzmxVar = this.zza;
                String strZzd = zzhqVar.zzd();
                byte[] bArrZzw = zzalaVar.zzw();
                zzmrVar.zzc = 1;
                objZza = zzmxVar.zza(strZzd, bArrZzw, zzmrVar);
                if (objZza == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(objZza);
            }
            return ((zznb) objZza).zzd(zzalc.zze());
        } catch (zzhg e) {
            throw e;
        } catch (Exception e2) {
            throw new zzhg(zzhf.zzc, zzhe.zzk, e2.getMessage(), null, 8, null);
        }
    }
}
