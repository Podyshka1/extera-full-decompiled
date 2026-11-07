package com.google.android.gms.internal.mlkit_genai_prompt;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzft implements zzgw {
    private final CallbackToFutureAdapter.Completer zza;

    public zzft(zzfv zzfvVar, CallbackToFutureAdapter.Completer completer) {
        Objects.requireNonNull(zzfvVar);
        this.zza = completer;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzgw
    public final void zza(Object obj) {
        this.zza.set(obj);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzgw
    public final void zzb(int i) {
        this.zza.setException(zzdo.zzb(i, "Inference failed.", null));
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzgw
    public final void zzc(int i, zzq zzqVar) {
        CallbackToFutureAdapter.Completer completer = this.zza;
        if (zzqVar != null) {
            completer.setException(zzdo.zzi(zzqVar));
        } else {
            completer.setException(zzdo.zzb(i, "Inference failed.", null));
        }
    }
}
