package com.google.android.gms.cast.framework;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.cast.internal.Logger;

/* JADX INFO: loaded from: classes4.dex */
public class ReconnectionService extends Service {
    private static final Logger zza = new Logger("ReconnectionService");
    private zzat zzb;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        zzat zzatVar = this.zzb;
        if (zzatVar != null) {
            try {
                return zzatVar.zzf(intent);
            } catch (RemoteException e) {
                zza.m337d(e, "Unable to call %s on %s.", "onBind", zzat.class.getSimpleName());
            }
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        CastContext sharedInstance = CastContext.getSharedInstance(this);
        zzat zzatVarZzc = com.google.android.gms.internal.cast.zzag.zzc(this, sharedInstance.getSessionManager().zzb(), sharedInstance.zzc().zza());
        this.zzb = zzatVarZzc;
        if (zzatVarZzc != null) {
            try {
                zzatVarZzc.zzg();
            } catch (RemoteException e) {
                zza.m337d(e, "Unable to call %s on %s.", "onCreate", zzat.class.getSimpleName());
            }
            super.onCreate();
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        zzat zzatVar = this.zzb;
        if (zzatVar != null) {
            try {
                zzatVar.zzh();
            } catch (RemoteException e) {
                zza.m337d(e, "Unable to call %s on %s.", "onDestroy", zzat.class.getSimpleName());
            }
            super.onDestroy();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        zzat zzatVar = this.zzb;
        if (zzatVar != null) {
            try {
                return zzatVar.zze(intent, i, i2);
            } catch (RemoteException e) {
                zza.m337d(e, "Unable to call %s on %s.", "onStartCommand", zzat.class.getSimpleName());
            }
        }
        return 2;
    }
}
