package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzkd extends SuspendLambda implements Function2 {
    final /* synthetic */ zzke zza;
    final /* synthetic */ long zzb;
    private /* synthetic */ Object zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzkd(zzke zzkeVar, long j, Continuation continuation) {
        super(2, continuation);
        this.zza = zzkeVar;
        this.zzb = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzkd zzkdVar = new zzkd(this.zza, this.zzb, continuation);
        zzkdVar.zzc = obj;
        return zzkdVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzkd) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        zzmg zzmgVar = (zzmg) this.zzc;
        zzke zzkeVar = this.zza;
        if (Intrinsics.areEqual(zzkeVar.zza(), zzkm.zzb) || Intrinsics.areEqual(zzkeVar.zza(), zzkm.zzc)) {
            return Unit.INSTANCE;
        }
        if (Intrinsics.areEqual(zzkeVar.zza(), zzkm.zzd) && !zzke.zze(zzkeVar, zzkeVar.zzb)) {
            return Unit.INSTANCE;
        }
        zzkeVar.zzd = zzkm.zzc;
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        zzkeVar.zza = completableDeferredCompletableDeferred$default;
        BuildersKt__Builders_commonKt.launch$default(zzkeVar.zzf.zzc(), null, null, new zzkc(zzkeVar, completableDeferredCompletableDeferred$default, zzmgVar, this.zzb, null), 3, null);
        return Unit.INSTANCE;
    }
}
