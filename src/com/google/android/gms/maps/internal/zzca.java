package com.google.android.gms.maps.internal;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes5.dex */
public final class zzca extends com.google.android.gms.internal.maps.zza implements IUiSettingsDelegate {
    public zzca(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IUiSettingsDelegate");
    }

    @Override // com.google.android.gms.maps.internal.IUiSettingsDelegate
    public final void setCompassEnabled(boolean z) {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.maps.zzc.$r8$clinit;
        parcelZza.writeInt(z ? 1 : 0);
        zzc(2, parcelZza);
    }

    @Override // com.google.android.gms.maps.internal.IUiSettingsDelegate
    public final void setMyLocationButtonEnabled(boolean z) {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.maps.zzc.$r8$clinit;
        parcelZza.writeInt(z ? 1 : 0);
        zzc(3, parcelZza);
    }

    @Override // com.google.android.gms.maps.internal.IUiSettingsDelegate
    public final void setZoomControlsEnabled(boolean z) {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.maps.zzc.$r8$clinit;
        parcelZza.writeInt(z ? 1 : 0);
        zzc(1, parcelZza);
    }
}
