package com.google.android.recaptcha.internal;

import java.security.KeyFactory;
import java.security.NoSuchProviderException;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzadv implements zzst {
    static final zztv zza;
    private static final byte[] zzb;
    private static final byte[] zzc;

    static {
        zztu zztuVarZza = zztv.zza();
        zztuVarZza.zza(zzado.SHA256, zzaaf.zza);
        zztuVarZza.zza(zzado.SHA384, zzaaf.zzb);
        zztuVarZza.zza(zzado.SHA512, zzaaf.zzc);
        zza = zztuVarZza.zzb();
        zzb = new byte[0];
        zzc = new byte[]{0};
    }

    public static zzst zzb(zzaal zzaalVar) {
        try {
            return zzacn.zze(zzaalVar);
        } catch (NoSuchProviderException unused) {
            RSAPublicKey rSAPublicKey = (RSAPublicKey) ((KeyFactory) zzadf.zzc.zzb("RSA")).generatePublic(new RSAPublicKeySpec(zzaalVar.zzd(), zzaalVar.zzf().zzc()));
            zzaah zzaahVarZzf = zzaalVar.zzf();
            zztv zztvVar = zza;
            return new zzadu(rSAPublicKey, (zzado) zztvVar.zzb(zzaahVarZzf.zze()), (zzado) zztvVar.zzb(zzaahVarZzf.zzf()), zzaahVarZzf.zzg(), zzaalVar.zze().zzc(), zzaalVar.zzf().zzd().equals(zzaag.zzc) ? zzc : zzb, null);
        }
    }
}
