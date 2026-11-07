package com.google.android.recaptcha.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzcq extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzmg zzc;
    final /* synthetic */ zzcl zzd;
    final /* synthetic */ long zze;
    final /* synthetic */ zzakg zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcq(zzmg zzmgVar, zzcl zzclVar, long j, zzakg zzakgVar, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzmgVar;
        this.zzd = zzclVar;
        this.zze = j;
        this.zzf = zzakgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzcq(this.zzc, this.zzd, this.zze, this.zzf, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzcq) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objM3608constructorimpl;
        zzmg zzmgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        try {
        } catch (zzhg e) {
            Result.Companion companion = Result.INSTANCE;
            objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(e));
        }
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar = this.zzc;
            zzcl zzclVar = this.zzd;
            long j = this.zze;
            zzakg zzakgVar = this.zzf;
            this.zza = zzmgVar;
            this.zzb = 1;
            zzmb zzmbVar = new zzmb(zzclVar.zzf(), new zzci(zzclVar, j, zzakgVar, null), null);
            if (zzmbVar != coroutine_suspended) {
                obj = zzmbVar;
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            Result.Companion companion2 = Result.INSTANCE;
            objM3608constructorimpl = Result.m3608constructorimpl(Unit.INSTANCE);
            return Result.m3607boximpl(objM3608constructorimpl);
        }
        zzmgVar = (zzmg) this.zza;
        ResultKt.throwOnFailure(obj);
        this.zza = null;
        this.zzb = 2;
        if (((zzmb) obj).zza(zzmgVar, this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        Result.Companion companion22 = Result.INSTANCE;
        objM3608constructorimpl = Result.m3608constructorimpl(Unit.INSTANCE);
        return Result.m3607boximpl(objM3608constructorimpl);
    }
}
