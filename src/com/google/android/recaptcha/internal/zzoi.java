package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzoi extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzon zzb;
    private /* synthetic */ Object zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzoi(zzon zzonVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzonVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzoi zzoiVar = new zzoi(this.zzb, continuation);
        zzoiVar.zzc = obj;
        return zzoiVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzoi) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzmg zzmgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar = (zzmg) this.zzc;
            zzoh zzohVar = new zzoh(this.zzb, zzmgVar, null);
            this.zzc = zzmgVar;
            this.zza = 1;
            obj = new zzmb(75, zzohVar, null);
            if (obj != coroutine_suspended) {
            }
        }
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        zzmgVar = (zzmg) this.zzc;
        ResultKt.throwOnFailure(obj);
        this.zzc = null;
        this.zza = 2;
        Object objZza = ((zzmb) obj).zza(zzmgVar, this);
        return objZza == coroutine_suspended ? coroutine_suspended : objZza;
    }
}
