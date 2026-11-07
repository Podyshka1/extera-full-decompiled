package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzzt {
    public static final zzzt zza = new zzzt("SHA256");
    public static final zzzt zzb = new zzzt("SHA384");
    public static final zzzt zzc = new zzzt("SHA512");
    private final String zzd;

    private zzzt(String str) {
        this.zzd = str;
    }

    public final String toString() {
        return this.zzd;
    }
}
