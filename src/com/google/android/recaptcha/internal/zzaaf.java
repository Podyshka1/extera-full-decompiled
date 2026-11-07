package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaaf {
    public static final zzaaf zza = new zzaaf("SHA256");
    public static final zzaaf zzb = new zzaaf("SHA384");
    public static final zzaaf zzc = new zzaaf("SHA512");
    private final String zzd;

    private zzaaf(String str) {
        this.zzd = str;
    }

    public final String toString() {
        return this.zzd;
    }
}
