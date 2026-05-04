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
final class zze extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zza zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ zzoe zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zze(zza zzaVar, long j, zzoe zzoeVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzaVar;
        this.zzc = j;
        this.zzd = zzoeVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zze(this.zzb, this.zzc, this.zzd, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zze) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objZzb;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i != 0) {
            objZzb = ((Result) obj).m3611unboximpl();
        } else {
            zza zzaVar = this.zzb;
            long j = this.zzc;
            zzoe zzoeVar = this.zzd;
            this.zza = 1;
            objZzb = zzaVar.zzb(j, zzoeVar, this);
            if (objZzb == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Result.m3603boximpl(objZzb);
    }
}
