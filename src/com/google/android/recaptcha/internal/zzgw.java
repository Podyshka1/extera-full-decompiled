package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
final class zzgw extends SuspendLambda implements Function1 {
    int zza;
    final /* synthetic */ zzlp zzb;
    final /* synthetic */ zzgy zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgw(zzlp zzlpVar, zzgy zzgyVar, Continuation continuation) {
        super(1, continuation);
        this.zzb = zzlpVar;
        this.zzc = zzgyVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new zzgw(this.zzb, this.zzc, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return ((zzgw) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i != 0) {
            return obj;
        }
        zzlp zzlpVar = this.zzb;
        zzgv zzgvVar = new zzgv(this.zzc, null);
        this.zza = 1;
        Object objZzd = zzlpVar.zzd(54, null, zzgvVar, this);
        return objZzd == coroutine_suspended ? coroutine_suspended : objZzd;
    }
}
