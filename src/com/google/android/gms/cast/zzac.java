package com.google.android.gms.cast;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzac implements Runnable {
    final /* synthetic */ CastRemoteDisplayLocalService zza;

    public zzac(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        Objects.requireNonNull(castRemoteDisplayLocalService);
        this.zza = castRemoteDisplayLocalService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CastRemoteDisplayLocalService castRemoteDisplayLocalService = this.zza;
        boolean zZzs = castRemoteDisplayLocalService.zzs();
        StringBuilder sb = new StringBuilder(String.valueOf(zZzs).length() + 54);
        sb.append("onCreate after delay. The local service been started: ");
        sb.append(zZzs);
        castRemoteDisplayLocalService.zzg(sb.toString());
        if (castRemoteDisplayLocalService.zzs()) {
            return;
        }
        castRemoteDisplayLocalService.zzh("The local service has not been been started, stopping it");
        castRemoteDisplayLocalService.stopSelf();
    }
}
