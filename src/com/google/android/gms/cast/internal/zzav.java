package com.google.android.gms.cast.internal;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.cast.zzfk;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class zzav {
    public static final Object zzf = new Object();
    protected final Logger zza;
    zzat zzd;
    Runnable zze;
    private final long zzg;
    private final String zzh;
    private final Clock zzj = DefaultClock.getInstance();
    long zzb = -1;
    long zzc = 0;
    private final Handler zzi = new zzfk(Looper.getMainLooper());

    public zzav(long j, String str) {
        this.zzg = j;
        this.zzh = str;
        this.zza = new Logger("RequestTracker", str);
    }

    private final boolean zzg(int i, Object obj) {
        synchronized (zzf) {
            try {
                if (!zzb()) {
                    return false;
                }
                zzh(i, null, String.format(Locale.ROOT, "clearing request %d", Long.valueOf(this.zzb)));
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void zzh(int i, Object obj, String str) {
        this.zza.m282d(str, new Object[0]);
        Object obj2 = zzf;
        synchronized (obj2) {
            try {
                if (this.zzd != null) {
                    ((zzat) Preconditions.checkNotNull(this.zzd)).zzb(this.zzh, this.zzb, i, obj, this.zzc, this.zzj.currentTimeMillis());
                }
                this.zzb = -1L;
                this.zzd = null;
                synchronized (obj2) {
                    Runnable runnable = this.zze;
                    if (runnable != null) {
                        this.zzi.removeCallbacks(runnable);
                        this.zze = null;
                    }
                }
            } catch (Throwable th) {
                throw th;
            } finally {
            }
        }
    }

    public final void zza(long j, zzat zzatVar) {
        zzat zzatVar2;
        long j2;
        long j3;
        long jCurrentTimeMillis = this.zzj.currentTimeMillis();
        Object obj = zzf;
        synchronized (obj) {
            zzatVar2 = this.zzd;
            j2 = this.zzb;
            j3 = this.zzc;
            this.zzb = j;
            this.zzd = zzatVar;
            this.zzc = jCurrentTimeMillis;
        }
        if (zzatVar2 != null) {
            zzatVar2.zza(this.zzh, j2, j3, jCurrentTimeMillis);
        }
        synchronized (obj) {
            try {
                Runnable runnable = this.zze;
                if (runnable != null) {
                    this.zzi.removeCallbacks(runnable);
                }
                Runnable runnable2 = new Runnable() { // from class: com.google.android.gms.cast.internal.zzau
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        this.zza.zzf();
                    }
                };
                this.zze = runnable2;
                this.zzi.postDelayed(runnable2, this.zzg);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzb() {
        boolean z;
        synchronized (zzf) {
            z = this.zzb != -1;
        }
        return z;
    }

    public final boolean zzc(long j) {
        boolean z;
        synchronized (zzf) {
            long j2 = this.zzb;
            z = false;
            if (j2 != -1 && j2 == j) {
                z = true;
            }
        }
        return z;
    }

    public final boolean zzd(long j, int i, Object obj) {
        synchronized (zzf) {
            try {
                if (!zzc(j)) {
                    return false;
                }
                zzh(i, obj, String.format(Locale.ROOT, "request %d completed", Long.valueOf(j)));
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zze(int i) {
        return zzg(CastStatusCodes.CANCELED, null);
    }

    public final /* synthetic */ void zzf() {
        synchronized (zzf) {
            try {
                if (zzb()) {
                    zzg(15, null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
