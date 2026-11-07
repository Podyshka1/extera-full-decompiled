package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzga extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzgo zzb;
    final /* synthetic */ zzalk zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzga(zzgo zzgoVar, zzalk zzalkVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzgoVar;
        this.zzc = zzalkVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzga(this.zzb, this.zzc, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzga) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws zzhg {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i == 0) {
            zzgo zzgoVar = this.zzb;
            zzmv zzmvVar = zzgoVar.zzf;
            String strZzb = zzgoVar.zzg.zzb();
            zzalk zzalkVar = this.zzc;
            this.zza = 1;
            obj = zzmvVar.zza(strZzb, zzalkVar, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        zzalm zzalmVar = (zzalm) obj;
        if (zzalmVar.zza().zzr()) {
            throw new zzhg(zzhf.zzb, zzhe.zzah, null, null, 12, null);
        }
        return zzalmVar;
    }
}
