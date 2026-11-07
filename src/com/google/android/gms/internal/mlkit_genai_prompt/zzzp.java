package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.mlkit.genai.prompt.GenerateContentRequest;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes4.dex */
final class zzzp extends ContinuationImpl {
    Object zza;
    Object zzb;
    boolean zzc;
    /* synthetic */ Object zzd;
    final /* synthetic */ zzzy zze;
    int zzf;
    GenerateContentRequest zzg;
    String zzh;
    zzxt zzi;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzzp(zzzy zzzyVar, Continuation continuation) {
        super(continuation);
        this.zze = zzzyVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zzd = obj;
        this.zzf |= Integer.MIN_VALUE;
        return this.zze.zzy(null, null, null, null, false, this);
    }
}
