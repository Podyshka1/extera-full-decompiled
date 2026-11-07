package com.google.android.recaptcha.internal;

import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzlw extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzlx zzb;
    final /* synthetic */ int zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzlw(zzlx zzlxVar, int i, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzlxVar;
        this.zzc = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzlw(this.zzb, this.zzc, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzlw) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            if (this.zza != 0) {
                ResultKt.throwOnFailure(obj);
            } else {
                ResultKt.throwOnFailure(obj);
                zzlx zzlxVar = this.zzb;
                List listZzc = zzlxVar.zza.zzc();
                if (listZzc.size() >= this.zzc) {
                    zzlxVar.zza.zzd(listZzc);
                    this.zza = 1;
                    if (zzlxVar.zzh(listZzc, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return Unit.INSTANCE;
    }
}
