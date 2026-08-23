package com.google.android.gms.internal.cast;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.CastRemoteDisplay;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public final class zzew extends GmsClient implements IBinder.DeathRecipient {
    private static final Logger zze = new Logger("CastRemoteDisplayClientImpl");
    private final CastRemoteDisplay.CastRemoteDisplaySessionCallbacks zzf;
    private final CastDevice zzg;
    private final Bundle zzh;

    public zzew(Context context, Looper looper, ClientSettings clientSettings, CastDevice castDevice, Bundle bundle, CastRemoteDisplay.CastRemoteDisplaySessionCallbacks castRemoteDisplaySessionCallbacks, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 83, clientSettings, (ConnectionCallbacks) connectionCallbacks, (OnConnectionFailedListener) onConnectionFailedListener);
        zze.m282d("instance created", new Object[0]);
        this.zzf = castRemoteDisplaySessionCallbacks;
        this.zzg = castDevice;
        this.zzh = bundle;
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
        return iInterfaceQueryLocalInterface instanceof zzez ? (zzez) iInterfaceQueryLocalInterface : new zzez(iBinder);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final void disconnect() {
        zze.m282d("disconnect", new Object[0]);
        try {
            ((zzez) getService()).zze(zzff.zza(getContext()));
        } catch (RemoteException | IllegalStateException unused) {
        } catch (Throwable th) {
            super.disconnect();
            throw th;
        }
        super.disconnect();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getServiceDescriptor() {
        return "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getStartServiceAction() {
        return "com.google.android.gms.cast.remote_display.service.START";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzp(zzey zzeyVar, zzfb zzfbVar, String str) {
        zze.m282d("startRemoteDisplay", new Object[0]);
        zzev zzevVar = new zzev(this, zzfbVar);
        ((zzez) getService()).zzf(zzeyVar, zzevVar, this.zzg.getDeviceId(), str, this.zzh, zzff.zza(getContext()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzq(zzey zzeyVar) {
        zze.m282d("stopRemoteDisplay", new Object[0]);
        ((zzez) getService()).zzi(zzeyVar, zzff.zza(getContext()));
    }

    public final /* synthetic */ CastRemoteDisplay.CastRemoteDisplaySessionCallbacks zzs() {
        return this.zzf;
    }
}
