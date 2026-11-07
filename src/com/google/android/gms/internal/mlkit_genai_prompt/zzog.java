package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes5.dex */
final class zzog extends zzoi {
    public zzog(ListenableFuture listenableFuture, zzoj zzojVar) {
        super(listenableFuture, zzojVar);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoi
    public final /* synthetic */ void zza(Object obj) {
        zzj((ListenableFuture) obj);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoi
    public final /* bridge */ /* synthetic */ Object zzb(Object obj, Object obj2) {
        zzoj zzojVar = (zzoj) obj;
        ListenableFuture listenableFutureZza = zzojVar.zza(obj2);
        zzla.zze(listenableFutureZza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzojVar);
        return listenableFutureZza;
    }
}
