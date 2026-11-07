package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzer extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzev zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ zzaka zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzer(zzev zzevVar, String str, zzaka zzakaVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzevVar;
        this.zzc = str;
        this.zzd = zzakaVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzer zzerVar = new zzer(this.zzb, this.zzc, this.zzd, continuation);
        zzerVar.zze = obj;
        return zzerVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzer) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzlp zzlpVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzlpVar = (zzlp) this.zze;
            zzev zzevVar = this.zzb;
            String str = this.zzc;
            zzaka zzakaVar = this.zzd;
            this.zze = zzlpVar;
            this.zza = 1;
            obj = zzevVar.zzc(str, zzakaVar, this);
            if (obj != coroutine_suspended) {
            }
        }
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        zzlpVar = (zzlp) this.zze;
        ResultKt.throwOnFailure(obj);
        this.zze = null;
        this.zza = 2;
        Object objZza = ((zzmc) obj).zza(zzlpVar.zza(), this);
        return objZza == coroutine_suspended ? coroutine_suspended : objZza;
    }
}
