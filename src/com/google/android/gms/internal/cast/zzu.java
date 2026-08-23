package com.google.android.gms.internal.cast;

import com.google.android.gms.common.util.DefaultClock;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zzu {
    private static zzu zza;

    private zzu(zzj zzjVar, String str) {
        new ConcurrentHashMap();
        DefaultClock.getInstance();
    }

    public static synchronized void zza(zzj zzjVar, String str) {
        if (zza == null) {
            zza = new zzu(zzjVar, str);
        }
    }
}
