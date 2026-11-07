package com.google.android.recaptcha.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzgj extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzmg zzb;
    final /* synthetic */ zzgo zzc;
    final /* synthetic */ zzakg zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgj(zzmg zzmgVar, zzgo zzgoVar, zzakg zzakgVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzmgVar;
        this.zzc = zzgoVar;
        this.zzd = zzakgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzgj(this.zzb, this.zzc, this.zzd, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzgj) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objM3608constructorimpl;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            if (this.zza != 0) {
                ResultKt.throwOnFailure(obj);
            } else {
                ResultKt.throwOnFailure(obj);
                zzmg zzmgVar = this.zzb;
                zzgi zzgiVar = new zzgi(this.zzc, this.zzd, zzmgVar, null);
                this.zza = 1;
                obj = zzmgVar.zze(76, null, zzgiVar, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            objM3608constructorimpl = ((Result) obj).getValue();
        } catch (Exception e) {
            Result.Companion companion = Result.INSTANCE;
            objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(e));
        }
        return Result.m3607boximpl(objM3608constructorimpl);
    }
}
