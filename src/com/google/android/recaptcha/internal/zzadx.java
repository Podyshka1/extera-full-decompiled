package com.google.android.recaptcha.internal;

import com.google.android.gms.cast.MediaStatus;
import java.math.BigInteger;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzadx {
    static {
        String.format("^projects/%s/locations/%s/keyRings/%s/cryptoKeys/%s$", "([0-9a-zA-Z\\-\\.\\_~])+", "([0-9a-zA-Z\\-\\.\\_~])+", "([0-9a-zA-Z\\-\\.\\_~])+", "([0-9a-zA-Z\\-\\.\\_~])+");
        String.format("^projects/%s/locations/%s/keyRings/%s/cryptoKeys/%s/cryptoKeyVersions/%s$", "([0-9a-zA-Z\\-\\.\\_~])+", "([0-9a-zA-Z\\-\\.\\_~])+", "([0-9a-zA-Z\\-\\.\\_~])+", "([0-9a-zA-Z\\-\\.\\_~])+", "([0-9a-zA-Z\\-\\.\\_~])+");
    }

    public static void zza(zzado zzadoVar) throws GeneralSecurityException {
        int iOrdinal = zzadoVar.ordinal();
        if (iOrdinal != 2 && iOrdinal != 3 && iOrdinal != 4) {
            throw new GeneralSecurityException("Unsupported hash: ".concat(String.valueOf(zzadoVar.name())));
        }
    }

    public static void zzc(BigInteger bigInteger) throws GeneralSecurityException {
        if (!bigInteger.testBit(0)) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Public exponent must be odd.");
        } else {
            if (bigInteger.compareTo(BigInteger.valueOf(MediaStatus.COMMAND_FOLLOW)) > 0) {
                return;
            }
            zzsj$$ExternalSyntheticBUOutline1.m456m("Public exponent must be greater than 65536.");
        }
    }

    public static void zzb(int i) throws GeneralSecurityException {
        if (i < 2048) {
            throw new GeneralSecurityException(String.format("Modulus size is %d; only modulus size >= 2048-bit is supported", Integer.valueOf(i)));
        }
        if (zztf.zza() && i != 2048 && i != 3072) {
            throw new GeneralSecurityException(String.format("Modulus size is %d; only modulus size of 2048- or 3072-bit is supported in FIPS mode.", Integer.valueOf(i)));
        }
    }
}
