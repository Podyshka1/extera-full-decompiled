package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzo;

/* JADX INFO: loaded from: classes4.dex */
final class zzy extends zzo {
    final /* synthetic */ GoogleMap.OnCameraIdleListener zza;

    zzy(GoogleMap googleMap, GoogleMap.OnCameraIdleListener onCameraIdleListener) {
        this.zza = onCameraIdleListener;
    }

    @Override // com.google.android.gms.maps.internal.zzp
    public final void zzb() {
        this.zza.onCameraIdle();
    }
}
