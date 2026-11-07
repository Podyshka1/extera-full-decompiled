package com.google.android.gms.cast.framework;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.cast.internal.Logger;

/* JADX INFO: loaded from: classes4.dex */
public class ReconnectionService extends Service {
    private static final Logger zza = new Logger("ReconnectionService");
    private zzas zzb;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        zzas zzasVar = this.zzb;
        if (zzasVar != null) {
            try {
                return zzasVar.zzg(intent);
            } catch (RemoteException e) {
                zza.m288d(e, "Unable to call %s on %s.", "onBind", zzas.class.getSimpleName());
            }
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        CastContext sharedInstance = CastContext.getSharedInstance(this);
        zzas zzasVarZzd = com.google.android.gms.internal.cast.zzay.zzd(this, sharedInstance.getSessionManager().zzd(), sharedInstance.zzc().zza());
        this.zzb = zzasVarZzd;
        if (zzasVarZzd != null) {
            try {
                zzasVarZzd.zze();
            } catch (RemoteException e) {
                zza.m288d(e, "Unable to call %s on %s.", "onCreate", zzas.class.getSimpleName());
            }
            super.onCreate();
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        zzas zzasVar = this.zzb;
        if (zzasVar != null) {
            try {
                zzasVar.zzh();
            } catch (RemoteException e) {
                zza.m288d(e, "Unable to call %s on %s.", "onDestroy", zzas.class.getSimpleName());
            }
            super.onDestroy();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        zzas zzasVar = this.zzb;
        if (zzasVar != null) {
            try {
                return zzasVar.zzf(intent, i, i2);
            } catch (RemoteException e) {
                zza.m288d(e, "Unable to call %s on %s.", "onStartCommand", zzas.class.getSimpleName());
            }
        }
        return 2;
    }
}
