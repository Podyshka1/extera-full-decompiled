package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzds implements ListenerHolder.Notifier {
    final /* synthetic */ LocationAvailability zza;

    public zzds(zzdu zzduVar, LocationAvailability locationAvailability) {
        this.zza = locationAvailability;
        Objects.requireNonNull(zzduVar);
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* synthetic */ void notifyListener(Object obj) {
        ((LocationCallback) obj).onLocationAvailability(this.zza);
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
    }
}
