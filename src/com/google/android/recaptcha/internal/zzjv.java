package com.google.android.recaptcha.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes5.dex */
final class zzjv extends ContinuationImpl {
    /* synthetic */ Object zza;
    final /* synthetic */ zzke zzb;
    int zzc;
    zzhk zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzjv(zzke zzkeVar, Continuation continuation) {
        super(continuation);
        this.zzb = zzkeVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zza = obj;
        this.zzc |= Integer.MIN_VALUE;
        return this.zzb.zzq(null, this);
    }
}
