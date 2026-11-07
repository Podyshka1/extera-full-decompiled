package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzao;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class zzj extends zzao {
    final /* synthetic */ GoogleMap.OnMapLoadedCallback zza;

    public zzj(GoogleMap googleMap, GoogleMap.OnMapLoadedCallback onMapLoadedCallback) {
        this.zza = onMapLoadedCallback;
        Objects.requireNonNull(googleMap);
    }

    @Override // com.google.android.gms.maps.internal.zzap
    public final void zzb() {
        this.zza.onMapLoaded();
    }
}
