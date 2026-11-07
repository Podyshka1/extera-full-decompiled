package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzmm {
    private final zzhq zza;
    private final zzmx zzb;

    public zzmm(zzhq zzhqVar, zzmx zzmxVar) {
        this.zza = zzhqVar;
        this.zzb = zzmxVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zza(zzajl zzajlVar, Continuation continuation) {
        zzml zzmlVar;
        if (continuation instanceof zzml) {
            zzmlVar = (zzml) continuation;
            int i = zzmlVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzmlVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzmlVar = new zzml(this, continuation);
            }
        }
        Object objZza = zzmlVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzmlVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objZza);
            zzmx zzmxVar = this.zzb;
            String strZzc = this.zza.zzc();
            byte[] bArrZzw = zzajlVar.zzw();
            zzmlVar.zzc = 1;
            objZza = zzmxVar.zza(strZzc, bArrZzw, zzmlVar);
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
        return Boxing.boxBoolean(((zznb) objZza).zzc() == 200);
    }
}
