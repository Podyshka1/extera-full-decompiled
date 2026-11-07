package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaAction;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzjf extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzjj zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ RecaptchaAction zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzjf(zzjj zzjjVar, long j, RecaptchaAction recaptchaAction, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzjjVar;
        this.zzc = j;
        this.zzd = recaptchaAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzjf zzjfVar = new zzjf(this.zzb, this.zzc, this.zzd, continuation);
        zzjfVar.zze = obj;
        return zzjfVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzjf) create((zzmd) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i != 0) {
            return obj;
        }
        zzmd zzmdVar = (zzmd) this.zze;
        zzje zzjeVar = new zzje(this.zzb, this.zzc, this.zzd, null);
        this.zza = 1;
        Object objZzc = zzmdVar.zzc(zzjeVar, this);
        return objZzc == coroutine_suspended ? coroutine_suspended : objZzc;
    }
}
