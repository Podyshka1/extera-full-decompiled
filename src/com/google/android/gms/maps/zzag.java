package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.zzas;

/* JADX INFO: loaded from: classes4.dex */
final class zzag extends zzas {
    final /* synthetic */ OnMapReadyCallback zza;

    zzag(zzah zzahVar, OnMapReadyCallback onMapReadyCallback) {
        this.zza = onMapReadyCallback;
    }

    @Override // com.google.android.gms.maps.internal.zzat
    public final void zzb(IGoogleMapDelegate iGoogleMapDelegate) {
        this.zza.onMapReady(new GoogleMap(iGoogleMapDelegate));
    }
}
