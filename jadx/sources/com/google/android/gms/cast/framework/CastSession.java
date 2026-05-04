package com.google.android.gms.cast.framework;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzbf;
import com.google.android.gms.tasks.Task;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class CastSession extends Session {
    private static final Logger zzb = new Logger("CastSession");
    private final Context zzc;
    private final Set zzd;
    private final zzam zze;
    private final CastOptions zzf;
    private final zzbf zzg;
    private final com.google.android.gms.cast.framework.media.internal.zzv zzh;
    private com.google.android.gms.cast.zzr zzi;
    private RemoteMediaClient zzj;
    private CastDevice zzk;
    private Cast.ApplicationConnectionResult zzl;
    private zzs zzm;
    private final zzo zzn;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CastSession(Context context, String str, String str2, CastOptions castOptions, zzbf zzbfVar, com.google.android.gms.cast.framework.media.internal.zzv zzvVar) {
        super(context, str, str2);
        zzo zzoVar = new Object() { // from class: com.google.android.gms.cast.framework.zzo
        };
        this.zzd = new HashSet();
        this.zzc = context.getApplicationContext();
        this.zzf = castOptions;
        this.zzg = zzbfVar;
        this.zzh = zzvVar;
        this.zzn = zzoVar;
        this.zze = com.google.android.gms.internal.cast.zzag.zzb(context, castOptions, zzn(), new zzw(this, null));
    }

    static /* bridge */ /* synthetic */ void zzh(CastSession castSession, int i) {
        castSession.zzh.zzi(i);
        com.google.android.gms.cast.zzr zzrVar = castSession.zzi;
        if (zzrVar != null) {
            zzrVar.zzf();
            castSession.zzi = null;
        }
        castSession.zzk = null;
        RemoteMediaClient remoteMediaClient = castSession.zzj;
        if (remoteMediaClient != null) {
            remoteMediaClient.zzs(null);
            castSession.zzj = null;
        }
        castSession.zzl = null;
    }

    static /* bridge */ /* synthetic */ void zzi(CastSession castSession, String str, Task task) {
        if (castSession.zze == null) {
            return;
        }
        try {
            if (task.isSuccessful()) {
                Cast.ApplicationConnectionResult applicationConnectionResult = (Cast.ApplicationConnectionResult) task.getResult();
                castSession.zzl = applicationConnectionResult;
                if (applicationConnectionResult.getStatus() != null && applicationConnectionResult.getStatus().isSuccess()) {
                    zzb.m336d("%s() -> success result", str);
                    RemoteMediaClient remoteMediaClient = new RemoteMediaClient(new com.google.android.gms.cast.internal.zzaq(null));
                    castSession.zzj = remoteMediaClient;
                    remoteMediaClient.zzs(castSession.zzi);
                    castSession.zzj.registerCallback(new zzr(castSession));
                    castSession.zzj.zzq();
                    castSession.zzh.zzh(castSession.zzj, castSession.getCastDevice());
                    castSession.zze.zzf((ApplicationMetadata) Preconditions.checkNotNull(applicationConnectionResult.getApplicationMetadata()), applicationConnectionResult.getApplicationStatus(), (String) Preconditions.checkNotNull(applicationConnectionResult.getSessionId()), applicationConnectionResult.getWasLaunched());
                    return;
                }
                if (applicationConnectionResult.getStatus() != null) {
                    zzb.m336d("%s() -> failure result", str);
                    castSession.zze.zzg(applicationConnectionResult.getStatus().getStatusCode());
                    return;
                }
            } else {
                Exception exception = task.getException();
                if (exception instanceof ApiException) {
                    castSession.zze.zzg(((ApiException) exception).getStatusCode());
                    return;
                }
            }
            castSession.zze.zzg(2476);
        } catch (RemoteException e) {
            zzb.m337d(e, "Unable to call %s on %s.", "methods", zzam.class.getSimpleName());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zzo(Bundle bundle) {
        CastDevice fromBundle = CastDevice.getFromBundle(bundle);
        this.zzk = fromBundle;
        if (fromBundle == null) {
            if (isResuming()) {
                notifyFailedToResumeSession(2153);
                return;
            } else {
                notifyFailedToStartSession(2151);
                return;
            }
        }
        com.google.android.gms.cast.zzr zzrVar = this.zzi;
        zzx zzxVar = null;
        Object[] objArr = 0;
        if (zzrVar != null) {
            zzrVar.zzf();
            this.zzi = null;
        }
        zzb.m336d("Acquiring a connection to Google Play Services for %s", this.zzk);
        CastDevice castDevice = (CastDevice) Preconditions.checkNotNull(this.zzk);
        Bundle bundle2 = new Bundle();
        CastOptions castOptions = this.zzf;
        CastMediaOptions castMediaOptions = castOptions == null ? null : castOptions.getCastMediaOptions();
        NotificationOptions notificationOptions = castMediaOptions == null ? null : castMediaOptions.getNotificationOptions();
        boolean z = castMediaOptions != null && castMediaOptions.zza();
        bundle2.putBoolean("com.google.android.gms.cast.EXTRA_CAST_FRAMEWORK_NOTIFICATION_ENABLED", notificationOptions != null);
        bundle2.putBoolean("com.google.android.gms.cast.EXTRA_CAST_REMOTE_CONTROL_NOTIFICATION_ENABLED", z);
        bundle2.putBoolean("com.google.android.gms.cast.EXTRA_CAST_ALWAYS_FOLLOW_SESSION_ENABLED", this.zzg.zzs());
        Cast.CastOptions.Builder builder = new Cast.CastOptions.Builder(castDevice, new zzy(this, zzxVar));
        builder.zzc(bundle2);
        com.google.android.gms.cast.zzr zzrVarZza = Cast.zza(this.zzc, builder.build());
        zzrVarZza.zzk(new zzaa(this, objArr == true ? 1 : 0));
        this.zzi = zzrVarZza;
        zzrVarZza.zze();
    }

    @Override // com.google.android.gms.cast.framework.Session
    protected void end(boolean z) {
        zzam zzamVar = this.zze;
        if (zzamVar != null) {
            try {
                zzamVar.zze(z, 0);
            } catch (RemoteException e) {
                zzb.m337d(e, "Unable to call %s on %s.", "disconnectFromDevice", zzam.class.getSimpleName());
            }
            notifySessionEnded(0);
        }
    }

    public CastDevice getCastDevice() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzk;
    }

    public RemoteMediaClient getRemoteMediaClient() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzj;
    }

    @Override // com.google.android.gms.cast.framework.Session
    public long getSessionRemainingTimeMs() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        RemoteMediaClient remoteMediaClient = this.zzj;
        if (remoteMediaClient == null) {
            return 0L;
        }
        return remoteMediaClient.getStreamDuration() - this.zzj.getApproximateStreamPosition();
    }

    @Override // com.google.android.gms.cast.framework.Session
    protected void onResuming(Bundle bundle) {
        this.zzk = CastDevice.getFromBundle(bundle);
    }

    @Override // com.google.android.gms.cast.framework.Session
    protected void onStarting(Bundle bundle) {
        this.zzk = CastDevice.getFromBundle(bundle);
    }

    @Override // com.google.android.gms.cast.framework.Session
    protected void resume(Bundle bundle) {
        zzo(bundle);
    }

    @Override // com.google.android.gms.cast.framework.Session
    protected void start(Bundle bundle) {
        zzo(bundle);
    }

    public final void zzj(zzs zzsVar) {
        this.zzm = zzsVar;
    }

    @Override // com.google.android.gms.cast.framework.Session
    protected final void zzk(Bundle bundle) {
        CastDevice castDevice;
        CastDevice castDevice2;
        CastDevice fromBundle = CastDevice.getFromBundle(bundle);
        if (fromBundle == null || fromBundle.equals(this.zzk)) {
            return;
        }
        boolean z = !TextUtils.isEmpty(fromBundle.getFriendlyName()) && ((castDevice2 = this.zzk) == null || !TextUtils.equals(castDevice2.getFriendlyName(), fromBundle.getFriendlyName()));
        this.zzk = fromBundle;
        zzb.m336d("update to device (%s) with name %s", fromBundle, true != z ? "unchanged" : "changed");
        if (!z || (castDevice = this.zzk) == null) {
            return;
        }
        com.google.android.gms.cast.framework.media.internal.zzv zzvVar = this.zzh;
        if (zzvVar != null) {
            zzvVar.zzk(castDevice);
        }
        Iterator it = new HashSet(this.zzd).iterator();
        while (it.hasNext()) {
            ((Cast.Listener) it.next()).onDeviceNameChanged();
        }
    }

    public final boolean zzl() {
        return this.zzg.zzs();
    }
}
