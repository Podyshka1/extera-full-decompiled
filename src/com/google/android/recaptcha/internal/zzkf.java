package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaAction;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
final class zzkf extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzkh zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ RecaptchaAction zzd;
    final /* synthetic */ long zze;
    private /* synthetic */ Object zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzkf(zzkh zzkhVar, String str, RecaptchaAction recaptchaAction, long j, String str2, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzkhVar;
        this.zzc = str;
        this.zzd = recaptchaAction;
        this.zze = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzkf zzkfVar = new zzkf(this.zzb, this.zzc, this.zzd, this.zze, null, continuation);
        zzkfVar.zzf = obj;
        return zzkfVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzkf) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws zzhg {
        zzmg zzmgVar;
        zzkf zzkfVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzmgVar = (zzmg) this.zzf;
                zzkh zzkhVar = this.zzb;
                if (!Intrinsics.areEqual(zzkhVar.zza, zzkm.zzb)) {
                    throw new zzhg(zzhf.zzb, zzhe.zzC, null, null, 12, null);
                }
                zziz zzizVar = zzkhVar.zzc;
                String str = this.zzc;
                String action = this.zzd.getAction();
                zzakg zzakgVar = zzkhVar.zzb;
                zzakg zzakgVar2 = zzakgVar == null ? null : zzakgVar;
                long j = this.zze;
                this.zzf = zzmgVar;
                this.zza = 1;
                zzkfVar = this;
                obj = zzizVar.zzb(str, action, zzakgVar2, j, null, zzkfVar);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                ResultKt.throwOnFailure(obj);
                return (String) obj;
            }
            zzmgVar = (zzmg) this.zzf;
            ResultKt.throwOnFailure(obj);
            zzkfVar = this;
            zzkfVar.zzf = null;
            zzkfVar.zza = 2;
            obj = ((zzmc) obj).zza(zzmgVar, zzkfVar);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            return (String) obj;
        } catch (zzhg e) {
            throw e;
        } catch (Exception e2) {
            throw new zzhg(zzhf.zzb, zzhe.zzN, e2.getMessage(), null, 8, null);
        }
    }
}
