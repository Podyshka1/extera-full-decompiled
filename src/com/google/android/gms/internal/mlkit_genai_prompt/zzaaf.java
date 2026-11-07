package com.google.android.gms.internal.mlkit_genai_prompt;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes5.dex */
final class zzaaf extends ContinuationImpl {
    /* synthetic */ Object zza;
    final /* synthetic */ zzaag zzb;
    int zzc;
    String zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaaf(zzaag zzaagVar, Continuation continuation) {
        super(continuation);
        this.zzb = zzaagVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zza = obj;
        this.zzc |= Integer.MIN_VALUE;
        return zzaag.zza(this.zzb, null, null, null, this);
    }
}
