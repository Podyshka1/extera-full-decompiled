package com.google.android.gms.internal.mlkit_genai_prompt;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes5.dex */
final class zzaad extends ContinuationImpl {
    Object zza;
    Object zzb;
    /* synthetic */ Object zzc;
    final /* synthetic */ zzaag zzd;
    int zze;
    String zzf;
    zzaab zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaad(zzaag zzaagVar, Continuation continuation) {
        super(continuation);
        this.zzd = zzaagVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zzc = obj;
        this.zze |= Integer.MIN_VALUE;
        return zzaag.zzb(this.zzd, null, null, this);
    }
}
