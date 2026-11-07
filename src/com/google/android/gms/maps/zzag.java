package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.zzas;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class zzag extends zzas {
    final /* synthetic */ OnMapReadyCallback zza;

    public zzag(zzah zzahVar, OnMapReadyCallback onMapReadyCallback) {
        this.zza = onMapReadyCallback;
        Objects.requireNonNull(zzahVar);
    }

    @Override // com.google.android.gms.maps.internal.zzat
    public final void zzb(IGoogleMapDelegate iGoogleMapDelegate) {
        this.zza.onMapReady(new GoogleMap(iGoogleMapDelegate));
    }
}
