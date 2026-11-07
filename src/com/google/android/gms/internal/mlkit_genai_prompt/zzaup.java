package com.google.android.gms.internal.mlkit_genai_prompt;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes4.dex */
final class zzaup extends ContinuationImpl {
    /* synthetic */ Object zza;
    final /* synthetic */ zzaur zzb;
    int zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaup(zzaur zzaurVar, Continuation continuation) {
        super(continuation);
        this.zzb = zzaurVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zza = obj;
        this.zzc |= Integer.MIN_VALUE;
        return zzaur.zzA(this.zzb, this);
    }
}
