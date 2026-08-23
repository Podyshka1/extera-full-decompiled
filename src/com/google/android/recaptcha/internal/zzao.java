package com.google.android.recaptcha.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes5.dex */
final class zzao extends ContinuationImpl {
    /* synthetic */ Object zza;
    final /* synthetic */ zzaw zzb;
    int zzc;
    zzaw zzd;
    zzbb zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzao(zzaw zzawVar, Continuation continuation) {
        super(continuation);
        this.zzb = zzawVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zza = obj;
        this.zzc |= Integer.MIN_VALUE;
        return this.zzb.zzj(0L, null, null, this);
    }
}
