package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
final class zzka {
    private static final zzjz zza;
    private static final zzjz zzb;

    static {
        zzjz zzjzVar = null;
        try {
            zzjzVar = (zzjz) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        zza = zzjzVar;
        zzb = new zzjz();
    }

    public static zzjz zza() {
        return zza;
    }

    public static zzjz zzb() {
        return zzb;
    }
}
