package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.text.Charsets;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzmq {
    private final String zza = "https://www.gstatic.com/recaptcha/verify_key/orcas/prod/android/verify_key.txt";
    private final zzmx zzb;

    public zzmq(String str, zzmx zzmxVar) {
        this.zzb = zzmxVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zza(Continuation continuation) throws zzhg {
        zzmp zzmpVar;
        if (continuation instanceof zzmp) {
            zzmpVar = (zzmp) continuation;
            int i = zzmpVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzmpVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzmpVar = new zzmp(this, continuation);
            }
        }
        zzmp zzmpVar2 = zzmpVar;
        Object objZzb = zzmpVar2.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzmpVar2.zzc;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objZzb);
                zzmx zzmxVar = this.zzb;
                String str = this.zza;
                zzmpVar2.zzc = 1;
                objZzb = zzmxVar.zzb("https://www.gstatic.com/recaptcha/verify_key/orcas/prod/android/verify_key.txt", null, MapsKt.emptyMap(), zzmpVar2);
                if (objZzb == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(objZzb);
            }
            zznb zznbVar = (zznb) objZzb;
            zznbVar.zzb();
            return new String(zznbVar.zza(), Charsets.UTF_8);
        } catch (zzhg e) {
            throw e;
        } catch (Exception e2) {
            throw new zzhg(zzhf.zzc, zzhe.zzap, e2.getMessage(), null, 8, null);
        }
    }
}
