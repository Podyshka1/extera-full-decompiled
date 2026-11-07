package com.google.android.gms.internal.mlkit_genai_prompt;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes5.dex */
final class zzzq extends ContinuationImpl {
    Object zza;
    Object zzb;
    Object zzc;
    boolean zzd;
    int zze;
    /* synthetic */ Object zzf;
    final /* synthetic */ zzzy zzg;
    int zzh;
    String zzi;
    String zzj;
    zzaab zzk;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzzq(zzzy zzzyVar, Continuation continuation) {
        super(continuation);
        this.zzg = zzzyVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zzf = obj;
        this.zzh |= Integer.MIN_VALUE;
        return this.zzg.zzx(null, null, null, null, false, this);
    }
}
