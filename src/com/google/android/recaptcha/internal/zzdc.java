package com.google.android.recaptcha.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzdc extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzlp zzc;
    final /* synthetic */ zzdo zzd;
    final /* synthetic */ String zze;
    final /* synthetic */ zzaka zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdc(zzlp zzlpVar, zzdo zzdoVar, String str, zzaka zzakaVar, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzlpVar;
        this.zzd = zzdoVar;
        this.zze = str;
        this.zzf = zzakaVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzdc(this.zzc, this.zzd, this.zze, this.zzf, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzdc) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003f, code lost:
    
        if (r6 == r0) goto L16;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Object objM3608constructorimpl;
        zzlp zzlpVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        try {
        } catch (Exception e) {
            Result.Companion companion = Result.INSTANCE;
            objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(e));
        }
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Result.Companion companion2 = Result.INSTANCE;
            zzlpVar = this.zzc;
            zzdo zzdoVar = this.zzd;
            String str = this.zze;
            zzaka zzakaVar = this.zzf;
            this.zza = zzlpVar;
            this.zzb = 1;
            obj = zzdo.zzf(zzdoVar, str, zzakaVar, this);
            if (obj == coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            objM3608constructorimpl = Result.m3608constructorimpl(obj);
            return Result.m3607boximpl(objM3608constructorimpl);
        }
        zzlpVar = (zzlp) this.zza;
        ResultKt.throwOnFailure(obj);
        this.zza = null;
        this.zzb = 2;
        obj = ((zzmb) obj).zza(zzlpVar.zza(), this);
    }
}
