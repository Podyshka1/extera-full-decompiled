package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes4.dex */
final class zzoa extends zzob {
    public zzoa(ListenableFuture listenableFuture, Class cls, zzoj zzojVar) {
        super(listenableFuture, cls, zzojVar);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzob
    public final /* synthetic */ void zza(Object obj) {
        zzj((ListenableFuture) obj);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzob
    public final /* bridge */ /* synthetic */ Object zzb(Object obj, Throwable th) {
        zzoj zzojVar = (zzoj) obj;
        ListenableFuture listenableFutureZza = zzojVar.zza(th);
        zzla.zze(listenableFutureZza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzojVar);
        return listenableFutureZza;
    }
}
