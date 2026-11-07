package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzmk implements zzmu {
    private final zzhq zza;
    private final zzmx zzb;

    public zzmk(zzhq zzhqVar, zzmx zzmxVar) {
        this.zza = zzhqVar;
        this.zzb = zzmxVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.google.android.recaptcha.internal.zzmu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zza(zzalg zzalgVar, Continuation continuation) throws zzhg {
        zzmj zzmjVar;
        if (continuation instanceof zzmj) {
            zzmjVar = (zzmj) continuation;
            int i = zzmjVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzmjVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzmjVar = new zzmj(this, continuation);
            }
        }
        Object objZza = zzmjVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzmjVar.zzc;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objZza);
                zzmx zzmxVar = this.zzb;
                String strZze = this.zza.zze();
                byte[] bArrZzw = zzalgVar.zzw();
                zzmjVar.zzc = 1;
                objZza = zzmxVar.zza(strZze, bArrZzw, zzmjVar);
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
            return ((zznb) objZza).zzd(zzali.zzc());
        } catch (zzhg e) {
            throw e;
        } catch (Exception e2) {
            throw new zzhg(zzhf.zzc, zzhe.zzk, e2.getMessage(), null, 8, null);
        }
    }
}
