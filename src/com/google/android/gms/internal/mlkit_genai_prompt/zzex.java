package com.google.android.gms.internal.mlkit_genai_prompt;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzex extends zzbm {
    final /* synthetic */ CallbackToFutureAdapter.Completer zza;

    public zzex(zzfv zzfvVar, CallbackToFutureAdapter.Completer completer) {
        this.zza = completer;
        Objects.requireNonNull(zzfvVar);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzbn
    public final void zzb() {
        this.zza.set(null);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzbn
    public final void zzc(int i) {
        this.zza.setException(zzdo.zzc(i, "Preparation failed.", null));
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzbn
    public final void zzd(zzq zzqVar) {
        zzc(zzqVar == null ? 0 : zzqVar.zzb());
    }
}
