package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CompletableDeferred;

/* JADX INFO: loaded from: classes5.dex */
final class zzkb extends SuspendLambda implements Function1 {
    int zza;
    final /* synthetic */ zzmg zzb;
    final /* synthetic */ zzke zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ CompletableDeferred zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzkb(zzmg zzmgVar, zzke zzkeVar, long j, CompletableDeferred completableDeferred, Continuation continuation) {
        super(1, continuation);
        this.zzb = zzmgVar;
        this.zzc = zzkeVar;
        this.zzd = j;
        this.zze = completableDeferred;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new zzkb(this.zzb, this.zzc, this.zzd, this.zze, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return ((zzkb) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i != 0) {
            return obj;
        }
        zzmg zzmgVar = this.zzb;
        zzka zzkaVar = new zzka(this.zzc, this.zzd, this.zze, null);
        this.zza = 1;
        Object objZze = zzmgVar.zze(41, null, zzkaVar, this);
        return objZze == coroutine_suspended ? coroutine_suspended : objZze;
    }
}
