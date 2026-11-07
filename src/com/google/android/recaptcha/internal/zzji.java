package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaAction;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzji extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzjj zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ RecaptchaAction zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzji(zzjj zzjjVar, long j, RecaptchaAction recaptchaAction, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzjjVar;
        this.zzc = j;
        this.zzd = recaptchaAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzji zzjiVar = new zzji(this.zzb, this.zzc, this.zzd, continuation);
        zzjiVar.zze = obj;
        return zzjiVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzji) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0097 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0098 A[Catch: Exception -> 0x00a9, zzhg -> 0x00bc, TryCatch #2 {zzhg -> 0x00bc, Exception -> 0x00a9, blocks: (B:5:0x000e, B:24:0x008f, B:27:0x0098, B:28:0x00a6, B:8:0x0019, B:21:0x007d, B:11:0x0028, B:13:0x003a, B:17:0x0051, B:19:0x0063, B:30:0x00a8), top: B:36:0x000a }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws zzhg {
        zzlp zzlpVar;
        Object objZzc;
        Object objZza;
        String str;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzlpVar = (zzlp) this.zze;
                long j = this.zzc;
                RecaptchaAction recaptchaAction = this.zzd;
                zzhg zzhgVar = !zzja.zza().matches(recaptchaAction.getAction()) ? new zzhg(zzhf.zzg, zzhe.zzh, null, null, 12, null) : null;
                if (j < 5000) {
                    zzhgVar = new zzhg(zzhf.zzb, zzhe.zzm, null, null, 12, null);
                }
                if (zzhgVar != null) {
                    throw zzhgVar;
                }
                zzkn zzknVarZza = this.zzb.zza();
                String strZzb = zzlpVar.zza().zzb();
                this.zze = zzlpVar;
                this.zza = 1;
                objZzc = zzknVarZza.zzc(strZzb, recaptchaAction, j, null, this);
                if (objZzc != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                ResultKt.throwOnFailure(obj);
                objZza = obj;
                str = (String) objZza;
                if (str.length() == 0) {
                    return str;
                }
                throw new zzhg(zzhf.zzb, zzhe.zzam, null, null, 12, null);
            }
            zzlp zzlpVar2 = (zzlp) this.zze;
            ResultKt.throwOnFailure(obj);
            zzlpVar = zzlpVar2;
            objZzc = obj;
            this.zze = null;
            this.zza = 2;
            objZza = ((zzmc) objZzc).zza(zzlpVar.zza(), this);
            if (objZza == coroutine_suspended) {
                return coroutine_suspended;
            }
            str = (String) objZza;
            if (str.length() == 0) {
            }
        } catch (zzhg e) {
            throw e;
        } catch (Exception e2) {
            throw new zzhg(zzhf.zzb, zzhe.zzq, e2.getMessage(), null, 8, null);
        }
    }
}
