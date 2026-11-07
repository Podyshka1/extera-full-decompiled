package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
final class zzff {
    private final Map zza = new HashMap();

    public final void zzb(IBinder iBinder) {
        zzfb zzfbVar;
        synchronized (this.zza) {
            if (iBinder == null) {
                zzfbVar = null;
            } else {
                try {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzfbVar = iInterfaceQueryLocalInterface instanceof zzfb ? (zzfb) iInterfaceQueryLocalInterface : new zzfb(iBinder);
                } catch (Throwable th) {
                    throw th;
                }
            }
            zzib zzibVar = new zzib();
            for (Map.Entry entry : this.zza.entrySet()) {
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(entry.getValue());
                try {
                    zzfbVar.zzd(zzibVar, new zzd(null));
                    if (Log.isLoggable("WearableClient", 3)) {
                        Log.d("WearableClient", "onPostInitHandler: added: " + String.valueOf(entry.getKey()) + "/null");
                    }
                } catch (RemoteException unused) {
                    Log.w("WearableClient", "onPostInitHandler: Didn't add: " + String.valueOf(entry.getKey()) + "/null");
                }
            }
        }
    }
}
