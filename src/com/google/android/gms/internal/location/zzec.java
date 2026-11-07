package com.google.android.gms.internal.location;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcelable;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.location.LastLocationRequest;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.zzn;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: loaded from: classes4.dex */
public final class zzec extends GmsClient {
    private final SimpleArrayMap zzf;
    private final SimpleArrayMap zzg;
    private final SimpleArrayMap zzh;

    public zzec(Context context, Looper looper, ClientSettings clientSettings, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 23, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.zzf = new SimpleArrayMap();
        this.zzg = new SimpleArrayMap();
        this.zzh = new SimpleArrayMap();
        new SimpleArrayMap();
    }

    private final boolean zzG(Feature feature) {
        Feature feature2;
        Feature[] availableFeatures = getAvailableFeatures();
        if (availableFeatures != null) {
            int i = 0;
            while (true) {
                if (i >= availableFeatures.length) {
                    feature2 = null;
                    break;
                }
                feature2 = availableFeatures[i];
                if (feature.getName().equals(feature2.getName())) {
                    break;
                }
                i++;
            }
            if (feature2 != null && feature2.getVersion() >= feature.getVersion()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        return iInterfaceQueryLocalInterface instanceof zzu ? (zzu) iInterfaceQueryLocalInterface : new zzt(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Feature[] getApiFeatures() {
        return zzn.zzp;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 11717000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getServiceDescriptor() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getStartServiceAction() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final void onConnectionSuspended(int i) {
        super.onConnectionSuspended(i);
        SimpleArrayMap simpleArrayMap = this.zzf;
        synchronized (simpleArrayMap) {
            simpleArrayMap.clear();
        }
        SimpleArrayMap simpleArrayMap2 = this.zzg;
        synchronized (simpleArrayMap2) {
            simpleArrayMap2.clear();
        }
        SimpleArrayMap simpleArrayMap3 = this.zzh;
        synchronized (simpleArrayMap3) {
            simpleArrayMap3.clear();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final boolean usesClientTelemetry() {
        return true;
    }

    public final void zzq(LastLocationRequest lastLocationRequest, TaskCompletionSource taskCompletionSource) {
        if (zzG(zzn.zzj)) {
            ((zzu) getService()).zzq(lastLocationRequest, new zzed(4, null, new zzdj(taskCompletionSource), null, null));
        } else if (zzG(zzn.zzf)) {
            ((zzu) getService()).zzr(lastLocationRequest, new zzdj(taskCompletionSource));
        } else {
            taskCompletionSource.setResult(((zzu) getService()).zzs());
        }
    }

    public final void zzt(zzdq zzdqVar, LocationRequest locationRequest, TaskCompletionSource taskCompletionSource) {
        zzdu zzduVar;
        ListenerHolder listenerHolderZza = zzdqVar.zza();
        ListenerHolder.ListenerKey listenerKey = listenerHolderZza.getListenerKey();
        Objects.requireNonNull(listenerKey);
        boolean zZzG = zzG(zzn.zzj);
        SimpleArrayMap simpleArrayMap = this.zzg;
        synchronized (simpleArrayMap) {
            try {
                zzdu zzduVar2 = (zzdu) simpleArrayMap.get(listenerKey);
                if (zzduVar2 == null || zZzG) {
                    zzdu zzduVar3 = new zzdu(zzdqVar);
                    simpleArrayMap.put(listenerKey, zzduVar3);
                    zzduVar = zzduVar3;
                } else {
                    zzduVar2.zzc(listenerHolderZza);
                    zzduVar = zzduVar2;
                    zzduVar2 = null;
                }
                if (zZzG) {
                    ((zzu) getService()).zzw(zzed.zzb(zzduVar2, zzduVar, listenerKey.toIdString()), locationRequest, new zzdi(null, taskCompletionSource));
                } else {
                    ((zzu) getService()).zzv(new zzeh(1, new zzef(locationRequest, null, false, false, false, false, null, LongCompanionObject.MAX_VALUE), null, zzduVar, null, new zzdc(taskCompletionSource, zzduVar), listenerKey.toIdString()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzw(ListenerHolder.ListenerKey listenerKey, boolean z, TaskCompletionSource taskCompletionSource) {
        SimpleArrayMap simpleArrayMap = this.zzg;
        synchronized (simpleArrayMap) {
            try {
                zzdu zzduVar = (zzdu) simpleArrayMap.remove(listenerKey);
                if (zzduVar == null) {
                    taskCompletionSource.setResult(Boolean.FALSE);
                    return;
                }
                zzduVar.zzg();
                if (!z) {
                    taskCompletionSource.setResult(Boolean.TRUE);
                } else if (zzG(zzn.zzj)) {
                    zzu zzuVar = (zzu) getService();
                    Parcelable.Creator<zzed> creator = zzed.CREATOR;
                    int iIdentityHashCode = System.identityHashCode(zzduVar);
                    StringBuilder sb = new StringBuilder(String.valueOf(iIdentityHashCode).length() + 18);
                    sb.append("ILocationCallback@");
                    sb.append(iIdentityHashCode);
                    zzuVar.zzx(zzed.zzb(null, zzduVar, sb.toString()), new zzdi(Boolean.TRUE, taskCompletionSource));
                } else {
                    ((zzu) getService()).zzv(new zzeh(2, null, null, zzduVar, null, new zzdm(Boolean.TRUE, taskCompletionSource), null));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
