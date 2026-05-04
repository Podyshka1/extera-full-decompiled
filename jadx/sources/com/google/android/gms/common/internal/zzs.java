package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class zzs extends GmsClientSupervisor {
    private final HashMap zzb = new HashMap();
    private final Context zzc;
    private volatile Handler zzd;
    private final zzq zze;
    private final ConnectionTracker zzf;
    private final long zzg;
    private final long zzh;
    private volatile Executor zzi;

    zzs(Context context, Looper looper, Executor executor) {
        zzq zzqVar = new zzq(this, null);
        this.zze = zzqVar;
        this.zzc = context.getApplicationContext();
        this.zzd = new com.google.android.gms.internal.common.zzh(looper, zzqVar);
        this.zzf = ConnectionTracker.getInstance();
        this.zzg = 5000L;
        this.zzh = 300000L;
        this.zzi = executor;
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    protected final ConnectionResult zza(zzo zzoVar, ServiceConnection serviceConnection, String str, Executor executor) {
        ConnectionResult connectionResultZzd;
        Preconditions.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.zzb) {
            try {
                zzp zzpVar = (zzp) this.zzb.get(zzoVar);
                if (executor == null) {
                    executor = this.zzi;
                }
                if (zzpVar == null) {
                    zzpVar = new zzp(this, zzoVar);
                    zzpVar.zze(serviceConnection, serviceConnection, str);
                    connectionResultZzd = zzp.zzd(zzpVar, str, executor);
                    this.zzb.put(zzoVar, zzpVar);
                } else {
                    this.zzd.removeMessages(0, zzoVar);
                    if (zzpVar.zzh(serviceConnection)) {
                        throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=" + zzoVar.toString());
                    }
                    zzpVar.zze(serviceConnection, serviceConnection, str);
                    int iZza = zzpVar.zza();
                    if (iZza == 1) {
                        serviceConnection.onServiceConnected(zzpVar.zzb(), zzpVar.zzc());
                    } else if (iZza == 2) {
                        connectionResultZzd = zzp.zzd(zzpVar, str, executor);
                    }
                    connectionResultZzd = null;
                }
                if (zzpVar.zzj()) {
                    return ConnectionResult.RESULT_SUCCESS;
                }
                if (connectionResultZzd == null) {
                    connectionResultZzd = new ConnectionResult(-1);
                }
                return connectionResultZzd;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    protected final void zzb(zzo zzoVar, ServiceConnection serviceConnection, String str) {
        Preconditions.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.zzb) {
            try {
                zzp zzpVar = (zzp) this.zzb.get(zzoVar);
                if (zzpVar == null) {
                    throw new IllegalStateException("Nonexistent connection status for service config: " + zzoVar.toString());
                }
                if (!zzpVar.zzh(serviceConnection)) {
                    throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=" + zzoVar.toString());
                }
                zzpVar.zzf(serviceConnection, str);
                if (zzpVar.zzi()) {
                    this.zzd.sendMessageDelayed(this.zzd.obtainMessage(0, zzoVar), this.zzg);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
