package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzjp extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzjt zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ zziw zze;
    private /* synthetic */ Object zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzjp(zzjt zzjtVar, String str, long j, zziw zziwVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzjtVar;
        this.zzc = str;
        this.zzd = j;
        this.zze = zziwVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzjp zzjpVar = new zzjp(this.zzb, this.zzc, this.zzd, this.zze, continuation);
        zzjpVar.zzf = obj;
        return zzjpVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzjp) create((zzmd) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i != 0) {
            return obj;
        }
        zzmd zzmdVar = (zzmd) this.zzf;
        zzjo zzjoVar = new zzjo(this.zzb, this.zzc, this.zzd, this.zze, zzmdVar, null);
        this.zza = 1;
        Object objZzc = zzmdVar.zzc(zzjoVar, this);
        return objZzc == coroutine_suspended ? coroutine_suspended : objZzc;
    }
}
