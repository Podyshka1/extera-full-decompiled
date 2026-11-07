package com.google.android.gms.cast;

import android.app.PendingIntent;
import android.content.Context;
import android.hardware.display.VirtualDisplay;
import android.os.Bundle;
import android.view.Display;
import com.google.android.gms.cast.CastRemoteDisplay;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.internal.cast.zzeu;
import com.google.android.gms.internal.cast.zzez;
import com.google.android.gms.internal.cast.zzff;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class CastRemoteDisplayClient extends GoogleApi<Api.ApiOptions.NoOptions> {
    private static final Api.AbstractClientBuilder zzc;
    private static final Api zzd;
    private final Logger zza;
    private VirtualDisplay zzb;

    static {
        zzv zzvVar = new zzv();
        zzc = zzvVar;
        zzd = new Api("CastRemoteDisplay.API", zzvVar, com.google.android.gms.cast.internal.zzal.zzd);
    }

    public CastRemoteDisplayClient(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) zzd, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.zza = new Logger("CastRemoteDisplay");
    }

    public Task<Display> startRemoteDisplay(CastDevice castDevice, String str, @CastRemoteDisplay.Configuration int i, PendingIntent pendingIntent) {
        return zze(castDevice, str, i, pendingIntent, null);
    }

    public Task<Void> stopRemoteDisplay() {
        return doWrite(TaskApiCall.builder().setMethodKey(8402).run(new RemoteCall() { // from class: com.google.android.gms.cast.zzz
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zzeu zzeuVar = (zzeu) obj;
                ((zzez) zzeuVar.getService()).zzi(new zzx(this.zza, (TaskCompletionSource) obj2), zzff.zza(zzeuVar.getContext()));
            }
        }).build());
    }

    public final /* synthetic */ void zza() {
        VirtualDisplay virtualDisplay = this.zzb;
        if (virtualDisplay != null) {
            if (virtualDisplay.getDisplay() != null) {
                Logger logger = this.zza;
                int displayId = this.zzb.getDisplay().getDisplayId();
                StringBuilder sb = new StringBuilder(String.valueOf(displayId).length() + 27);
                sb.append("releasing virtual display: ");
                sb.append(displayId);
                logger.m287d(sb.toString(), new Object[0]);
            }
            VirtualDisplay virtualDisplay2 = this.zzb;
            if (virtualDisplay2 != null) {
                virtualDisplay2.release();
                this.zzb = null;
            }
        }
    }

    public final /* synthetic */ Logger zzb() {
        return this.zza;
    }

    public final /* synthetic */ VirtualDisplay zzc() {
        return this.zzb;
    }

    public final /* synthetic */ void zzd(VirtualDisplay virtualDisplay) {
        this.zzb = virtualDisplay;
    }

    public final Task zze(final CastDevice castDevice, final String str, @CastRemoteDisplay.Configuration final int i, final PendingIntent pendingIntent, final zzag zzagVar) {
        return doWrite(TaskApiCall.builder().setMethodKey(8401).run(new RemoteCall() { // from class: com.google.android.gms.cast.zzaa
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zzeu zzeuVar = (zzeu) obj;
                Bundle bundle = new Bundle();
                bundle.putInt("configuration", i);
                zzag zzagVar2 = zzagVar;
                zzw zzwVar = new zzw(this.zza, (TaskCompletionSource) obj2, zzeuVar, zzagVar2);
                zzez zzezVar = (zzez) zzeuVar.getService();
                String deviceId = castDevice.getDeviceId();
                ApiMetadata apiMetadataZza = zzff.zza(zzeuVar.getContext());
                zzezVar.zzg(zzwVar, pendingIntent, deviceId, str, bundle, apiMetadataZza);
            }
        }).build());
    }
}
