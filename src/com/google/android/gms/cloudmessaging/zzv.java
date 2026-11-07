package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class zzv {
    private static zzv zza;
    private final Context zzb;
    private final ScheduledExecutorService zzc;
    private zzp zzd = new zzp(this, null);
    private int zze = 1;

    public zzv(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.zzc = scheduledExecutorService;
        this.zzb = context.getApplicationContext();
    }

    public static synchronized zzv zza(Context context) {
        try {
            if (zza == null) {
                com.google.android.gms.internal.cloudmessaging.zzu.zza();
                zza = new zzv(context, Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, new NamedThreadFactory("MessengerIpcClient"))));
            }
        } catch (Throwable th) {
            throw th;
        }
        return zza;
    }

    private final synchronized Task zzf(zzs zzsVar) {
        try {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                Log.d("MessengerIpcClient", "Queueing ".concat(zzsVar.toString()));
            }
            if (!this.zzd.zza(zzsVar)) {
                zzp zzpVar = new zzp(this, null);
                this.zzd = zzpVar;
                zzpVar.zza(zzsVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return zzsVar.zzb.getTask();
    }

    private final synchronized int zzg() {
        int i;
        i = this.zze;
        this.zze = i + 1;
        return i;
    }

    public final Task zzb(int i, Bundle bundle) {
        return zzf(new zzr(zzg(), i, bundle));
    }

    public final Task zzc(int i, Bundle bundle) {
        return zzf(new zzu(zzg(), i, bundle));
    }

    public final /* synthetic */ Context zzd() {
        return this.zzb;
    }

    public final /* synthetic */ ScheduledExecutorService zze() {
        return this.zzc;
    }
}
