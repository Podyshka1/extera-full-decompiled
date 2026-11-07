package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzso {
    public static final zzso zza = new zzso("UNKNOWN_PREFIX");
    public static final zzso zzb = new zzso("TINK");
    public static final zzso zzc = new zzso("LEGACY");
    public static final zzso zzd = new zzso("RAW");
    public static final zzso zze = new zzso("CRUNCHY");
    public static final zzso zzf = new zzso("WITH_ID_REQUIREMENT");
    private final String zzg;

    private zzso(String str) {
        this.zzg = str;
    }

    public final String toString() {
        return this.zzg;
    }
}
