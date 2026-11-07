package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzsg {
    public static final zzsg zza = new zzsg("ENABLED");
    public static final zzsg zzb = new zzsg("DISABLED");
    public static final zzsg zzc = new zzsg("DESTROYED");
    private final String zzd;

    private zzsg(String str) {
        this.zzd = str;
    }

    public final String toString() {
        return this.zzd;
    }
}
