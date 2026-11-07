package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzlv extends SuspendLambda implements Function2 {
    final /* synthetic */ zzlx zza;
    final /* synthetic */ zzamk zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzlv(zzlx zzlxVar, zzamk zzamkVar, Continuation continuation) {
        super(2, continuation);
        this.zza = zzlxVar;
        this.zzb = zzamkVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzlv(this.zza, this.zzb, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzlv) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        try {
            zzlx zzlxVar = this.zza;
            zzlxVar.zza.zzb(this.zzb);
            zzlxVar.zzg(20);
        } catch (Exception unused) {
        }
        return Unit.INSTANCE;
    }
}
