package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class GmsClientSupervisor {
    static HandlerThread zza = null;
    private static final Object zzb = new Object();
    private static int zzc = 9;
    private static zzs zzd = null;
    private static Executor zze = null;
    private static boolean zzf = false;

    public static GmsClientSupervisor getInstance(Context context) {
        synchronized (zzb) {
            try {
                if (zzd == null) {
                    zzd = new zzs(context.getApplicationContext(), zzf ? getOrStartHandlerThread().getLooper() : context.getMainLooper(), zze);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzd;
    }

    public static HandlerThread getOrStartHandlerThread() {
        synchronized (zzb) {
            try {
                HandlerThread handlerThread = zza;
                if (handlerThread != null) {
                    return handlerThread;
                }
                HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", zzc);
                zza = handlerThread2;
                handlerThread2.start();
                return zza;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected abstract ConnectionResult zza(zzo zzoVar, ServiceConnection serviceConnection, String str, Executor executor);

    protected abstract void zzb(zzo zzoVar, ServiceConnection serviceConnection, String str);

    public final void zzc(String str, String str2, int i, ServiceConnection serviceConnection, String str3, boolean z) {
        zzb(new zzo(str, str2, 4225, z), serviceConnection, str3);
    }
}
