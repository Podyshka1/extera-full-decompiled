package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzlb extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzlf zzb;
    final /* synthetic */ zzamf zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzlb(zzlf zzlfVar, zzamf zzamfVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzlfVar;
        this.zzc = zzamfVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzlb(this.zzb, this.zzc, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzlb) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i == 0) {
            zzlf zzlfVar = this.zzb;
            zzmt zzmtVar = zzlfVar.zza;
            String strZza = zzlfVar.zzb.zza();
            zzamf zzamfVar = this.zzc;
            this.zza = 1;
            obj = zzmtVar.zza(strZza, zzamfVar, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return (zzakg) obj;
    }
}
