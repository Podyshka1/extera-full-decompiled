package com.google.android.gms.internal.mlkit_genai_prompt;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes4.dex */
final class zzxr extends ContinuationImpl {
    /* synthetic */ Object zza;
    final /* synthetic */ zzxs zzb;
    int zzc;
    String zzd;
    String zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzxr(zzxs zzxsVar, Continuation continuation) {
        super(continuation);
        this.zzb = zzxsVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zza = obj;
        this.zzc |= Integer.MIN_VALUE;
        return zzxs.zza(this.zzb, null, null, null, this);
    }
}
