package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;

/* JADX INFO: loaded from: classes4.dex */
final class zzdu extends com.google.android.gms.location.zzu {
    private final zzdq zza;

    public zzdu(zzdq zzdqVar) {
        this.zza = zzdqVar;
    }

    public final zzdu zzc(ListenerHolder listenerHolder) {
        this.zza.zzb(listenerHolder);
        return this;
    }

    @Override // com.google.android.gms.location.zzv
    public final void zzd(LocationResult locationResult) {
        this.zza.zza().notifyListener(new zzdr(this, locationResult));
    }

    @Override // com.google.android.gms.location.zzv
    public final void zze(LocationAvailability locationAvailability) {
        this.zza.zza().notifyListener(new zzds(this, locationAvailability));
    }

    @Override // com.google.android.gms.location.zzv
    public final void zzf() {
        this.zza.zza().notifyListener(new zzdt(this));
    }

    public final void zzg() {
        this.zza.zza().clear();
    }

    public final /* synthetic */ zzdq zzh() {
        return this.zza;
    }
}
