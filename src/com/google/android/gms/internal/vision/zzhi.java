package com.google.android.gms.internal.vision;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzhi {
    private static final Class<?> zza = zza("libcore.io.Memory");
    private static final boolean zzb;

    public static boolean zza() {
        return (zza == null || zzb) ? false : true;
    }

    public static Class<?> zzb() {
        return zza;
    }

    private static <T> Class<T> zza(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    static {
        zzb = zza("org.robolectric.Robolectric") != null;
    }
}
