package com.google.android.gms.internal.mlkit_genai_prompt;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes5.dex */
final class zzyb extends ContinuationImpl {
    Object zza;
    Object zzb;
    Object zzc;
    Object zzd;
    /* synthetic */ Object zze;
    final /* synthetic */ zzyd zzf;
    int zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzyb(zzyd zzydVar, Continuation continuation) {
        super(continuation);
        this.zzf = zzydVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zze = obj;
        this.zzg |= Integer.MIN_VALUE;
        return this.zzf.zzj(null, null, false, null, null, this);
    }
}
