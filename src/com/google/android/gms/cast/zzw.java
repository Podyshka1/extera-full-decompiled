package com.google.android.gms.cast;

import android.hardware.display.DisplayManager;
import android.os.RemoteException;
import android.view.Display;
import android.view.Surface;
import com.google.android.gms.cast.CastRemoteDisplayLocalService;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.cast.zzeu;
import com.google.android.gms.internal.cast.zzez;
import com.google.android.gms.internal.cast.zzff;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzw extends zzy {
    final /* synthetic */ TaskCompletionSource zza;
    final /* synthetic */ zzeu zzb;
    final /* synthetic */ CastRemoteDisplayClient zzc;
    final /* synthetic */ zzag zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzw(CastRemoteDisplayClient castRemoteDisplayClient, TaskCompletionSource taskCompletionSource, zzeu zzeuVar, zzag zzagVar) {
        super(null);
        this.zza = taskCompletionSource;
        this.zzb = zzeuVar;
        this.zzd = zzagVar;
        Objects.requireNonNull(castRemoteDisplayClient);
        this.zzc = castRemoteDisplayClient;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.cast.zzy, com.google.android.gms.internal.cast.zzey
    public final void zzb(int i, int i2, Surface surface, ApiMetadata apiMetadata) {
        CastRemoteDisplayClient castRemoteDisplayClient = this.zzc;
        castRemoteDisplayClient.zzb().m311d("onConnected", new Object[0]);
        DisplayManager displayManager = (DisplayManager) castRemoteDisplayClient.getApplicationContext().getSystemService("display");
        if (displayManager == null) {
            castRemoteDisplayClient.zzb().m313e("Unable to get the display manager", new Object[0]);
            TaskUtil.setResultOrApiException(Status.RESULT_INTERNAL_ERROR, null, this.zza, apiMetadata);
            return;
        }
        castRemoteDisplayClient.zza();
        castRemoteDisplayClient.zzd(displayManager.createVirtualDisplay("private_display", i, i2, (Math.min(i, i2) * 320) / 1080, surface, 2));
        if (castRemoteDisplayClient.zzc() == null) {
            castRemoteDisplayClient.zzb().m313e("Unable to create virtual display", new Object[0]);
            TaskUtil.setResultOrApiException(Status.RESULT_INTERNAL_ERROR, null, this.zza, apiMetadata);
            return;
        }
        Display display = castRemoteDisplayClient.zzc().getDisplay();
        if (display == null) {
            castRemoteDisplayClient.zzb().m313e("Virtual display does not have a display", new Object[0]);
            TaskUtil.setResultOrApiException(Status.RESULT_INTERNAL_ERROR, null, this.zza, apiMetadata);
            return;
        }
        try {
            zzeu zzeuVar = this.zzb;
            ((zzez) zzeuVar.getService()).zzh(this, display.getDisplayId(), zzff.zza(zzeuVar.getContext()));
        } catch (RemoteException | IllegalStateException unused) {
            this.zzc.zzb().m313e("Unable to provision the route's new virtual Display", new Object[0]);
            TaskUtil.setResultOrApiException(Status.RESULT_INTERNAL_ERROR, null, this.zza, apiMetadata);
        }
    }

    @Override // com.google.android.gms.cast.zzy, com.google.android.gms.internal.cast.zzey
    public final void zzc(ApiMetadata apiMetadata) {
        CastRemoteDisplayClient castRemoteDisplayClient = this.zzc;
        castRemoteDisplayClient.zzb().m311d("onConnectedWithDisplay", new Object[0]);
        if (castRemoteDisplayClient.zzc() == null) {
            castRemoteDisplayClient.zzb().m313e("There is no virtual display", new Object[0]);
            TaskUtil.setResultOrApiException(Status.RESULT_INTERNAL_ERROR, null, this.zza, apiMetadata);
            return;
        }
        Display display = castRemoteDisplayClient.zzc().getDisplay();
        if (display != null) {
            TaskUtil.setResultOrApiException(Status.RESULT_SUCCESS, display, this.zza, apiMetadata);
        } else {
            castRemoteDisplayClient.zzb().m313e("Virtual display no longer has a display", new Object[0]);
            TaskUtil.setResultOrApiException(Status.RESULT_INTERNAL_ERROR, null, this.zza, apiMetadata);
        }
    }

    @Override // com.google.android.gms.cast.zzy, com.google.android.gms.internal.cast.zzey
    public final void zzd(int i, ApiMetadata apiMetadata) {
        Object[] objArr = {Integer.valueOf(i)};
        CastRemoteDisplayClient castRemoteDisplayClient = this.zzc;
        castRemoteDisplayClient.zzb().m311d("onError: %d", objArr);
        castRemoteDisplayClient.zza();
        TaskUtil.setResultOrApiException(Status.RESULT_INTERNAL_ERROR, null, this.zza, apiMetadata);
    }

    @Override // com.google.android.gms.cast.zzy, com.google.android.gms.internal.cast.zzey
    public final void zze(boolean z, ApiMetadata apiMetadata) {
        this.zzc.zzb().m311d("onRemoteDisplayMuteStateChanged: %b", Boolean.valueOf(z));
        zzag zzagVar = this.zzd;
        if (zzagVar != null) {
            StringBuilder sb = new StringBuilder(String.valueOf(z).length() + 33);
            sb.append("onRemoteDisplayMuteStateChanged: ");
            sb.append(z);
            String string = sb.toString();
            CastRemoteDisplayLocalService castRemoteDisplayLocalService = zzagVar.zza;
            castRemoteDisplayLocalService.zzg(string);
            CastRemoteDisplayLocalService.Callbacks callbacks = (CastRemoteDisplayLocalService.Callbacks) castRemoteDisplayLocalService.zzl().get();
            if (callbacks != null) {
                callbacks.onRemoteDisplayMuteStateChanged(z);
            }
        }
    }
}
