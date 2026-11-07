package com.google.android.gms.internal.mlkit_genai_prompt;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes5.dex */
final class zzaai extends ContinuationImpl {
    /* synthetic */ Object zza;
    final /* synthetic */ zzaak zzb;
    int zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaai(zzaak zzaakVar, Continuation continuation) {
        super(continuation);
        this.zzb = zzaakVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zza = obj;
        this.zzc |= Integer.MIN_VALUE;
        return zzaak.zzb(this.zzb, this);
    }
}
