package com.google.android.gms.cast;

import android.content.Context;
import android.content.ServiceConnection;
import android.view.Display;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzah implements OnCompleteListener {
    final /* synthetic */ CastRemoteDisplayLocalService zza;

    public zzah(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        Objects.requireNonNull(castRemoteDisplayLocalService);
        this.zza = castRemoteDisplayLocalService;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task task) {
        ServiceConnection serviceConnectionZzq;
        if (!task.isSuccessful()) {
            CastRemoteDisplayLocalService.zzb.m289e("Connection was not successful", new Object[0]);
            this.zza.zzf();
            return;
        }
        CastRemoteDisplayLocalService.zzb.m287d("startRemoteDisplay successful", new Object[0]);
        synchronized (CastRemoteDisplayLocalService.zzd) {
            try {
                if (CastRemoteDisplayLocalService.zzv == null) {
                    CastRemoteDisplayLocalService.zzb.m287d("Remote Display started but session already cancelled", new Object[0]);
                    this.zza.zzf();
                    return;
                }
                Display display = (Display) task.getResult();
                CastRemoteDisplayLocalService castRemoteDisplayLocalService = this.zza;
                castRemoteDisplayLocalService.zzd(display);
                CastRemoteDisplayLocalService.zze.set(false);
                Context contextZzo = castRemoteDisplayLocalService.zzo();
                if (contextZzo != null && (serviceConnectionZzq = castRemoteDisplayLocalService.zzq()) != null) {
                    try {
                        ConnectionTracker.getInstance().unbindService(contextZzo, serviceConnectionZzq);
                    } catch (IllegalArgumentException unused) {
                        CastRemoteDisplayLocalService.zzb.m287d("No need to unbind service, already unbound", new Object[0]);
                    }
                }
                CastRemoteDisplayLocalService castRemoteDisplayLocalService2 = this.zza;
                castRemoteDisplayLocalService2.zzr(null);
                castRemoteDisplayLocalService2.zzp(null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
