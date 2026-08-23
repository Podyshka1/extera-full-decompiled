package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.Cast;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzdf extends Cast.Listener {
    final /* synthetic */ zzdg zza;

    public zzdf(zzdg zzdgVar) {
        Objects.requireNonNull(zzdgVar);
        this.zza = zzdgVar;
    }

    @Override // com.google.android.gms.cast.Cast.Listener
    public final void onVolumeChanged() {
        this.zza.zza();
    }
}
