package com.google.android.gms.cast;

import com.google.android.gms.cast.CastRemoteDisplayLocalService;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzai implements OnCompleteListener {
    final /* synthetic */ CastRemoteDisplayLocalService zza;

    public zzai(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        Objects.requireNonNull(castRemoteDisplayLocalService);
        this.zza = castRemoteDisplayLocalService;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task task) {
        boolean zIsSuccessful = task.isSuccessful();
        CastRemoteDisplayLocalService castRemoteDisplayLocalService = this.zza;
        if (zIsSuccessful) {
            castRemoteDisplayLocalService.zzg("remote display stopped");
        } else {
            castRemoteDisplayLocalService.zzg("Unable to stop the remote display, result unsuccessful");
            CastRemoteDisplayLocalService.Callbacks callbacks = (CastRemoteDisplayLocalService.Callbacks) castRemoteDisplayLocalService.zzl().get();
            if (callbacks != null) {
                callbacks.onRemoteDisplaySessionError(new Status(CastStatusCodes.ERROR_STOPPING_SERVICE_FAILED));
            }
        }
        this.zza.zzn(null);
    }
}
