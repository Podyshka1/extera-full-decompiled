package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaAction;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzau extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzaw zzb;
    final /* synthetic */ RecaptchaAction zzc;
    final /* synthetic */ long zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzau(zzaw zzawVar, RecaptchaAction recaptchaAction, long j, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzawVar;
        this.zzc = recaptchaAction;
        this.zzd = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzau(this.zzb, this.zzc, this.zzd, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzau) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objZzk;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i != 0) {
            objZzk = ((Result) obj).m3611unboximpl();
        } else {
            zzaw zzawVar = this.zzb;
            RecaptchaAction recaptchaAction = this.zzc;
            long j = this.zzd;
            this.zza = 1;
            objZzk = zzawVar.zzk(recaptchaAction, j, this);
            if (objZzk == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        ResultKt.throwOnFailure(objZzk);
        return objZzk;
    }
}
