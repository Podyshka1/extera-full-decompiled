package com.google.android.recaptcha.internal;

import java.security.KeyFactory;
import java.security.NoSuchProviderException;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.spec.RSAPrivateCrtKeySpec;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzadt implements zzss {
    private static final byte[] zza = new byte[0];
    private static final byte[] zzb = {0};

    public static zzss zzb(zzaaj zzaajVar) {
        try {
            return zzacm.zzb(zzaajVar);
        } catch (NoSuchProviderException unused) {
            RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) ((KeyFactory) zzadf.zzc.zzb("RSA")).generatePrivate(new RSAPrivateCrtKeySpec(zzaajVar.zze().zzd(), zzaajVar.zzd().zzc(), zzaajVar.zzi().zzb(zzsd.zza()), zzaajVar.zzf().zzb(zzsd.zza()), zzaajVar.zzh().zzb(zzsd.zza()), zzaajVar.zzj().zzb(zzsd.zza()), zzaajVar.zzk().zzb(zzsd.zza()), zzaajVar.zzl().zzb(zzsd.zza())));
            zzaah zzaahVarZzd = zzaajVar.zzd();
            zztv zztvVar = zzadv.zza;
            return new zzads(rSAPrivateCrtKey, (zzado) zztvVar.zzb(zzaahVarZzd.zze()), (zzado) zztvVar.zzb(zzaahVarZzd.zzf()), zzaahVarZzd.zzg(), zzaajVar.zze().zze().zzc(), zzaajVar.zzd().zzd().equals(zzaag.zzc) ? zzb : zza, null);
        }
    }
}
