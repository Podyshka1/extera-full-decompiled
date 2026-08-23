package com.google.android.recaptcha.internal;

import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes5.dex */
final class zzap extends ContinuationImpl {
    /* synthetic */ Object zza;
    final /* synthetic */ zzaw zzb;
    int zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzap(zzaw zzawVar, Continuation continuation) {
        super(continuation);
        this.zzb = zzawVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zza = obj;
        this.zzc |= Integer.MIN_VALUE;
        Object objMo3197execute0E7RQCE = this.zzb.mo3197execute0E7RQCE(null, 0L, this);
        return objMo3197execute0E7RQCE == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMo3197execute0E7RQCE : Result.m3290boximpl(objMo3197execute0E7RQCE);
    }
}
