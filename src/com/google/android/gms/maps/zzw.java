package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzs;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class zzw extends zzs {
    final /* synthetic */ GoogleMap.OnCameraMoveListener zza;

    public zzw(GoogleMap googleMap, GoogleMap.OnCameraMoveListener onCameraMoveListener) {
        this.zza = onCameraMoveListener;
        Objects.requireNonNull(googleMap);
    }

    @Override // com.google.android.gms.maps.internal.zzt
    public final void zzb() {
        this.zza.onCameraMove();
    }
}
