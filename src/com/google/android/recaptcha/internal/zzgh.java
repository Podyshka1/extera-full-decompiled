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
final class zzgh extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzgo zzb;
    final /* synthetic */ zzalm zzc;
    private /* synthetic */ Object zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgh(zzgo zzgoVar, zzalm zzalmVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzgoVar;
        this.zzc = zzalmVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzgh zzghVar = new zzgh(this.zzb, this.zzc, continuation);
        zzghVar.zzd = obj;
        return zzghVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzgh) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i == 0) {
            zzmg zzmgVar = (zzmg) this.zzd;
            zzgo zzgoVar = this.zzb;
            CoroutineContext coroutineContext = zzgoVar.zzp.zzc().getCoroutineContext();
            zzgg zzggVar = new zzgg(zzmgVar, zzgoVar, this.zzc, null);
            this.zza = 1;
            if (BuildersKt.withContext(coroutineContext, zzggVar, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}
