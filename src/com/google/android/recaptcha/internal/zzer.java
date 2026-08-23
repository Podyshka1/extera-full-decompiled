package com.google.android.recaptcha.internal;

import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes5.dex */
final class zzer extends ContinuationImpl {
    /* synthetic */ Object zza;
    final /* synthetic */ zzez zzb;
    int zzc;
    zzez zzd;
    String zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzer(zzez zzezVar, Continuation continuation) {
        super(continuation);
        this.zzb = zzezVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zza = obj;
        this.zzc |= Integer.MIN_VALUE;
        Object objZza = this.zzb.zza(null, 0L, this);
        return objZza == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objZza : Result.m3603boximpl(objZza);
    }
}
