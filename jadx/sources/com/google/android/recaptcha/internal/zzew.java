package com.google.android.recaptcha.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzew extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzez zzb;
    final /* synthetic */ zzoe zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzew(zzez zzezVar, zzoe zzoeVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzezVar;
        this.zzc = zzoeVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzew(this.zzb, this.zzc, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzew) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i == 0) {
            zzez zzezVar = this.zzb;
            zzezVar.zzi.zza(zzezVar.zzp.zza(zzne.INIT_NATIVE));
            zzcb.zza(zznz.zzj(zzfy.zzh().zzj(this.zzc.zzJ())));
            this.zzb.zzn.zzd();
            this.zzb.zzn.zze();
            zzez.zzl(this.zzb, this.zzc);
            Boxing.boxInt(this.zzb.zzk().hashCode());
            CompletableDeferred completableDeferredZzk = this.zzb.zzk();
            this.zza = 1;
            if (completableDeferredZzk.await(this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Result.m3603boximpl(Result.m3604constructorimpl(Unit.INSTANCE));
    }
}
