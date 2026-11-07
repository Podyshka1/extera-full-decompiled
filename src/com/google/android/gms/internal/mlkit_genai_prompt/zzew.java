package com.google.android.gms.internal.mlkit_genai_prompt;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class zzew extends zzbo {
    final /* synthetic */ CallbackToFutureAdapter.Completer zza;

    public zzew(zzfv zzfvVar, CallbackToFutureAdapter.Completer completer) {
        this.zza = completer;
        Objects.requireNonNull(zzfvVar);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzbp
    public final void zzb(int i) {
        this.zza.setException(zzdo.zzd(14, "GetTokenInfo should not invoke onTokenizationSuccess method.", null));
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzbp
    public final void zzc(int i) {
        this.zza.setException(zzdo.zzd(i, "Tokenization failed.", null));
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzbp
    public final void zzd(zzct zzctVar) {
        this.zza.set(zzdz.zzb(zzctVar));
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzbp
    public final void zze(zzq zzqVar) {
        zzc(zzqVar == null ? 0 : zzqVar.zzb());
    }
}
