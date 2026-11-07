package com.google.android.recaptcha.internal;

import com.google.android.gms.recaptchabase.InitRequest;
import com.google.android.gms.recaptchabase.RecaptchaBase;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzdx extends SuspendLambda implements Function2 {
    final /* synthetic */ zzdy zza;
    final /* synthetic */ zzakg zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdx(zzdy zzdyVar, zzakg zzakgVar, Continuation continuation) {
        super(2, continuation);
        this.zza = zzdyVar;
        this.zzb = zzakgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzdx(this.zza, this.zzb, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzdx) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        zzdy zzdyVar = this.zza;
        if (!zzdyVar.zzc.zza()) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m3086boximpl(Result.m3087constructorimpl(ResultKt.createFailure(new zzhg(zzhf.zzb, zzhe.zzB, null, null, 12, null))));
        }
        zzakg zzakgVar = this.zzb;
        if (!zzakgVar.zze() || zzakgVar.zzg().zza().zzr()) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m3086boximpl(Result.m3087constructorimpl(ResultKt.createFailure(new zzhg(zzhf.zzb, zzhe.zzO, null, null, 12, null))));
        }
        zzdyVar.zzb = zzic.zza(RecaptchaBase.getClient(zzdyVar.zza).init(new InitRequest.Builder().build()));
        Result.Companion companion3 = Result.INSTANCE;
        return Result.m3086boximpl(Result.m3087constructorimpl(Unit.INSTANCE));
    }
}
