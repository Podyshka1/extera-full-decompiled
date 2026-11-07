package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzgb extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzgo zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ zzakg zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgb(zzgo zzgoVar, String str, zzakg zzakgVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzgoVar;
        this.zzc = str;
        this.zzd = zzakgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzgb zzgbVar = new zzgb(this.zzb, this.zzc, this.zzd, continuation);
        zzgbVar.zze = obj;
        return zzgbVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzgb) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0055, code lost:
    
        if (r7 != r0) goto L13;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzalm zzalmVarZzd;
        zzmg zzmgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzmg zzmgVar2 = (zzmg) this.zze;
                zzgo zzgoVar = this.zzb;
                zzalj zzaljVarZza = zzalk.zza();
                zzaljVarZza.zza(zzgp.zzb());
                zzaljVarZza.zzb("18.9.2");
                zzaljVarZza.zzc(this.zzc);
                zzaljVarZza.zzd(this.zzd.zzb());
                zzga zzgaVar = new zzga(zzgoVar, (zzalk) zzaljVarZza.zzp(), null);
                this.zze = zzmgVar2;
                this.zza = 1;
                obj = zzmgVar2.zze(77, null, zzgaVar, this);
                i = zzmgVar2;
            } else {
                if (i != 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                zzmg zzmgVar3 = (zzmg) this.zze;
                ResultKt.throwOnFailure(obj);
                i = zzmgVar3;
            }
            zzalmVarZzd = (zzalm) obj;
            zzmgVar = i;
        } catch (Exception unused) {
            zzalmVarZzd = zzalm.zzd();
            zzmgVar = i;
        }
        if (!zzalmVarZzd.zza().zzr()) {
            return zzalmVarZzd;
        }
        zzfz zzfzVar = new zzfz(this.zzd, null);
        this.zze = null;
        this.zza = 2;
        Object objZze = zzmgVar.zze(86, null, zzfzVar, this);
        return objZze == coroutine_suspended ? coroutine_suspended : objZze;
    }
}
