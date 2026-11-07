package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzfk extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzfp zzc;
    final /* synthetic */ zzmg zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfk(zzfp zzfpVar, zzmg zzmgVar, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzfpVar;
        this.zzd = zzmgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzfk(this.zzc, this.zzd, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzfk) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0039, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmc) r4).zza(r1, r3) == r0) goto L14;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzmg zzmgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzfp zzfpVar = this.zzc;
            zzfpVar.zzc = zzfq.zza;
            zzmgVar = this.zzd;
            this.zza = zzmgVar;
            this.zzb = 1;
            obj = zzfpVar.zzc(this);
            if (obj != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        zzmgVar = (zzmg) this.zza;
        ResultKt.throwOnFailure(obj);
        this.zza = null;
        this.zzb = 2;
    }
}
