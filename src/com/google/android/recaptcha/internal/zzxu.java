package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzxu {
    public static final zzxu zza = new zzxu("SHA256");
    public static final zzxu zzb = new zzxu("SHA384");
    public static final zzxu zzc = new zzxu("SHA512");
    private final String zzd;

    private zzxu(String str) {
        this.zzd = str;
    }

    public final String toString() {
        return this.zzd;
    }
}
