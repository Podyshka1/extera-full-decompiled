package com.google.android.recaptcha.internal;

import java.security.spec.ECParameterSpec;

/* JADX INFO: loaded from: classes5.dex */
public final class zzxt {
    public static final zzxt zza = new zzxt("NIST_P256", zztt.zza);
    public static final zzxt zzb = new zzxt("NIST_P384", zztt.zzb);
    public static final zzxt zzc = new zzxt("NIST_P521", zztt.zzc);
    private final String zzd;
    private final ECParameterSpec zze;

    private zzxt(String str, ECParameterSpec eCParameterSpec) {
        this.zzd = str;
        this.zze = eCParameterSpec;
    }

    public final String toString() {
        return this.zzd;
    }

    public final ECParameterSpec zza() {
        return this.zze;
    }
}
