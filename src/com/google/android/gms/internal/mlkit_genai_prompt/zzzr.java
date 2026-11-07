package com.google.android.gms.internal.mlkit_genai_prompt;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzzr extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzzy zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzzr(zzzy zzzyVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzzyVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzzr(this.zzb, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzzr) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i != 0) {
            return obj;
        }
        this.zza = 1;
        Integer numBoxInt = Boxing.boxInt(8192);
        return numBoxInt == coroutine_suspended ? coroutine_suspended : numBoxInt;
    }
}
