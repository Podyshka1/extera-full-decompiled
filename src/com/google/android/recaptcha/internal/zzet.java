package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzet extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzev zzb;
    final /* synthetic */ zzakk zzc;
    private /* synthetic */ Object zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzet(zzev zzevVar, zzakk zzakkVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzevVar;
        this.zzc = zzakkVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzet zzetVar = new zzet(this.zzb, this.zzc, continuation);
        zzetVar.zzd = obj;
        return zzetVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzet) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003d, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmc) r5).zza(r1.zza(), r4) == r0) goto L14;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzlp zzlpVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzlpVar = (zzlp) this.zzd;
            zzev zzevVar = this.zzb;
            zzakk zzakkVar = this.zzc;
            this.zzd = zzlpVar;
            this.zza = 1;
            obj = zzevVar.zzk(zzakkVar, this);
            if (obj != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        zzlpVar = (zzlp) this.zzd;
        ResultKt.throwOnFailure(obj);
        this.zzd = null;
        this.zza = 2;
    }
}
