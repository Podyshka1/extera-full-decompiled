package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.RemoteException;
import android.util.Log;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzgb implements ServiceConnection {
    protected final Object zza;
    protected zzpk zzb;
    protected zzgu zzc;
    final /* synthetic */ zzgl zzd;

    public zzgb(zzgl zzglVar) {
        Objects.requireNonNull(zzglVar);
        this.zzd = zzglVar;
        this.zza = new Object();
        this.zzc = new zzgu();
        zza();
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        zzf(zzdo.zze(603, "AiCore service binding died.", null));
    }

    @Override // android.content.ServiceConnection
    public final void onNullBinding(ComponentName componentName) {
        zzf(zzdo.zze(605, "AiCore service returns null on binding.", null));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.zza) {
            this.zzc.zzb();
            this.zzb.zzi(zzdo.zze(602, "AiCore service disconnected.", null));
            zza();
        }
    }

    public final void zza() {
        synchronized (this.zza) {
            this.zzb = zzpk.zza();
            this.zzc = new zzgu();
        }
    }

    public abstract void zzb();

    /* JADX WARN: Removed duplicated region for block: B:24:0x004e A[Catch: all -> 0x0032, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000d, B:10:0x0015, B:12:0x001d, B:22:0x003a, B:23:0x0044, B:24:0x004e, B:25:0x0057, B:26:0x0063), top: B:30:0x0003, inners: #3, #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzc() {
        synchronized (this.zza) {
            zzpk zzpkVar = this.zzb;
            if (zzpkVar == null || !zzpkVar.isDone()) {
                this.zzd.zza.unbindService(this);
                this.zzc.zzb();
            } else if (!this.zzb.isCancelled()) {
                zzgl zzglVar = this.zzd;
                if (zzglVar.zzo()) {
                    Log.i(zzgl.zzc, "Service context future was cancelled, no need to unlinkToDeath.");
                } else {
                    try {
                        ((zzdh) zzot.zzi(this.zzb)).zza().asBinder().unlinkToDeath(zzglVar, 0);
                    } catch (NoSuchElementException e) {
                        Log.w(zzgl.zzc, "Attempted to unlink a death recipient that was not registered. This is safe to ignore.", e);
                    } catch (RuntimeException e2) {
                        e = e2;
                        Log.e(zzgl.zzc, "Failed to get service for unbind, unable to call unlinkToDeath. Cause: ", e);
                    } catch (ExecutionException e3) {
                        e = e3;
                        Log.e(zzgl.zzc, "Failed to get service for unbind, unable to call unlinkToDeath. Cause: ", e);
                    }
                }
                this.zzd.zza.unbindService(this);
                this.zzc.zzb();
            }
        }
    }

    public final boolean zzd(Intent intent) {
        zzgl zzglVar = this.zzd;
        return zzglVar.zza.bindService(intent, this, true == zzglVar.zzs() ? 65 : 1);
    }

    public final void zze(zzan zzanVar) {
        synchronized (this.zza) {
            this.zzb.zzh(zzdh.zzc(zzanVar, this.zzc));
            zzgl zzglVar = this.zzd;
            if (!zzglVar.zzo()) {
                try {
                    zzanVar.asBinder().linkToDeath(zzglVar, 0);
                } catch (RemoteException e) {
                    zzf(zzdo.zze(6, "AICore service died before linking death recipient.", e));
                }
            }
        }
    }

    public final void zzf(zzdo zzdoVar) {
        synchronized (this.zza) {
            this.zzb.zzi(zzdoVar);
        }
        this.zzd.zzj();
    }
}
