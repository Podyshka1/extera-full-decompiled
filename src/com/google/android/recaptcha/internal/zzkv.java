package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzkv extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzkw zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ zzala zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzkv(zzkw zzkwVar, long j, zzala zzalaVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzkwVar;
        this.zzc = j;
        this.zzd = zzalaVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzkv zzkvVar = new zzkv(this.zzb, this.zzc, this.zzd, continuation);
        zzkvVar.zze = obj;
        return zzkvVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzkv) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i != 0) {
            return obj;
        }
        zzlp zzlpVar = (zzlp) this.zze;
        zzkw zzkwVar = this.zzb;
        CoroutineContext coroutineContext = zzkwVar.zzd.zzc().getCoroutineContext();
        zzku zzkuVar = new zzku(this.zzc, zzkwVar, zzlpVar, this.zzd, null);
        this.zza = 1;
        Object objWithContext = BuildersKt.withContext(coroutineContext, zzkuVar, this);
        return objWithContext == coroutine_suspended ? coroutine_suspended : objWithContext;
    }
}
