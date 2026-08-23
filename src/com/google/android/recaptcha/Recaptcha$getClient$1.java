package com.google.android.recaptcha;

import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes5.dex */
final class Recaptcha$getClient$1 extends ContinuationImpl {
    /* synthetic */ Object zza;
    final /* synthetic */ Recaptcha zzb;
    int zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Recaptcha$getClient$1(Recaptcha recaptcha, Continuation continuation) {
        super(continuation);
        this.zzb = recaptcha;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zza = obj;
        this.zzc |= Integer.MIN_VALUE;
        Object objM3506getClientBWLJW6A = this.zzb.m3506getClientBWLJW6A(null, null, 0L, this);
        return objM3506getClientBWLJW6A == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM3506getClientBWLJW6A : Result.m3603boximpl(objM3506getClientBWLJW6A);
    }
}
