package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzok extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzon zzb;
    final /* synthetic */ zzakg zzc;
    private /* synthetic */ Object zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzok(zzon zzonVar, zzakg zzakgVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzonVar;
        this.zzc = zzakgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzok zzokVar = new zzok(this.zzb, this.zzc, continuation);
        zzokVar.zzd = obj;
        return zzokVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzok) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0041, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmb) r7).zza(r1, r6) == r0) goto L14;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzmg zzmgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar = (zzmg) this.zzd;
            zzoj zzojVar = new zzoj(this.zzb, this.zzc, zzmgVar, null);
            this.zzd = zzmgVar;
            this.zza = 1;
            obj = new zzmb(74, zzojVar, null);
            if (obj != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        zzmgVar = (zzmg) this.zzd;
        ResultKt.throwOnFailure(obj);
        this.zzd = null;
        this.zza = 2;
    }
}
