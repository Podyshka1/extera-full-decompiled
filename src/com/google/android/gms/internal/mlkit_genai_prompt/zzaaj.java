package com.google.android.gms.internal.mlkit_genai_prompt;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes5.dex */
final class zzaaj extends ContinuationImpl {
    /* synthetic */ Object zza;
    final /* synthetic */ zzaak zzb;
    int zzc;
    zzaak zzd;
    zzaan zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaaj(zzaak zzaakVar, Continuation continuation) {
        super(continuation);
        this.zzb = zzaakVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zza = obj;
        this.zzc |= Integer.MIN_VALUE;
        return zzaak.zzc(this.zzb, null, null, null, this);
    }
}
