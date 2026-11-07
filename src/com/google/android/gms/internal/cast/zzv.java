package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.MediaStatus;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzv implements com.google.android.gms.cast.framework.zzs {
    final /* synthetic */ zzy zza;

    public /* synthetic */ zzv(zzy zzyVar, byte[] bArr) {
        Objects.requireNonNull(zzyVar);
        this.zza = zzyVar;
    }

    @Override // com.google.android.gms.cast.framework.zzs
    public final void zza() {
        this.zza.zza(new zzcs(new zzcr(3)));
    }

    @Override // com.google.android.gms.cast.framework.zzs
    public final void zzb(String str, long j, int i, long j2, long j3) {
        zzaa zzaaVarZzb = this.zza.zzb();
        zzcp zzcpVar = new zzcp(str);
        zzcpVar.zza(j);
        zzcpVar.zzb(i);
        zzcpVar.zzc(j2);
        zzcpVar.zzd(j3);
        zzaaVarZzb.zzd(new zzcq(zzcpVar));
    }

    @Override // com.google.android.gms.cast.framework.zzs
    public final void zzc(MediaStatus mediaStatus) {
        if (mediaStatus == null) {
            return;
        }
        this.zza.zzb().zze(new zzt(new zzs(mediaStatus)));
    }

    @Override // com.google.android.gms.cast.framework.zzs
    public final void zzd() {
        this.zza.zzb().zzf();
    }
}
