package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzsn {
    public static final zzsn zza = new zzsn("UNKNOWN_KEYMATERIAL");
    public static final zzsn zzb = new zzsn("SYMMETRIC");
    public static final zzsn zzc = new zzsn("ASYMMETRIC_PRIVATE");
    public static final zzsn zzd = new zzsn("ASYMMETRIC_PUBLIC");
    public static final zzsn zze = new zzsn("REMOTE");
    private final String zzf;

    private zzsn(String str) {
        this.zzf = str;
    }

    public final String toString() {
        return this.zzf;
    }
}
