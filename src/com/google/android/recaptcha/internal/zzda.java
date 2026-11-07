package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzda extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzdo zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ zzaka zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzda(zzdo zzdoVar, String str, zzaka zzakaVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzdoVar;
        this.zzc = str;
        this.zzd = zzakaVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzda zzdaVar = new zzda(this.zzb, this.zzc, this.zzd, continuation);
        zzdaVar.zze = obj;
        return zzdaVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzda) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzlp zzlpVar;
        zzda zzdaVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzlpVar = (zzlp) this.zze;
            zzdo zzdoVar = this.zzb;
            String str = this.zzc;
            zzaka zzakaVar = this.zzd;
            zzct zzctVar = zzdoVar.zzb;
            this.zze = zzlpVar;
            this.zza = 1;
            zzdaVar = this;
            obj = zzctVar.zzc(str, zzakaVar, 60000L, zzdaVar);
            if (obj != coroutine_suspended) {
            }
        }
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        zzlpVar = (zzlp) this.zze;
        ResultKt.throwOnFailure(obj);
        zzdaVar = this;
        zzdaVar.zze = null;
        zzdaVar.zza = 2;
        Object objZza = ((zzmc) obj).zza(zzlpVar.zza(), zzdaVar);
        return objZza == coroutine_suspended ? coroutine_suspended : objZza;
    }
}
