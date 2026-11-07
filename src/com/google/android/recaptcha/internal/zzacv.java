package com.google.android.recaptcha.internal;

import com.google.protobuf.FieldSet$$ExternalSyntheticBUOutline0;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes5.dex */
public final class zzacv implements zzss {
    private final byte[] zza;

    private zzacv(byte[] bArr, byte[] bArr2, byte[] bArr3) throws GeneralSecurityException {
        if (!zzte.zza(1)) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Can not use Ed25519 in FIPS-mode.");
            throw null;
        }
        if (bArr.length != 32) {
            FieldSet$$ExternalSyntheticBUOutline0.m481m("Given private key's length is not %s", new Object[]{32});
            throw null;
        }
        byte[] bArrZzb = zztp.zzb(bArr);
        this.zza = bArrZzb;
        zztp.zza(bArrZzb);
    }

    public static zzss zzb(zzyi zzyiVar) throws GeneralSecurityException {
        if (zzte.zza(1)) {
            try {
                return zzabu.zzb(zzyiVar);
            } catch (GeneralSecurityException unused) {
                return new zzacv(zzyiVar.zzf().zzb(zzsd.zza()), zzyiVar.zze().zze().zzc(), zzyiVar.zzd().zzb().equals(zzyg.zzc) ? new byte[]{0} : new byte[0]);
            }
        }
        zzsj$$ExternalSyntheticBUOutline1.m456m("Can not use Ed25519 in FIPS-mode.");
        return null;
    }

    @Override // com.google.android.recaptcha.internal.zzss
    public final byte[] zza(byte[] bArr) {
        throw null;
    }
}
