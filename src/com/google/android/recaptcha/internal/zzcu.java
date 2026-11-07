package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzcu extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzcx zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ zzaka zzd;
    final /* synthetic */ long zze;
    private /* synthetic */ Object zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcu(zzcx zzcxVar, String str, zzaka zzakaVar, long j, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzcxVar;
        this.zzc = str;
        this.zzd = zzakaVar;
        this.zze = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzcu zzcuVar = new zzcu(this.zzb, this.zzc, this.zzd, this.zze, continuation);
        zzcuVar.zzf = obj;
        return zzcuVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzcu) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzlp zzlpVar;
        zzcu zzcuVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzlpVar = (zzlp) this.zzf;
            zzcx zzcxVar = this.zzb;
            String str = this.zzc;
            zzaka zzakaVar = this.zzd;
            long j = this.zze;
            zzct zzctVar = zzcxVar.zza;
            this.zzf = zzlpVar;
            this.zza = 1;
            zzcuVar = this;
            obj = zzctVar.zzc(str, zzakaVar, j, zzcuVar);
            if (obj != coroutine_suspended) {
            }
        }
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        zzlpVar = (zzlp) this.zzf;
        ResultKt.throwOnFailure(obj);
        zzcuVar = this;
        zzcuVar.zzf = null;
        zzcuVar.zza = 2;
        Object objZza = ((zzmc) obj).zza(zzlpVar.zza(), zzcuVar);
        return objZza == coroutine_suspended ? coroutine_suspended : objZza;
    }
}
