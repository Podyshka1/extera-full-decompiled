package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzgv extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzgy zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgv(zzgy zzgyVar, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzgyVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzgv(this.zzc, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzgv) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws zzhg {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmq zzmqVarZzf = this.zzc.zzf();
            this.zzb = 1;
            obj = zzmqVarZzf.zza(this);
            if (obj != coroutine_suspended) {
            }
        }
        if (i != 1) {
            String str = (String) this.zza;
            ResultKt.throwOnFailure(obj);
            return str;
        }
        ResultKt.throwOnFailure(obj);
        String str2 = (String) obj;
        zzne zzneVarZza = this.zzc.zza();
        this.zza = str2;
        this.zzb = 2;
        return zzneVarZza.zzb("ovk", str2, this) != coroutine_suspended ? str2 : coroutine_suspended;
    }
}
