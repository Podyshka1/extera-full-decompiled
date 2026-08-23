package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;

/* JADX INFO: loaded from: classes4.dex */
final class zzcv implements ListenerHolder.Notifier {
    final /* synthetic */ zzcw zza;

    public zzcv(zzcw zzcwVar) {
        this.zza = zzcwVar;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* bridge */ /* synthetic */ void notifyListener(Object obj) {
        this.zza.zza.zzb();
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
    }
}
