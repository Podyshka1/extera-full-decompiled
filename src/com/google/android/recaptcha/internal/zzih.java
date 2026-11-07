package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzih implements zzii {
    public static final zzih zza = new zzih();
    private static final String zzb = "https://www.gstatic.com/recaptcha/verify_key/orcas/prod/android/verify_key.txt";
    private static final String zzc = "https://www.recaptcha.net/recaptcha/api3";

    static {
        zzig zzigVar = zzig.zza;
    }

    private zzih() {
    }

    @Override // com.google.android.recaptcha.internal.zzii
    public final String zza() {
        return zzb;
    }

    @Override // com.google.android.recaptcha.internal.zzii
    public final String zzb() {
        return zzc;
    }
}
