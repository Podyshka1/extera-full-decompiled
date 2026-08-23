package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaAction;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzat extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzaw zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ RecaptchaAction zzd;
    final /* synthetic */ zzbd zze;
    final /* synthetic */ String zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzat(zzaw zzawVar, long j, RecaptchaAction recaptchaAction, zzbd zzbdVar, String str, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzawVar;
        this.zzc = j;
        this.zzd = recaptchaAction;
        this.zze = zzbdVar;
        this.zzf = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzat(this.zzb, this.zzc, this.zzd, this.zze, this.zzf, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzat) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003b, code lost:
    
        if (r13 == r0) goto L14;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws zzp {
        zzat zzatVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i != 0) {
            zzatVar = this;
            if (i == 1) {
            }
            zzol zzolVar = (zzol) obj;
            zzatVar.zzb.zzl(zzolVar, zzatVar.zze);
            zzatVar.zzb.zzi.zza(zzatVar.zze.zza(zzne.EXECUTE_TOTAL));
            return Result.m3290boximpl(Result.m3291constructorimpl(zzolVar.zzi()));
        }
        zzaw.zzi(this.zzb, this.zzc, this.zzd, this.zze);
        zzaw zzawVar = this.zzb;
        long j = this.zzc;
        String str = this.zzf;
        zzbd zzbdVar = this.zze;
        this.zza = 1;
        zzatVar = this;
        obj = zzawVar.zzj(j, str, zzbdVar, zzatVar);
        if (obj != coroutine_suspended) {
        }
        return coroutine_suspended;
        zzaw zzawVar2 = zzatVar.zzb;
        RecaptchaAction recaptchaAction = zzatVar.zzd;
        zzatVar.zza = 2;
        obj = BuildersKt.withContext(zzawVar2.zzl.zza().getCoroutineContext(), new zzav(zzatVar.zze, zzawVar2, recaptchaAction, (zzog) obj, null), zzatVar);
    }
}
