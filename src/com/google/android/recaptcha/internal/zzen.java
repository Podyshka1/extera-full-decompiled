package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzen extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzakg zzb;
    final /* synthetic */ zzeo zzc;
    private /* synthetic */ Object zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzen(zzakg zzakgVar, zzeo zzeoVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzakgVar;
        this.zzc = zzeoVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzen zzenVar = new zzen(this.zzb, this.zzc, continuation);
        zzenVar.zzd = obj;
        return zzenVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzen) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i != 0) {
            return obj;
        }
        zzem zzemVar = new zzem(this.zzb, this.zzc, (zzmg) this.zzd, null);
        this.zza = 1;
        Object objCoroutineScope = CoroutineScopeKt.coroutineScope(zzemVar, this);
        return objCoroutineScope == coroutine_suspended ? coroutine_suspended : objCoroutineScope;
    }
}
