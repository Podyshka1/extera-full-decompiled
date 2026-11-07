package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzfb extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzaka zzb;
    final /* synthetic */ zzfd zzc;
    private /* synthetic */ Object zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfb(zzaka zzakaVar, zzfd zzfdVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzakaVar;
        this.zzc = zzfdVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzfb zzfbVar = new zzfb(this.zzb, this.zzc, continuation);
        zzfbVar.zzd = obj;
        return zzfbVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzfb) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i != 0) {
            return obj;
        }
        zzfa zzfaVar = new zzfa(this.zzb, (zzmg) this.zzd, this.zzc, null);
        this.zza = 1;
        Object objCoroutineScope = CoroutineScopeKt.coroutineScope(zzfaVar, this);
        return objCoroutineScope == coroutine_suspended ? coroutine_suspended : objCoroutineScope;
    }
}
