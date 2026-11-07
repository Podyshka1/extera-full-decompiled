package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzfc extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzfd zzb;
    final /* synthetic */ zzakk zzc;
    private /* synthetic */ Object zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfc(zzfd zzfdVar, zzakk zzakkVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzfdVar;
        this.zzc = zzakkVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzfc zzfcVar = new zzfc(this.zzb, this.zzc, continuation);
        zzfcVar.zzd = obj;
        return zzfcVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzfc) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x005c, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmc) r9).zza(r1, r8) == r0) goto L18;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws zzhg {
        zzmg zzmgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar = (zzmg) this.zzd;
            zzfd zzfdVar = this.zzb;
            if (zzfdVar.zzc.zza()) {
                zzakk zzakkVar = this.zzc;
                if (zzakkVar.zzc() != 0) {
                    zzfdVar.zza.zzb(zzakkVar.zzc());
                    zzfp zzfpVar = zzfdVar.zza;
                    this.zzd = zzmgVar;
                    this.zza = 1;
                    obj = zzfpVar.zzc(this);
                    if (obj != coroutine_suspended) {
                    }
                    return coroutine_suspended;
                }
            }
            zzfdVar.zze(false);
            throw new zzhg(zzhf.zzb, zzhe.zzu, null, null, 12, null);
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
