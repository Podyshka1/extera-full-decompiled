package com.google.android.gms.internal.cast;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgi implements Result {
    private final Status zza;

    @Nullable
    private final zzgc zzb;

    public zzgi(Status status, @Nullable zzgc zzgcVar) {
        this.zza = status;
        this.zzb = zzgcVar;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.zza;
    }

    public final String toString() {
        zzgc zzgcVar = this.zzb;
        Preconditions.checkNotNull(zzgcVar);
        return String.format("OptInOptionsResultImpl[%s]", Boolean.valueOf(zzgcVar.zza() == 1));
    }

    public final boolean zza() {
        zzgc zzgcVar = this.zzb;
        Preconditions.checkNotNull(zzgcVar);
        return zzgcVar.zza() == 1;
    }
}
