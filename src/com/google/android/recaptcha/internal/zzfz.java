package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzfz extends SuspendLambda implements Function2 {
    final /* synthetic */ zzakg zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfz(zzakg zzakgVar, Continuation continuation) {
        super(2, continuation);
        this.zza = zzakgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzfz(this.zza, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzfz) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws zzhg {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        zzakg zzakgVar = this.zza;
        zzaer zzaerVarZza = zzakgVar.zzh().zza();
        zzaer zzaerVarZzb = zzakgVar.zzh().zzb();
        if (zzaerVarZza.zzr()) {
            throw new zzhg(zzhf.zzb, zzhe.zzah, null, null, 12, null);
        }
        zzall zzallVarZzc = zzalm.zzc();
        zzallVarZzc.zza(zzaerVarZza);
        zzallVarZzc.zzb(zzaerVarZzb);
        return zzallVarZzc.zzp();
    }
}
