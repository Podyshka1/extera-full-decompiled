package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzcj extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzlp zzc;
    final /* synthetic */ zzcl zzd;
    final /* synthetic */ String zze;
    final /* synthetic */ zzaka zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcj(zzlp zzlpVar, zzcl zzclVar, String str, zzaka zzakaVar, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzlpVar;
        this.zzd = zzclVar;
        this.zze = str;
        this.zzf = zzakaVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzcj(this.zzc, this.zzd, this.zze, this.zzf, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzcj) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzlp zzlpVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzlpVar = this.zzc;
            zzcl zzclVar = this.zzd;
            String str = this.zze;
            zzaka zzakaVar = this.zzf;
            this.zza = zzlpVar;
            this.zzb = 1;
            obj = zzclVar.zzc(str, zzakaVar, this);
            if (obj != coroutine_suspended) {
            }
        }
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        zzlpVar = (zzlp) this.zza;
        ResultKt.throwOnFailure(obj);
        this.zza = null;
        this.zzb = 2;
        Object objZza = ((zzmc) obj).zza(zzlpVar.zza(), this);
        return objZza == coroutine_suspended ? coroutine_suspended : objZza;
    }
}
