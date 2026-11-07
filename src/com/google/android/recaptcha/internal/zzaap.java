package com.google.android.recaptcha.internal;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzaap {
    private static final zzvp zza = zzvp.zzc(zzaam.zza, zzaaj.class, zzss.class);
    private static final zzvp zzb = zzvp.zzc(zzaao.zza, zzaal.class, zzst.class);
    private static final zzsm zzc = zzug.zzb("type.googleapis.com/google.crypto.tink.RsaSsaPssPrivateKey", zzss.class, zzxp.zzl());
    private static final zzsf zzd = zzug.zzc("type.googleapis.com/google.crypto.tink.RsaSsaPssPublicKey", zzst.class, 5, zzxr.zzi());
    private static final zztx zze = zzaan.zza;
    private static final int zzf = 2;

    public static void zza(boolean z) throws GeneralSecurityException {
        int i = zzf;
        if (!zzte.zza(i)) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Can not use RSA SSA PSS in FIPS-mode, as BoringCrypto module is not available.");
            return;
        }
        int i2 = zzacl.$r8$clinit;
        zzacl.zza(zzvb.zza());
        zzuw zzuwVarZza = zzuw.zza();
        HashMap map = new HashMap();
        BigInteger bigInteger = zzaah.zza;
        zzaae zzaaeVar = new zzaae(null);
        zzaaf zzaafVar = zzaaf.zza;
        zzaaeVar.zzd(zzaafVar);
        zzaaeVar.zze(zzaafVar);
        zzaaeVar.zzf(32);
        zzaaeVar.zza(3072);
        BigInteger bigInteger2 = zzaah.zza;
        zzaaeVar.zzb(bigInteger2);
        zzaag zzaagVar = zzaag.zza;
        zzaaeVar.zzc(zzaagVar);
        map.put("RSA_SSA_PSS_3072_SHA256_F4", zzaaeVar.zzg());
        zzaae zzaaeVar2 = new zzaae(null);
        zzaaeVar2.zzd(zzaafVar);
        zzaaeVar2.zze(zzaafVar);
        zzaaeVar2.zzf(32);
        zzaaeVar2.zza(3072);
        zzaaeVar2.zzb(bigInteger2);
        zzaag zzaagVar2 = zzaag.zzd;
        zzaaeVar2.zzc(zzaagVar2);
        map.put("RSA_SSA_PSS_3072_SHA256_F4_RAW", zzaaeVar2.zzg());
        map.put("RSA_SSA_PSS_3072_SHA256_SHA256_32_F4", zzzn.zzk);
        zzaae zzaaeVar3 = new zzaae(null);
        zzaaf zzaafVar2 = zzaaf.zzc;
        zzaaeVar3.zzd(zzaafVar2);
        zzaaeVar3.zze(zzaafVar2);
        zzaaeVar3.zzf(64);
        zzaaeVar3.zza(4096);
        zzaaeVar3.zzb(bigInteger2);
        zzaaeVar3.zzc(zzaagVar);
        map.put("RSA_SSA_PSS_4096_SHA512_F4", zzaaeVar3.zzg());
        zzaae zzaaeVar4 = new zzaae(null);
        zzaaeVar4.zzd(zzaafVar2);
        zzaaeVar4.zze(zzaafVar2);
        zzaaeVar4.zzf(64);
        zzaaeVar4.zza(4096);
        zzaaeVar4.zzb(bigInteger2);
        zzaaeVar4.zzc(zzaagVar2);
        map.put("RSA_SSA_PSS_4096_SHA512_F4_RAW", zzaaeVar4.zzg());
        map.put("RSA_SSA_PSS_4096_SHA512_SHA512_64_F4", zzzn.zzl);
        zzuwVarZza.zzc(Collections.unmodifiableMap(map));
        zzux.zza().zzb(zza);
        zzux.zza().zzb(zzb);
        zzur.zza().zzb(zze, zzaah.class);
        zzty.zza().zzc(zzc, i, true);
        zzty.zza().zzc(zzd, i, false);
    }
}
