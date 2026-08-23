package com.google.android.gms.cast.framework.media.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzc extends zzh {
    final /* synthetic */ zzd zza;

    public /* synthetic */ zzc(zzd zzdVar, byte[] bArr) {
        Objects.requireNonNull(zzdVar);
        this.zza = zzdVar;
    }

    @Override // com.google.android.gms.cast.framework.media.internal.zzi
    public final void zzb(long j, long j2) {
        this.zza.publishProgress(Long.valueOf(j), Long.valueOf(j2));
    }
}
