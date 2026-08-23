package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzu;

/* JADX INFO: loaded from: classes4.dex */
final class zzv extends zzu {
    final /* synthetic */ GoogleMap.OnCameraMoveStartedListener zza;

    zzv(GoogleMap googleMap, GoogleMap.OnCameraMoveStartedListener onCameraMoveStartedListener) {
        this.zza = onCameraMoveStartedListener;
    }

    @Override // com.google.android.gms.maps.internal.zzv
    public final void zzb(int i) {
        this.zza.onCameraMoveStarted(i);
    }
}
