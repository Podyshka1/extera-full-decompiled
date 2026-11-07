package com.google.android.recaptcha.internal;

import com.google.protobuf.FieldSet$$ExternalSyntheticBUOutline0;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.spec.PKCS8EncodedKeySpec;

/* JADX INFO: loaded from: classes5.dex */
public final class zzabu implements zzss {
    private static final byte[] zza = {48, 46, 2, 1, 0, 48, 5, 6, 3, 43, 101, 112, 4, 34, 4, 32};

    private zzabu(byte[] bArr, byte[] bArr2, byte[] bArr3, Provider provider) throws GeneralSecurityException {
        if (!zzte.zza(1)) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Can not use Ed25519 in FIPS-mode.");
            throw null;
        }
        if (bArr.length != 32) {
            FieldSet$$ExternalSyntheticBUOutline0.m505m("Given private key's length is not %s", new Object[]{32});
            throw null;
        }
        KeyFactory.getInstance("Ed25519", provider).generatePrivate(new PKCS8EncodedKeySpec(zzacu.zza(zza, bArr)));
    }

    public static zzss zzb(zzyi zzyiVar) throws NoSuchProviderException {
        Provider providerZza = zzti.zza();
        if (providerZza != null) {
            return new zzabu(zzyiVar.zzf().zzb(zzsd.zza()), zzyiVar.zze().zze().zzc(), zzyiVar.zzd().zzb().equals(zzyg.zzc) ? new byte[]{0} : new byte[0], providerZza);
        }
        throw new NoSuchProviderException("Ed25519SignJce requires the Conscrypt provider.");
    }

    @Override // com.google.android.recaptcha.internal.zzss
    public final byte[] zza(byte[] bArr) {
        throw null;
    }
}
