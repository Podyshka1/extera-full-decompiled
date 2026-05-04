package com.google.android.gms.maps;

import com.google.android.gms.internal.maps.zzaj;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzau;
import com.google.android.gms.maps.model.Marker;

/* JADX INFO: loaded from: classes4.dex */
final class zza extends zzau {
    final /* synthetic */ GoogleMap.OnMarkerClickListener zza;

    zza(GoogleMap googleMap, GoogleMap.OnMarkerClickListener onMarkerClickListener) {
        this.zza = onMarkerClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzav
    public final boolean zzb(zzaj zzajVar) {
        return this.zza.onMarkerClick(new Marker(zzajVar));
    }
}
