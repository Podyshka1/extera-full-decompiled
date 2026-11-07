package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzjo extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzjt zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ zziw zze;
    final /* synthetic */ zzmd zzf;
    private /* synthetic */ Object zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzjo(zzjt zzjtVar, String str, long j, zziw zziwVar, zzmd zzmdVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzjtVar;
        this.zzc = str;
        this.zzd = j;
        this.zze = zziwVar;
        this.zzf = zzmdVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzjo zzjoVar = new zzjo(this.zzb, this.zzc, this.zzd, this.zze, this.zzf, continuation);
        zzjoVar.zzg = obj;
        return zzjoVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzjo) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws RecaptchaException {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            if (this.zza != 0) {
                ResultKt.throwOnFailure(obj);
            } else {
                ResultKt.throwOnFailure(obj);
                zzmg zzmgVar = (zzmg) this.zzg;
                zzjn zzjnVar = new zzjn(this.zzb, zzmgVar, this.zzc, this.zzd, this.zze, this.zzf, null);
                this.zza = 1;
                obj = zzmgVar.zze(6, null, zzjnVar, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return (zzjj) obj;
        } catch (zzhg e) {
            throw e.zzd();
        } catch (Exception e2) {
            throw new zzhg(zzhf.zzb, zzhe.zza, e2.getMessage(), null, 8, null).zzd();
        }
    }
}
