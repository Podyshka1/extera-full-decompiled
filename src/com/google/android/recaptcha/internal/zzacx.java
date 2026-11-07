package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzacx implements zzst {
    public static zzst zzb(zzyo zzyoVar) throws GeneralSecurityException {
        if (zzte.zza(1)) {
            try {
                return zzabv.zzb(zzyoVar);
            } catch (GeneralSecurityException unused) {
                return new zzacw(zzyoVar.zzd().zzc(), zzyoVar.zze().zzc(), zzyoVar.zzf().zzb().equals(zzyg.zzc) ? new byte[]{0} : new byte[0], null);
            }
        }
        zzsj$$ExternalSyntheticBUOutline1.m480m("Can not use Ed25519 in FIPS-mode.");
        return null;
    }
}
