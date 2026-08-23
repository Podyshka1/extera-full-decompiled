package com.google.android.gms.internal.location;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.location.LastLocationRequest;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.zzm;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class zzda extends GmsClient {
    private final SimpleArrayMap zzf;
    private final SimpleArrayMap zzg;
    private final SimpleArrayMap zzh;

    public zzda(Context context, Looper looper, ClientSettings clientSettings, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 23, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.zzf = new SimpleArrayMap();
        this.zzg = new SimpleArrayMap();
        this.zzh = new SimpleArrayMap();
    }

    private final boolean zzE(Feature feature) {
        Feature feature2;
        Feature[] availableFeatures = getAvailableFeatures();
        if (availableFeatures == null) {
            return false;
        }
        int length = availableFeatures.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                feature2 = null;
                break;
            }
            feature2 = availableFeatures[i];
            if (feature.getName().equals(feature2.getName())) {
                break;
            }
            i++;
        }
        return feature2 != null && feature2.getVersion() >= feature.getVersion();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        return iInterfaceQueryLocalInterface instanceof zzo ? (zzo) iInterfaceQueryLocalInterface : new zzn(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Feature[] getApiFeatures() {
        return zzm.zzl;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 11717000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String getServiceDescriptor() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String getStartServiceAction() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final void onConnectionSuspended(int i) {
        super.onConnectionSuspended(i);
        synchronized (this.zzf) {
            this.zzf.clear();
        }
        synchronized (this.zzg) {
            this.zzg.clear();
        }
        synchronized (this.zzh) {
            this.zzh.clear();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final boolean usesClientTelemetry() {
        return true;
    }

    public final void zzB(ListenerHolder.ListenerKey listenerKey, boolean z, TaskCompletionSource taskCompletionSource) {
        synchronized (this.zzg) {
            try {
                zzcw zzcwVar = (zzcw) this.zzg.remove(listenerKey);
                if (zzcwVar == null) {
                    taskCompletionSource.setResult(Boolean.FALSE);
                    return;
                }
                zzcwVar.zzh();
                if (!z) {
                    taskCompletionSource.setResult(Boolean.TRUE);
                } else if (zzE(zzm.zzj)) {
                    ((zzo) getService()).zzy(zzdb.zzb(null, zzcwVar, null, null), new zzcl(this, Boolean.TRUE, taskCompletionSource));
                } else {
                    ((zzo) getService()).zzz(new zzdf(2, null, null, zzcwVar, null, new zzcn(Boolean.TRUE, taskCompletionSource), null));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzt(LastLocationRequest lastLocationRequest, TaskCompletionSource taskCompletionSource) {
        getContext();
        if (zzE(zzm.zzf)) {
            ((zzo) getService()).zzj(lastLocationRequest, new zzcm(this, taskCompletionSource));
        } else {
            taskCompletionSource.setResult(((zzo) getService()).zzd());
        }
    }

    public final void zzu(zzcs zzcsVar, LocationRequest locationRequest, TaskCompletionSource taskCompletionSource) {
        zzcw zzcwVar;
        ListenerHolder listenerHolderZza = zzcsVar.zza();
        ListenerHolder.ListenerKey listenerKey = listenerHolderZza.getListenerKey();
        listenerKey.getClass();
        boolean zZzE = zzE(zzm.zzj);
        synchronized (this.zzg) {
            try {
                zzcw zzcwVar2 = (zzcw) this.zzg.get(listenerKey);
                if (zzcwVar2 == null || zZzE) {
                    zzcw zzcwVar3 = new zzcw(zzcsVar);
                    this.zzg.put(listenerKey, zzcwVar3);
                    zzcwVar = zzcwVar3;
                } else {
                    zzcwVar2.zzg(listenerHolderZza);
                    zzcwVar = zzcwVar2;
                    zzcwVar2 = null;
                }
                getContext();
                String idString = listenerKey.toIdString();
                if (zZzE) {
                    ((zzo) getService()).zzk(zzdb.zzb(zzcwVar2, zzcwVar, null, idString), locationRequest, new zzcl(this, null, taskCompletionSource));
                } else {
                    zzo zzoVar = (zzo) getService();
                    LocationRequest.Builder builder = new LocationRequest.Builder(locationRequest);
                    builder.zzb(null);
                    zzoVar.zzz(new zzdf(1, zzdd.zza(null, builder.build()), null, zzcwVar, null, new zzcp(taskCompletionSource, zzcwVar), idString));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
