package com.google.android.recaptcha.internal;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzaad {
    private static final zzvp zza = zzvp.zzc(zzaaa.zza, zzzx.class, zzss.class);
    private static final zzvp zzb = zzvp.zzc(zzaac.zza, zzzz.class, zzst.class);
    private static final zzsm zzc = zzug.zzb("type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PrivateKey", zzss.class, zzxj.zzl());
    private static final zzsf zzd = zzug.zzc("type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PublicKey", zzst.class, 5, zzxl.zzi());
    private static final zztx zze = zzaab.zza;
    private static final int zzf = 2;

    public static void zza(boolean z) throws GeneralSecurityException {
        int i = zzf;
        if (!zzte.zza(i)) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Can not use RSA SSA PKCS1 in FIPS-mode, as BoringCrypto module is not available.");
            return;
        }
        int i2 = zzacc.$r8$clinit;
        zzacc.zza(zzvb.zza());
        zzuw zzuwVarZza = zzuw.zza();
        HashMap map = new HashMap();
        map.put("RSA_SSA_PKCS1_3072_SHA256_F4", zzzn.zzh);
        BigInteger bigInteger = zzzv.zza;
        zzzs zzzsVar = new zzzs(null);
        zzzsVar.zzd(zzzt.zza);
        zzzsVar.zza(3072);
        BigInteger bigInteger2 = zzzv.zza;
        zzzsVar.zzb(bigInteger2);
        zzzu zzzuVar = zzzu.zzd;
        zzzsVar.zzc(zzzuVar);
        map.put("RSA_SSA_PKCS1_3072_SHA256_F4_RAW", zzzsVar.zze());
        map.put("RSA_SSA_PKCS1_3072_SHA256_F4_WITHOUT_PREFIX", zzzn.zzi);
        map.put("RSA_SSA_PKCS1_4096_SHA512_F4", zzzn.zzj);
        zzzs zzzsVar2 = new zzzs(null);
        zzzsVar2.zzd(zzzt.zzc);
        zzzsVar2.zza(4096);
        zzzsVar2.zzb(bigInteger2);
        zzzsVar2.zzc(zzzuVar);
        map.put("RSA_SSA_PKCS1_4096_SHA512_F4_RAW", zzzsVar2.zze());
        zzuwVarZza.zzc(map);
        zzux.zza().zzb(zza);
        zzux.zza().zzb(zzb);
        zzur.zza().zzb(zze, zzzv.class);
        zzty.zza().zzc(zzc, i, true);
        zzty.zza().zzc(zzd, i, false);
    }
}
