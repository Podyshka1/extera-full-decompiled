package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzey implements zzor {
    final /* synthetic */ zzfv zza;

    public zzey(zzfv zzfvVar) {
        Objects.requireNonNull(zzfvVar);
        this.zza = zzfvVar;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzor
    public final void zza(Throwable th) {
        zzfv zzfvVar = this.zza;
        synchronized (zzfvVar.zzu()) {
            zzfvVar.zzv(null);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzor
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
    }
}
