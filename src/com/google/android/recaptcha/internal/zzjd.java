package com.google.android.recaptcha.internal;

import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes5.dex */
final class zzjd extends ContinuationImpl {
    /* synthetic */ Object zza;
    final /* synthetic */ zzjj zzb;
    int zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzjd(zzjj zzjjVar, Continuation continuation) {
        super(continuation);
        this.zzb = zzjjVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zza = obj;
        this.zzc |= Integer.MIN_VALUE;
        Object objZzf = this.zzb.zzf(null, 0L, this);
        return objZzf == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objZzf : Result.m3607boximpl(objZzf);
    }
}
