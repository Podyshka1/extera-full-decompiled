package com.google.mlkit.genai.prompt.java;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.mlkit.genai.prompt.Caches;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzl extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ CallbackToFutureAdapter.Completer zzc;
    final /* synthetic */ zzm zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzl(CallbackToFutureAdapter.Completer completer, zzm zzmVar, Continuation continuation) {
        super(2, continuation);
        this.zzc = completer;
        this.zzd = zzmVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzl(this.zzc, this.zzd, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzl) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CallbackToFutureAdapter.Completer completer;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            if (this.zzb != 0) {
                completer = (CallbackToFutureAdapter.Completer) this.zza;
                ResultKt.throwOnFailure(obj);
            } else {
                ResultKt.throwOnFailure(obj);
                CallbackToFutureAdapter.Completer completer2 = this.zzc;
                Caches caches = this.zzd.zzb;
                this.zza = completer2;
                this.zzb = 1;
                Object list = caches.list(this);
                if (list == coroutine_suspended) {
                    return coroutine_suspended;
                }
                completer = completer2;
                obj = list;
            }
            completer.set(obj);
        } catch (Exception e) {
            this.zzc.setException(e);
        }
        return Unit.INSTANCE;
    }
}
