package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.ParcelFileDescriptor;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
final class zzel extends zzba {
    final /* synthetic */ Executor zza;
    final /* synthetic */ zzeo zzb;

    public zzel(zzeo zzeoVar, Executor executor) {
        this.zza = executor;
        Objects.requireNonNull(zzeoVar);
        this.zzb = zzeoVar;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzbb
    public final void zzd(ParcelFileDescriptor parcelFileDescriptor) {
        zzeo zzeoVar = this.zzb;
        new zzgp(parcelFileDescriptor, zzeoVar.zzb(), this.zza).zza(zzeoVar.zzp());
    }
}
