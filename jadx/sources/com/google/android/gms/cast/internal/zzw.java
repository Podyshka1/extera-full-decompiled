package com.google.android.gms.cast.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.zzav;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation$ResultHolder;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.Preconditions;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
public final class zzw extends GmsClient {
    private static final Logger zze = new Logger("CastClientImpl");
    private static final Object zzf = new Object();
    private static final Object zzg = new Object();
    private Bundle zzA;
    private final Map zzB;
    private BaseImplementation$ResultHolder zzC;
    private BaseImplementation$ResultHolder zzD;
    private ApplicationMetadata zzh;
    private final CastDevice zzi;
    private final Cast.Listener zzj;
    private final Map zzk;
    private final long zzl;
    private final Bundle zzm;
    private zzv zzn;
    private String zzo;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private boolean zzs;
    private double zzt;
    private zzav zzu;
    private int zzv;
    private int zzw;
    private final AtomicLong zzx;
    private String zzy;
    private String zzz;

    public zzw(Context context, Looper looper, ClientSettings clientSettings, CastDevice castDevice, long j, Cast.Listener listener, Bundle bundle, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 10, clientSettings, (ConnectionCallbacks) connectionCallbacks, (OnConnectionFailedListener) onConnectionFailedListener);
        this.zzi = castDevice;
        this.zzj = listener;
        this.zzl = j;
        this.zzm = bundle;
        this.zzk = new HashMap();
        this.zzx = new AtomicLong(0L);
        this.zzB = new HashMap();
        zzY();
        zzp();
    }

    static /* bridge */ /* synthetic */ void zzH(zzw zzwVar, zza zzaVar) {
        boolean z;
        String strZza = zzaVar.zza();
        if (CastUtils.zze(strZza, zzwVar.zzo)) {
            z = false;
        } else {
            zzwVar.zzo = strZza;
            z = true;
        }
        zze.m336d("hasChanged=%b, mFirstApplicationStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(zzwVar.zzq));
        Cast.Listener listener = zzwVar.zzj;
        if (listener != null && (z || zzwVar.zzq)) {
            listener.onApplicationStatusChanged();
        }
        zzwVar.zzq = false;
    }

    static /* bridge */ /* synthetic */ void zzI(zzw zzwVar, zzab zzabVar) {
        boolean z;
        boolean z2;
        boolean z3;
        ApplicationMetadata applicationMetadataZze = zzabVar.zze();
        if (!CastUtils.zze(applicationMetadataZze, zzwVar.zzh)) {
            zzwVar.zzh = applicationMetadataZze;
            zzwVar.zzj.onApplicationMetadataChanged(applicationMetadataZze);
        }
        double dZzb = zzabVar.zzb();
        if (Double.isNaN(dZzb) || Math.abs(dZzb - zzwVar.zzt) <= 1.0E-7d) {
            z = false;
        } else {
            zzwVar.zzt = dZzb;
            z = true;
        }
        boolean zZzg = zzabVar.zzg();
        if (zZzg != zzwVar.zzp) {
            zzwVar.zzp = zZzg;
            z = true;
        }
        Double.isNaN(zzabVar.zza());
        Logger logger = zze;
        logger.m336d("hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(zzwVar.zzr));
        Cast.Listener listener = zzwVar.zzj;
        if (listener != null && (z || zzwVar.zzr)) {
            listener.onVolumeChanged();
        }
        int iZzc = zzabVar.zzc();
        if (iZzc != zzwVar.zzv) {
            zzwVar.zzv = iZzc;
            z2 = true;
        } else {
            z2 = false;
        }
        logger.m336d("hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z2), Boolean.valueOf(zzwVar.zzr));
        Cast.Listener listener2 = zzwVar.zzj;
        if (listener2 != null && (z2 || zzwVar.zzr)) {
            listener2.onActiveInputStateChanged(zzwVar.zzv);
        }
        int iZzd = zzabVar.zzd();
        if (iZzd != zzwVar.zzw) {
            zzwVar.zzw = iZzd;
            z3 = true;
        } else {
            z3 = false;
        }
        logger.m336d("hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z3), Boolean.valueOf(zzwVar.zzr));
        Cast.Listener listener3 = zzwVar.zzj;
        if (listener3 != null && (z3 || zzwVar.zzr)) {
            listener3.onStandbyStateChanged(zzwVar.zzw);
        }
        if (!CastUtils.zze(zzwVar.zzu, zzabVar.zzf())) {
            zzwVar.zzu = zzabVar.zzf();
        }
        zzwVar.zzr = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzY() {
        this.zzs = false;
        this.zzv = -1;
        this.zzw = -1;
        this.zzh = null;
        this.zzo = null;
        this.zzt = 0.0d;
        zzp();
        this.zzp = false;
        this.zzu = null;
    }

    private final void zzZ() {
        zze.m336d("removing all MessageReceivedCallbacks", new Object[0]);
        synchronized (this.zzk) {
            this.zzk.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaa(long j, int i) {
        BaseImplementation$ResultHolder baseImplementation$ResultHolder;
        synchronized (this.zzB) {
            baseImplementation$ResultHolder = (BaseImplementation$ResultHolder) this.zzB.remove(Long.valueOf(j));
        }
        if (baseImplementation$ResultHolder != null) {
            baseImplementation$ResultHolder.setResult(new Status(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzab(int i) {
        synchronized (zzg) {
            try {
                BaseImplementation$ResultHolder baseImplementation$ResultHolder = this.zzD;
                if (baseImplementation$ResultHolder != null) {
                    baseImplementation$ResultHolder.setResult(new Status(i));
                    this.zzD = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.internal.ICastDeviceController");
        return iInterfaceQueryLocalInterface instanceof zzag ? (zzag) iInterfaceQueryLocalInterface : new zzag(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final void disconnect() {
        Logger logger = zze;
        logger.m336d("disconnect(); ServiceListener=%s, isConnected=%b", this.zzn, Boolean.valueOf(isConnected()));
        zzv zzvVar = this.zzn;
        this.zzn = null;
        if (zzvVar == null || zzvVar.zzq() == null) {
            logger.m336d("already disposed, so short-circuiting", new Object[0]);
            return;
        }
        zzZ();
        try {
            try {
                ((zzag) getService()).zzf();
            } finally {
                super.disconnect();
            }
        } catch (RemoteException | IllegalStateException e) {
            zze.m337d(e, "Error while disconnecting the controller interface", new Object[0]);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Bundle getConnectionHint() {
        Bundle bundle = this.zzA;
        if (bundle == null) {
            return super.getConnectionHint();
        }
        this.zzA = null;
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final Bundle getGetServiceRequestExtraArgs() {
        Bundle bundle = new Bundle();
        zze.m336d("getRemoteService(): mLastApplicationId=%s, mLastSessionId=%s", this.zzy, this.zzz);
        this.zzi.putInBundle(bundle);
        bundle.putLong("com.google.android.gms.cast.EXTRA_CAST_FLAGS", this.zzl);
        Bundle bundle2 = this.zzm;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        this.zzn = new zzv(this);
        bundle.putParcelable("listener", new BinderWrapper(this.zzn));
        String str = this.zzy;
        if (str != null) {
            bundle.putString("last_application_id", str);
            String str2 = this.zzz;
            if (str2 != null) {
                bundle.putString("last_session_id", str2);
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 12800000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String getServiceDescriptor() {
        return "com.google.android.gms.cast.internal.ICastDeviceController";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String getStartServiceAction() {
        return "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        super.onConnectionFailed(connectionResult);
        zzZ();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final void onPostInitHandler(int i, IBinder iBinder, Bundle bundle, int i2) {
        zze.m336d("in onPostInitHandler; statusCode=%d", Integer.valueOf(i));
        if (i == 0 || i == 2300) {
            this.zzs = true;
            this.zzq = true;
            this.zzr = true;
        } else {
            this.zzs = false;
        }
        if (i == 2300) {
            Bundle bundle2 = new Bundle();
            this.zzA = bundle2;
            bundle2.putBoolean("com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING", true);
            i = 0;
        }
        super.onPostInitHandler(i, iBinder, bundle, i2);
    }

    public final void zzR(int i) {
        synchronized (zzf) {
            try {
                BaseImplementation$ResultHolder baseImplementation$ResultHolder = this.zzC;
                if (baseImplementation$ResultHolder != null) {
                    baseImplementation$ResultHolder.setResult(new zzq(new Status(i), null, null, null, false));
                    this.zzC = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    final double zzp() {
        Preconditions.checkNotNull(this.zzi, "device should not be null");
        if (this.zzi.hasCapability(2048)) {
            return 0.02d;
        }
        return (!this.zzi.hasCapability(4) || this.zzi.hasCapability(1) || "Chromecast Audio".equals(this.zzi.getModelName())) ? 0.05d : 0.02d;
    }
}
