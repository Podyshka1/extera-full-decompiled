package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.common.util.concurrent.ListenableFuture;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.guava.ListenableFutureKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzwi extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ ListenableFuture zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzwi(ListenableFuture listenableFuture, Continuation continuation) {
        super(2, continuation);
        this.zzb = listenableFuture;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzwi(this.zzb, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzwi) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i != 0) {
            return obj;
        }
        ListenableFuture listenableFuture = this.zzb;
        this.zza = 1;
        Object objAwait = ListenableFutureKt.await(listenableFuture, this);
        return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
    }
}
