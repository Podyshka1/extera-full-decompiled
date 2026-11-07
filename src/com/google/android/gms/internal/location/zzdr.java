package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationResult;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzdr implements ListenerHolder.Notifier {
    final /* synthetic */ LocationResult zza;

    public zzdr(zzdu zzduVar, LocationResult locationResult) {
        this.zza = locationResult;
        Objects.requireNonNull(zzduVar);
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* synthetic */ void notifyListener(Object obj) {
        ((LocationCallback) obj).onLocationResult(this.zza);
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
    }
}
