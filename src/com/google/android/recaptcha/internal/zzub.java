package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzub {
    private final String zza;

    public static zzub zzc(zzua zzuaVar, String str) {
        return new zztz(str, zzuaVar);
    }

    public abstract zzse zza(zzsp zzspVar, zzsy zzsyVar);

    public final String zzb() {
        return this.zza;
    }
}
