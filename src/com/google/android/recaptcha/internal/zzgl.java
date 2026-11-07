package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzgl extends SuspendLambda implements Function2 {
    final /* synthetic */ zzakg zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgl(zzakg zzakgVar, Continuation continuation) {
        super(2, continuation);
        this.zza = zzakgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzgl(this.zza, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzgl) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws zzhg {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        if (this.zza.zzh().zzc()) {
            return Unit.INSTANCE;
        }
        throw new zzhg(zzhf.zzb, zzhe.zzah, null, null, 12, null);
    }
}
