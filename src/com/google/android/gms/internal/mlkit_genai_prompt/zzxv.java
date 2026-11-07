package com.google.android.gms.internal.mlkit_genai_prompt;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes4.dex */
final class zzxv extends ContinuationImpl {
    Object zza;
    Object zzb;
    Object zzc;
    int zzd;
    /* synthetic */ Object zze;
    final /* synthetic */ zzyd zzf;
    int zzg;
    zzyd zzh;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzxv(zzyd zzydVar, Continuation continuation) {
        super(continuation);
        this.zzf = zzydVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zze = obj;
        this.zzg |= Integer.MIN_VALUE;
        return zzyd.zza(this.zzf, this);
    }
}
