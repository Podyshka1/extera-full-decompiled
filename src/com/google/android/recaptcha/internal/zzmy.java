package com.google.android.recaptcha.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes5.dex */
final class zzmy extends ContinuationImpl {
    Object zza;
    /* synthetic */ Object zzb;
    final /* synthetic */ zzna zzc;
    int zzd;
    String zze;
    String zzf;
    byte[] zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzmy(zzna zznaVar, Continuation continuation) {
        super(continuation);
        this.zzc = zznaVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zzb = obj;
        this.zzd |= Integer.MIN_VALUE;
        return this.zzc.zze(null, null, null, null, this);
    }
}
