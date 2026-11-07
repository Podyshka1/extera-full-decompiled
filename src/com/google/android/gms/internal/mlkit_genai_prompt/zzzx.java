package com.google.android.gms.internal.mlkit_genai_prompt;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
final class zzzx extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzzy zzb;
    final /* synthetic */ CallbackToFutureAdapter.Completer zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzzx(zzzy zzzyVar, CallbackToFutureAdapter.Completer completer, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzzyVar;
        this.zzc = completer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzzx(this.zzb, this.zzc, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzzx) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            if (this.zza != 0) {
                ResultKt.throwOnFailure(obj);
            } else {
                ResultKt.throwOnFailure(obj);
                zzzy zzzyVar = this.zzb;
                this.zza = 1;
                if (zzzyVar.warmup(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            this.zzc.set(null);
        } catch (Exception e) {
            this.zzc.setException(e);
        }
        return Unit.INSTANCE;
    }
}
