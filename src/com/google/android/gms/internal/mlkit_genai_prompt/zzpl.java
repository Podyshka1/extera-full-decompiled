package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
final class zzpl extends zzpa {
    final /* synthetic */ zzpm zza;
    private final Callable zzb;

    public zzpl(zzpm zzpmVar, Callable callable) {
        Objects.requireNonNull(zzpmVar);
        this.zza = zzpmVar;
        callable.getClass();
        this.zzb = callable;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzpa
    public final boolean zza() {
        return this.zza.isDone();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzpa
    public final Object zzb() {
        return this.zzb.call();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzpa
    public final void zzc(Object obj) {
        this.zza.zzh(obj);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzpa
    public final void zzd(Throwable th) {
        this.zza.zzi(th);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzpa
    public final String zzf() {
        return this.zzb.toString();
    }
}
