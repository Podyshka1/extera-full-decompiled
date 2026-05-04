package com.google.android.gms.ads.identifier;

import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
final class zzb extends Thread {
    final CountDownLatch zza = new CountDownLatch(1);
    boolean zzb = false;
    private final WeakReference zzc;
    private final long zzd;

    public zzb(AdvertisingIdClient advertisingIdClient, long j) {
        this.zzc = new WeakReference(advertisingIdClient);
        this.zzd = j;
        start();
    }

    private final void zza() {
        AdvertisingIdClient advertisingIdClient = (AdvertisingIdClient) this.zzc.get();
        if (advertisingIdClient != null) {
            advertisingIdClient.zza();
            this.zzb = true;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            if (this.zza.await(this.zzd, TimeUnit.MILLISECONDS)) {
                return;
            }
            zza();
        } catch (InterruptedException unused) {
            zza();
        }
    }
}
