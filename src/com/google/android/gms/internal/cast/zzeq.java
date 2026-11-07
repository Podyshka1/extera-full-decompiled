package com.google.android.gms.internal.cast;

import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.Status;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzeq extends zzeo {
    final /* synthetic */ zzer zza;

    public zzeq(zzer zzerVar) {
        Objects.requireNonNull(zzerVar);
        this.zza = zzerVar;
    }

    @Override // com.google.android.gms.internal.cast.zzey
    public final void zzd(int i, ApiMetadata apiMetadata) {
        int i2 = zzet.$r8$clinit;
        zzet.zzb.m311d("onError: %d", Integer.valueOf(i));
        zzer zzerVar = this.zza;
        zzerVar.zzc.zza();
        zzerVar.setResult(new zzes(Status.RESULT_INTERNAL_ERROR));
    }

    @Override // com.google.android.gms.internal.cast.zzeo, com.google.android.gms.internal.cast.zzey
    public final void zzf(ApiMetadata apiMetadata) {
        zzet.zzb.m311d("onDisconnected", new Object[0]);
        zzer zzerVar = this.zza;
        zzerVar.zzc.zza();
        zzerVar.setResult(new zzes(Status.RESULT_SUCCESS));
    }
}
