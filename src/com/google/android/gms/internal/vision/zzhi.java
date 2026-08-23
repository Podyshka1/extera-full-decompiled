package com.google.android.gms.internal.vision;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzhi {
    private static final Class zza = zza("libcore.io.Memory");
    private static final boolean zzb;

    static boolean zza() {
        return (zza == null || zzb) ? false : true;
    }

    static Class zzb() {
        return zza;
    }

    private static Class zza(String str) {
        try {
            return Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    static {
        zzb = zza("org.robolectric.Robolectric") != null;
    }
}
