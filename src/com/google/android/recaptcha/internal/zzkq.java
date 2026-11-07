package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzkq extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzkw zzb;
    final /* synthetic */ zzala zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzkq(zzkw zzkwVar, zzala zzalaVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzkwVar;
        this.zzc = zzalaVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzkq(this.zzb, this.zzc, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzkq) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws zzhg {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            if (this.zza != 0) {
                ResultKt.throwOnFailure(obj);
            } else {
                ResultKt.throwOnFailure(obj);
                zzkw zzkwVar = this.zzb;
                zzmw zzmwVar = zzkwVar.zzb;
                zzhq zzhqVar = zzkwVar.zza;
                zzala zzalaVar = this.zzc;
                this.zza = 1;
                obj = zzmwVar.zza(zzhqVar, zzalaVar, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return (zzalc) obj;
        } catch (Exception e) {
            throw zzkw.zzb(this.zzb, e);
        }
    }
}
