package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzmo implements zzmv {
    private final zzmx zza;

    public zzmo(zzmx zzmxVar) {
        this.zza = zzmxVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.google.android.recaptcha.internal.zzmv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zza(String str, zzalk zzalkVar, Continuation continuation) throws zzhg {
        zzmn zzmnVar;
        if (continuation instanceof zzmn) {
            zzmnVar = (zzmn) continuation;
            int i = zzmnVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzmnVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzmnVar = new zzmn(this, continuation);
            }
        }
        Object objZza = zzmnVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzmnVar.zzc;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objZza);
                zzmx zzmxVar = this.zza;
                byte[] bArrZzw = zzalkVar.zzw();
                zzmnVar.zzc = 1;
                objZza = zzmxVar.zza(str, bArrZzw, zzmnVar);
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
            return ((zznb) objZza).zzd(zzalm.zzd());
        } catch (zzhg e) {
            throw e;
        } catch (Exception e2) {
            throw new zzhg(zzhf.zzc, zzhe.zzk, e2.getMessage(), null, 8, null);
        }
    }
}
