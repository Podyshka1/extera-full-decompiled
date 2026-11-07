package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzadw {
    public static String zza(zzado zzadoVar) throws GeneralSecurityException {
        zzadx.zza(zzadoVar);
        return zzadoVar.toString().concat("withECDSA");
    }

    public static String zzb(zzado zzadoVar) throws GeneralSecurityException {
        int iOrdinal = zzadoVar.ordinal();
        if (iOrdinal == 0) {
            return "SHA-1";
        }
        if (iOrdinal == 1) {
            return "SHA-224";
        }
        if (iOrdinal == 2) {
            return "SHA-256";
        }
        if (iOrdinal == 3) {
            return "SHA-384";
        }
        if (iOrdinal == 4) {
            return "SHA-512";
        }
        throw new GeneralSecurityException("Unsupported hash ".concat(zzadoVar.toString()));
    }
}
