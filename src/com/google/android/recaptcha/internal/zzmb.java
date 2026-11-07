package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.TimeoutCancellationException;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzmb {
    private final Function2 zza;
    private final Integer zzb;
    private final int zzc;

    public zzmb(int i, Function2 function2, Integer num) {
        this.zzc = i;
        this.zza = function2;
        this.zzb = num;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zza(zzmg zzmgVar, Continuation continuation) {
        zzma zzmaVar;
        Exception exc;
        zzlp zzlpVar;
        TimeoutCancellationException timeoutCancellationException;
        zzhg zzhgVar;
        if (continuation instanceof zzma) {
            zzmaVar = (zzma) continuation;
            int i = zzmaVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzmaVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzmaVar = new zzma(this, continuation);
            }
        }
        Object objInvoke = zzmaVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzmaVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objInvoke);
            zzlp zzlpVarZzf = zzmgVar.zzf(this.zzc, this.zzb);
            try {
                Function2 function2 = this.zza;
                zzmaVar.zzd = zzlpVarZzf;
                zzmaVar.zzc = 1;
                objInvoke = function2.invoke(zzlpVarZzf, zzmaVar);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
                zzlpVar = zzlpVarZzf;
            } catch (zzhg e) {
                zzhgVar = e;
                zzlpVar = zzlpVarZzf;
                zzlpVar.zzc(zzhgVar);
                throw zzhgVar;
            } catch (TimeoutCancellationException e2) {
                timeoutCancellationException = e2;
                zzlpVar = zzlpVarZzf;
                zzhg zzhgVar2 = new zzhg(zzhf.zzb, zzhe.zzb, timeoutCancellationException.getMessage(), null, 8, null);
                zzlpVar.zzc(zzhgVar2);
                throw zzhgVar2;
            } catch (Exception e3) {
                exc = e3;
                zzlpVar = zzlpVarZzf;
                zzhg zzhgVar3 = new zzhg(zzhf.zzb, zzhe.zza, exc.getMessage(), null, 8, null);
                zzlpVar.zzc(zzhgVar3);
                throw zzhgVar3;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            zzlpVar = zzmaVar.zzd;
            try {
                ResultKt.throwOnFailure(objInvoke);
            } catch (zzhg e4) {
                zzhgVar = e4;
                zzlpVar.zzc(zzhgVar);
                throw zzhgVar;
            } catch (TimeoutCancellationException e5) {
                timeoutCancellationException = e5;
                zzhg zzhgVar22 = new zzhg(zzhf.zzb, zzhe.zzb, timeoutCancellationException.getMessage(), null, 8, null);
                zzlpVar.zzc(zzhgVar22);
                throw zzhgVar22;
            } catch (Exception e6) {
                exc = e6;
                zzhg zzhgVar32 = new zzhg(zzhf.zzb, zzhe.zza, exc.getMessage(), null, 8, null);
                zzlpVar.zzc(zzhgVar32);
                throw zzhgVar32;
            }
        }
        zzlpVar.zzb();
        return objInvoke;
    }
}
