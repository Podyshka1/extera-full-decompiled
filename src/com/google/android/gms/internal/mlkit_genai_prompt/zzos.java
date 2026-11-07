package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes5.dex */
final class zzos implements Runnable {
    final ListenableFuture zza;
    final zzor zzb;

    public zzos(ListenableFuture listenableFuture, zzor zzorVar) {
        this.zza = listenableFuture;
        this.zzb = zzorVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Throwable thZza;
        ListenableFuture listenableFuture = this.zza;
        if ((listenableFuture instanceof zzpn) && (thZza = zzpo.zza((zzpn) listenableFuture)) != null) {
            this.zzb.zza(thZza);
            return;
        }
        try {
            this.zzb.zzb(zzot.zzi(listenableFuture));
        } catch (ExecutionException e) {
            this.zzb.zza(e.getCause());
        } catch (Throwable th) {
            this.zzb.zza(th);
        }
    }

    public final String toString() {
        zzkx zzkxVarZza = zzky.zza(this);
        zzkxVarZza.zzc(this.zzb);
        return zzkxVarZza.toString();
    }
}
