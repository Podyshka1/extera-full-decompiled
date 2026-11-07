package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzzu {
    public static final zzzu zza = new zzzu("TINK");
    public static final zzzu zzb = new zzzu("CRUNCHY");
    public static final zzzu zzc = new zzzu("LEGACY");
    public static final zzzu zzd = new zzzu("NO_PREFIX");
    private final String zze;

    private zzzu(String str) {
        this.zze = str;
    }

    public final String toString() {
        return this.zze;
    }
}
