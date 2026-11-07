package com.google.android.gms.internal.mlkit_genai_prompt;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.Objects;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes5.dex */
final class zzgq implements zzor {
    final /* synthetic */ CallbackToFutureAdapter.Completer zza;
    final /* synthetic */ Runnable zzb;
    final /* synthetic */ zzgu zzc;

    public zzgq(zzgu zzguVar, CallbackToFutureAdapter.Completer completer, Runnable runnable) {
        this.zza = completer;
        this.zzb = runnable;
        Objects.requireNonNull(zzguVar);
        this.zzc = zzguVar;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzor
    public final void zza(Throwable th) {
        if (th instanceof zzdo) {
            this.zza.setException(th);
        } else {
            boolean z = th instanceof CancellationException;
            CallbackToFutureAdapter.Completer completer = this.zza;
            if (z) {
                completer.setException(zzdo.zze(7, "Operation was cancelled.", th));
            } else {
                completer.setException(zzdo.zze(0, "AiCore request could not be completed.", th));
            }
        }
        this.zzc.zzd(this.zzb);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzor
    public final void zzb(Object obj) {
        this.zza.set(obj);
        this.zzc.zzd(this.zzb);
    }
}
