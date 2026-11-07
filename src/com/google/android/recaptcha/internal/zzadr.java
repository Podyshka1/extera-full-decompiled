package com.google.android.recaptcha.internal;

import java.security.KeyFactory;
import java.security.NoSuchProviderException;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzadr implements zzst {
    static final zztv zza;
    private static final byte[] zzb = new byte[0];
    private static final byte[] zzc = {0};

    static {
        zztu zztuVarZza = zztv.zza();
        zztuVarZza.zza(zzado.SHA256, zzzt.zza);
        zztuVarZza.zza(zzado.SHA384, zzzt.zzb);
        zztuVarZza.zza(zzado.SHA512, zzzt.zzc);
        zza = zztuVarZza.zzb();
    }

    public static zzst zzb(zzzz zzzzVar) {
        try {
            return zzace.zzd(zzzzVar);
        } catch (NoSuchProviderException unused) {
            return new zzadq((RSAPublicKey) ((KeyFactory) zzadf.zzc.zzb("RSA")).generatePublic(new RSAPublicKeySpec(zzzzVar.zzd(), zzzzVar.zzf().zzc())), (zzado) zza.zzb(zzzzVar.zzf().zze()), zzzzVar.zze().zzc(), zzzzVar.zzf().zzd().equals(zzzu.zzc) ? zzc : zzb, null);
        }
    }
}
