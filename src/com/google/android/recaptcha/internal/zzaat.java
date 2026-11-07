package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzaat {
    private static final zzsc zza = new zzaas();

    public static zzsc zza() throws GeneralSecurityException {
        if (!zztf.zza()) {
            return zza;
        }
        zzsj$$ExternalSyntheticBUOutline1.m456m("Cannot use non-FIPS-compliant SignatureConfig2026 in FIPS mode");
        return null;
    }
}
