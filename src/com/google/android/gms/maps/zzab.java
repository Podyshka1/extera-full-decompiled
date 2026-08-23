package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzc;

/* JADX INFO: loaded from: classes4.dex */
final class zzab extends zzc {
    private final GoogleMap.CancelableCallback zza;

    zzab(GoogleMap.CancelableCallback cancelableCallback) {
        this.zza = cancelableCallback;
    }

    @Override // com.google.android.gms.maps.internal.zzd
    public final void zzb() {
        this.zza.onCancel();
    }

    @Override // com.google.android.gms.maps.internal.zzd
    public final void zzc() {
        this.zza.onFinish();
    }
}
