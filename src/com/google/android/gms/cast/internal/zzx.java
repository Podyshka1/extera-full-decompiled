package com.google.android.gms.cast.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.zzbn;
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
import com.google.android.gms.internal.cast.zzff;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class zzx extends GmsClient {
    public static final /* synthetic */ int zze = 0;
    private final Map zzA;
    private BaseImplementation$ResultHolder zzB;
    private BaseImplementation$ResultHolder zzC;
    private ApplicationMetadata zzg;
    private final CastDevice zzh;
    private final Cast.Listener zzi;
    private final Map zzj;
    private final long zzk;
    private final Bundle zzl;
    private zzw zzm;
    private String zzn;
    private boolean zzo;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private double zzs;
    private com.google.android.gms.cast.zzao zzt;
    private int zzu;
    private int zzv;
    private final AtomicLong zzw;
    private String zzx;
    private String zzy;
    private Bundle zzz;
    private static final Logger zzf = new Logger("CastClientImpl");
    private static final Object zzD = new Object();
    private static final Object zzE = new Object();

    public zzx(Context context, Looper looper, ClientSettings clientSettings, CastDevice castDevice, long j, Cast.Listener listener, Bundle bundle, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 10, clientSettings, (ConnectionCallbacks) connectionCallbacks, (OnConnectionFailedListener) onConnectionFailedListener);
        this.zzh = castDevice;
        this.zzi = listener;
        this.zzk = j;
        this.zzl = bundle;
        this.zzj = new HashMap();
        this.zzw = new AtomicLong(0L);
        this.zzA = new HashMap();
        zzI();
        zzG();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzY, reason: merged with bridge method [inline-methods] */
    public final void zzI() {
        this.zzr = false;
        this.zzu = -1;
        this.zzv = -1;
        this.zzg = null;
        this.zzn = null;
        this.zzs = 0.0d;
        zzG();
        this.zzo = false;
        this.zzt = null;
    }

    private final void zzZ(BaseImplementation$ResultHolder baseImplementation$ResultHolder) {
        synchronized (zzD) {
            try {
                BaseImplementation$ResultHolder baseImplementation$ResultHolder2 = this.zzB;
                if (baseImplementation$ResultHolder2 != null) {
                    baseImplementation$ResultHolder2.setResult(new zzr(new Status(2477), null, null, null, false));
                }
                this.zzB = baseImplementation$ResultHolder;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void zzaa(BaseImplementation$ResultHolder baseImplementation$ResultHolder) {
        synchronized (zzE) {
            try {
                if (this.zzC != null) {
                    baseImplementation$ResultHolder.setResult(new Status(CastStatusCodes.INVALID_REQUEST));
                } else {
                    this.zzC = baseImplementation$ResultHolder;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void zzab() {
        zzf.m282d("removing all MessageReceivedCallbacks", new Object[0]);
        Map map = this.zzj;
        synchronized (map) {
            map.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzac, reason: merged with bridge method [inline-methods] */
    public final void zzL(long j, int i) {
        BaseImplementation$ResultHolder baseImplementation$ResultHolder;
        Map map = this.zzA;
        synchronized (map) {
            baseImplementation$ResultHolder = (BaseImplementation$ResultHolder) map.remove(Long.valueOf(j));
        }
        if (baseImplementation$ResultHolder != null) {
            baseImplementation$ResultHolder.setResult(new Status(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzad, reason: merged with bridge method [inline-methods] */
    public final void zzM(int i) {
        synchronized (zzE) {
            try {
                BaseImplementation$ResultHolder baseImplementation$ResultHolder = this.zzC;
                if (baseImplementation$ResultHolder != null) {
                    baseImplementation$ResultHolder.setResult(new Status(i));
                    this.zzC = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.internal.ICastDeviceController");
        return iInterfaceQueryLocalInterface instanceof zzah ? (zzah) iInterfaceQueryLocalInterface : new zzah(iBinder);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final void disconnect() {
        Logger logger = zzf;
        logger.m282d("disconnect(); ServiceListener=%s, isConnected=%b", this.zzm, Boolean.valueOf(isConnected()));
        zzw zzwVar = this.zzm;
        this.zzm = null;
        if (zzwVar == null || zzwVar.zzq() == null) {
            logger.m282d("already disposed, so short-circuiting", new Object[0]);
            return;
        }
        zzab();
        try {
            try {
                ((zzah) getService()).zze(zzff.zza(getContext()));
            } finally {
                super.disconnect();
            }
        } catch (RemoteException | IllegalStateException e) {
            zzf.m283d(e, "Error while disconnecting the controller interface", new Object[0]);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Bundle getConnectionHint() {
        Bundle bundle = this.zzz;
        if (bundle == null) {
            return super.getConnectionHint();
        }
        this.zzz = null;
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Bundle getGetServiceRequestExtraArgs() {
        Bundle bundle = new Bundle();
        zzf.m282d("getRemoteService(): mLastApplicationId=%s, mLastSessionId=%s", this.zzx, this.zzy);
        this.zzh.putInBundle(bundle);
        bundle.putLong("com.google.android.gms.cast.EXTRA_CAST_FLAGS", this.zzk);
        Bundle bundle2 = this.zzl;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        this.zzm = new zzw(this);
        bundle.putParcelable("listener", new BinderWrapper(this.zzm));
        String str = this.zzx;
        if (str != null) {
            bundle.putString("last_application_id", str);
            String str2 = this.zzy;
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
    public final String getServiceDescriptor() {
        return "com.google.android.gms.cast.internal.ICastDeviceController";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getStartServiceAction() {
        return "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        super.onConnectionFailed(connectionResult);
        zzab();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final void onPostInitHandler(int i, IBinder iBinder, Bundle bundle, int i2) {
        zzf.m282d("in onPostInitHandler; statusCode=%d", Integer.valueOf(i));
        if (i == 0 || i == 2300) {
            this.zzr = true;
            this.zzp = true;
            this.zzq = true;
        } else {
            this.zzr = false;
        }
        if (i == 2300) {
            Bundle bundle2 = new Bundle();
            this.zzz = bundle2;
            bundle2.putBoolean(Cast.EXTRA_APP_NO_LONGER_RUNNING, true);
            i = 0;
        }
        super.onPostInitHandler(i, iBinder, bundle, i2);
    }

    public final int zzA() {
        checkConnected();
        return this.zzv;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzB(String str, Cast.MessageReceivedCallback messageReceivedCallback) {
        CastUtils.throwIfInvalidNamespace(str);
        zzC(str);
        if (messageReceivedCallback != null) {
            Map map = this.zzj;
            synchronized (map) {
                map.put(str, messageReceivedCallback);
            }
            zzah zzahVar = (zzah) getService();
            if (zzF()) {
                zzahVar.zzl(str, zzff.zza(getContext()));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzC(String str) {
        Cast.MessageReceivedCallback messageReceivedCallback;
        if (TextUtils.isEmpty(str)) {
            f$$ExternalSyntheticBUOutline1.m178m("Channel namespace cannot be null or empty");
            return;
        }
        Map map = this.zzj;
        synchronized (map) {
            messageReceivedCallback = (Cast.MessageReceivedCallback) map.remove(str);
        }
        if (messageReceivedCallback != null) {
            try {
                ((zzah) getService()).zzm(str, zzff.zza(getContext()));
            } catch (IllegalStateException e) {
                zzf.m283d(e, "Error unregistering namespace (%s)", str);
            }
        }
    }

    public final ApplicationMetadata zzD() {
        checkConnected();
        return this.zzg;
    }

    public final String zzE() {
        checkConnected();
        return this.zzn;
    }

    public final boolean zzF() {
        zzw zzwVar;
        return (!this.zzr || (zzwVar = this.zzm) == null || zzwVar.zzr()) ? false : true;
    }

    public final double zzG() {
        CastDevice castDevice = this.zzh;
        Preconditions.checkNotNull(castDevice, "device should not be null");
        if (castDevice.hasCapability(2048)) {
            return 0.02d;
        }
        return (!castDevice.hasCapability(4) || castDevice.hasCapability(1) || "Chromecast Audio".equals(castDevice.getModelName())) ? 0.05d : 0.02d;
    }

    public final void zzH(int i) {
        synchronized (zzD) {
            try {
                BaseImplementation$ResultHolder baseImplementation$ResultHolder = this.zzB;
                if (baseImplementation$ResultHolder != null) {
                    baseImplementation$ResultHolder.setResult(new zzr(new Status(i), null, null, null, false));
                    this.zzB = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final /* synthetic */ void zzJ(zzac zzacVar) {
        boolean z;
        boolean z2;
        ApplicationMetadata applicationMetadataZze = zzacVar.zze();
        if (!CastUtils.zza(applicationMetadataZze, this.zzg)) {
            this.zzg = applicationMetadataZze;
            this.zzi.onApplicationMetadataChanged(applicationMetadataZze);
        }
        double dZza = zzacVar.zza();
        boolean z3 = true;
        if (Double.isNaN(dZza) || Math.abs(dZza - this.zzs) <= 1.0E-7d) {
            z = false;
        } else {
            this.zzs = dZza;
            z = true;
        }
        boolean zZzb = zzacVar.zzb();
        if (zZzb != this.zzo) {
            this.zzo = zZzb;
            z = true;
        }
        Double.isNaN(zzacVar.zzg());
        Logger logger = zzf;
        logger.m282d("hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(this.zzq));
        Cast.Listener listener = this.zzi;
        if (listener != null && (z || this.zzq)) {
            listener.onVolumeChanged();
        }
        int iZzc = zzacVar.zzc();
        if (iZzc != this.zzu) {
            this.zzu = iZzc;
            z2 = true;
        } else {
            z2 = false;
        }
        logger.m282d("hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z2), Boolean.valueOf(this.zzq));
        if (listener != null && (z2 || this.zzq)) {
            listener.onActiveInputStateChanged(this.zzu);
        }
        int iZzd = zzacVar.zzd();
        if (iZzd != this.zzv) {
            this.zzv = iZzd;
        } else {
            z3 = false;
        }
        logger.m282d("hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z3), Boolean.valueOf(this.zzq));
        if (listener != null && (z3 || this.zzq)) {
            listener.onStandbyStateChanged(this.zzv);
        }
        if (!CastUtils.zza(this.zzt, zzacVar.zzf())) {
            this.zzt = zzacVar.zzf();
        }
        this.zzq = false;
    }

    public final /* synthetic */ void zzK(zza zzaVar) {
        boolean z;
        String strZza = zzaVar.zza();
        if (CastUtils.zza(strZza, this.zzn)) {
            z = false;
        } else {
            this.zzn = strZza;
            z = true;
        }
        zzf.m282d("hasChanged=%b, mFirstApplicationStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(this.zzp));
        Cast.Listener listener = this.zzi;
        if (listener != null && (z || this.zzp)) {
            listener.onApplicationStatusChanged();
        }
        this.zzp = false;
    }

    public final /* synthetic */ void zzO(ApplicationMetadata applicationMetadata) {
        this.zzg = applicationMetadata;
    }

    public final /* synthetic */ CastDevice zzP() {
        return this.zzh;
    }

    public final /* synthetic */ Cast.Listener zzQ() {
        return this.zzi;
    }

    public final /* synthetic */ Map zzR() {
        return this.zzj;
    }

    public final /* synthetic */ void zzS(String str) {
        this.zzn = str;
    }

    public final /* synthetic */ void zzT(String str) {
        this.zzx = str;
    }

    public final /* synthetic */ void zzU(String str) {
        this.zzy = str;
    }

    public final /* synthetic */ BaseImplementation$ResultHolder zzV() {
        return this.zzB;
    }

    public final /* synthetic */ void zzW(BaseImplementation$ResultHolder baseImplementation$ResultHolder) {
        this.zzB = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzp(String str, String str2, BaseImplementation$ResultHolder baseImplementation$ResultHolder) {
        if (TextUtils.isEmpty(str2)) {
            f$$ExternalSyntheticBUOutline1.m178m("The message payload cannot be null or empty");
            return;
        }
        if (str2.length() > 524288) {
            zzf.m289w("Message send failed. Message exceeds maximum size", new Object[0]);
            f$$ExternalSyntheticBUOutline1.m178m("Message exceeds maximum size");
            return;
        }
        CastUtils.throwIfInvalidNamespace(str);
        long jIncrementAndGet = this.zzw.incrementAndGet();
        try {
            this.zzA.put(Long.valueOf(jIncrementAndGet), baseImplementation$ResultHolder);
            zzah zzahVar = (zzah) getService();
            if (zzF()) {
                zzahVar.zzk(str, str2, jIncrementAndGet, zzff.zza(getContext()));
            } else {
                zzL(jIncrementAndGet, CastStatusCodes.DEVICE_CONNECTION_SUSPENDED);
            }
        } catch (Throwable th) {
            this.zzA.remove(Long.valueOf(jIncrementAndGet));
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzq(String str, LaunchOptions launchOptions, BaseImplementation$ResultHolder baseImplementation$ResultHolder) {
        zzZ(baseImplementation$ResultHolder);
        zzah zzahVar = (zzah) getService();
        if (zzF()) {
            zzahVar.zzn(str, launchOptions, zzff.zza(getContext()));
        } else {
            zzH(CastStatusCodes.DEVICE_CONNECTION_SUSPENDED);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzr(String str, String str2, zzbn zzbnVar, BaseImplementation$ResultHolder baseImplementation$ResultHolder) {
        zzZ(baseImplementation$ResultHolder);
        zzbn zzbnVar2 = new zzbn();
        zzah zzahVar = (zzah) getService();
        if (zzF()) {
            zzahVar.zzo(str, str2, zzbnVar2, zzff.zza(getContext()));
        } else {
            zzH(CastStatusCodes.DEVICE_CONNECTION_SUSPENDED);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzs(BaseImplementation$ResultHolder baseImplementation$ResultHolder) {
        zzaa(baseImplementation$ResultHolder);
        zzah zzahVar = (zzah) getService();
        if (zzF()) {
            zzahVar.zzf(zzff.zza(getContext()));
        } else {
            zzM(CastStatusCodes.DEVICE_CONNECTION_SUSPENDED);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzt(String str, BaseImplementation$ResultHolder baseImplementation$ResultHolder) {
        zzaa(baseImplementation$ResultHolder);
        zzah zzahVar = (zzah) getService();
        if (zzF()) {
            zzahVar.zzg(str, zzff.zza(getContext()));
        } else {
            zzM(CastStatusCodes.DEVICE_CONNECTION_SUSPENDED);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzu() {
        zzah zzahVar = (zzah) getService();
        if (zzF()) {
            zzahVar.zzh(zzff.zza(getContext()));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzv(double d) {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            StringBuilder sb = new StringBuilder(String.valueOf(d).length() + 17);
            sb.append("Volume cannot be ");
            sb.append(d);
            throw new IllegalArgumentException(sb.toString());
        }
        zzah zzahVar = (zzah) getService();
        if (zzF()) {
            zzahVar.zzi(d, this.zzs, this.zzo, zzff.zza(getContext()));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzw(boolean z) {
        zzah zzahVar = (zzah) getService();
        if (zzF()) {
            zzahVar.zzj(z, this.zzs, this.zzo, zzff.zza(getContext()));
        }
    }

    public final double zzx() {
        checkConnected();
        return this.zzs;
    }

    public final boolean zzy() {
        checkConnected();
        return this.zzo;
    }

    public final int zzz() {
        checkConnected();
        return this.zzu;
    }
}
