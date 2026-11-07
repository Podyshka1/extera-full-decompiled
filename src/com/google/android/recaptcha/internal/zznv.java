package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zznv extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzoa zzb;
    private /* synthetic */ Object zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zznv(zzoa zzoaVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzoaVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zznv zznvVar = new zznv(this.zzb, continuation);
        zznvVar.zzc = obj;
        return zznvVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zznv) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzmg zzmgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzmgVar = (zzmg) this.zzc;
                zzoa zzoaVar = this.zzb;
                int i2 = zzoaVar.zzf;
                zznu zznuVar = new zznu(zzoaVar, null);
                this.zzc = zzmgVar;
                this.zza = 1;
                obj = new zzmb(i2, zznuVar, null);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                ResultKt.throwOnFailure(obj);
                return (zzagx) obj;
            }
            zzmgVar = (zzmg) this.zzc;
            ResultKt.throwOnFailure(obj);
            this.zzc = null;
            this.zza = 2;
            obj = ((zzmb) obj).zza(zzmgVar, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            return (zzagx) obj;
        } catch (Exception unused) {
            return null;
        }
    }
}
