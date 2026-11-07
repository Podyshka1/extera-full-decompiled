package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzdt implements ListenerHolder.Notifier {
    final /* synthetic */ zzdu zza;

    public zzdt(zzdu zzduVar) {
        Objects.requireNonNull(zzduVar);
        this.zza = zzduVar;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* bridge */ /* synthetic */ void notifyListener(Object obj) {
        this.zza.zzh().zzc();
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
    }
}
