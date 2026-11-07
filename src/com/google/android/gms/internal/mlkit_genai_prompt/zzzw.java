package com.google.android.gms.internal.mlkit_genai_prompt;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes4.dex */
final class zzzw extends ContinuationImpl {
    /* synthetic */ Object zza;
    final /* synthetic */ zzzy zzb;
    int zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzzw(zzzy zzzyVar, Continuation continuation) {
        super(continuation);
        this.zzb = zzzyVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zza = obj;
        this.zzc |= Integer.MIN_VALUE;
        return this.zzb.warmup(this);
    }
}
