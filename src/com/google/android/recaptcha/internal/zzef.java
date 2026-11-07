package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzef extends SuspendLambda implements Function2 {
    final /* synthetic */ zzaka zza;
    final /* synthetic */ zzeh zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzef(zzaka zzakaVar, zzeh zzehVar, Continuation continuation) {
        super(2, continuation);
        this.zza = zzakaVar;
        this.zzb = zzehVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzef(this.zza, this.zzb, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzef) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String strZza;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        zzaka zzakaVar = this.zza;
        if (zzakaVar == null || (strZza = zzakaVar.zza()) == null) {
            strZza = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        zzeh zzehVar = this.zzb;
        zzaly zzalyVarZzb = zzamb.zzb();
        zzalz zzalzVarZza = zzama.zza();
        zzalzVarZza.zzc(strZza);
        zzalyVarZzb.zzc(CollectionsKt.listOf(zzalzVarZza.zzp()));
        return zzew.zza(zzehVar, (zzamb) zzalyVarZzb.zzp());
    }
}
