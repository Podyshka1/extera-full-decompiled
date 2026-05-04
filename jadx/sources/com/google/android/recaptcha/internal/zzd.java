package com.google.android.recaptcha.internal;

import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes5.dex */
final class zzd extends ContinuationImpl {
    /* synthetic */ Object zza;
    final /* synthetic */ zzg zzb;
    int zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzd(zzg zzgVar, Continuation continuation) {
        super(continuation);
        this.zzb = zzgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zza = obj;
        this.zzc |= Integer.MIN_VALUE;
        Object objZzb = this.zzb.zzb(0L, null, this);
        return objZzb == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objZzb : Result.m3603boximpl(objZzb);
    }
}
