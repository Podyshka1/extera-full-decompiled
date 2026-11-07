package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.internal.IUiSettingsDelegate;

/* JADX INFO: loaded from: classes5.dex */
public final class UiSettings {
    private final IUiSettingsDelegate zza;

    public UiSettings(IUiSettingsDelegate iUiSettingsDelegate) {
        this.zza = iUiSettingsDelegate;
    }

    public void setCompassEnabled(boolean z) {
        try {
            this.zza.setCompassEnabled(z);
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m360m(e);
        }
    }

    public void setMyLocationButtonEnabled(boolean z) {
        try {
            this.zza.setMyLocationButtonEnabled(z);
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m360m(e);
        }
    }

    public void setZoomControlsEnabled(boolean z) {
        try {
            this.zza.setZoomControlsEnabled(z);
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m360m(e);
        }
    }
}
