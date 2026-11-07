package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.security.interfaces.RSAPrivateCrtKey;

/* JADX INFO: loaded from: classes5.dex */
final class zzads implements zzss {
    public /* synthetic */ zzads(RSAPrivateCrtKey rSAPrivateCrtKey, zzado zzadoVar, zzado zzadoVar2, int i, byte[] bArr, byte[] bArr2, byte[] bArr3) throws GeneralSecurityException {
        if (zztf.zza()) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Can not use RSA PSS in FIPS-mode, as BoringCrypto module is not available.");
            throw null;
        }
        zzadx.zza(zzadoVar);
        if (!zzadoVar.equals(zzadoVar2)) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("sigHash and mgf1Hash must be the same");
            throw null;
        }
        zzadx.zzb(rSAPrivateCrtKey.getModulus().bitLength());
        zzadx.zzc(rSAPrivateCrtKey.getPublicExponent());
    }

    @Override // com.google.android.recaptcha.internal.zzss
    public final byte[] zza(byte[] bArr) {
        throw null;
    }
}
