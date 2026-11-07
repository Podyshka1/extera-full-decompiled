package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzyf {
    private static final zzvp zza = zzvp.zzc(zzyc.zza, zzxz.class, zzss.class);
    private static final zzvp zzb = zzvp.zzc(zzye.zza, zzyb.class, zzst.class);
    private static final zzsm zzc = zzug.zzb("type.googleapis.com/google.crypto.tink.EcdsaPrivateKey", zzss.class, zzwg.zzg());
    private static final zzsf zzd = zzug.zzc("type.googleapis.com/google.crypto.tink.EcdsaPublicKey", zzst.class, 5, zzwi.zzi());
    private static final zztx zze = zzyd.zza;
    private static final int zzf = 2;

    public static void zza(boolean z) throws GeneralSecurityException {
        int i = zzf;
        if (!zzte.zza(i)) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Can not use ECDSA in FIPS-mode, as BoringCrypto module is not available.");
            return;
        }
        zzabk.zza(zzvb.zza());
        zzuw zzuwVarZza = zzuw.zza();
        HashMap map = new HashMap();
        map.put("ECDSA_P256", zzzn.zza);
        map.put("ECDSA_P256_IEEE_P1363", zzzn.zzd);
        zzxs zzxsVar = new zzxs(null);
        zzxsVar.zzc(zzxu.zza);
        zzxsVar.zzb(zzxt.zza);
        zzxsVar.zza(zzxv.zza);
        zzxsVar.zzd(zzxw.zzd);
        map.put("ECDSA_P256_RAW", zzxsVar.zze());
        map.put("ECDSA_P256_IEEE_P1363_WITHOUT_PREFIX", zzzn.zzf);
        map.put("ECDSA_P384", zzzn.zzb);
        map.put("ECDSA_P384_IEEE_P1363", zzzn.zze);
        zzxs zzxsVar2 = new zzxs(null);
        zzxsVar2.zzc(zzxu.zzc);
        zzxt zzxtVar = zzxt.zzb;
        zzxsVar2.zzb(zzxtVar);
        zzxv zzxvVar = zzxv.zzb;
        zzxsVar2.zza(zzxvVar);
        zzxw zzxwVar = zzxw.zza;
        zzxsVar2.zzd(zzxwVar);
        map.put("ECDSA_P384_SHA512", zzxsVar2.zze());
        zzxs zzxsVar3 = new zzxs(null);
        zzxsVar3.zzc(zzxu.zzb);
        zzxsVar3.zzb(zzxtVar);
        zzxsVar3.zza(zzxvVar);
        zzxsVar3.zzd(zzxwVar);
        map.put("ECDSA_P384_SHA384", zzxsVar3.zze());
        map.put("ECDSA_P521", zzzn.zzc);
        map.put("ECDSA_P521_IEEE_P1363", zzzn.zzg);
        zzuwVarZza.zzc(Collections.unmodifiableMap(map));
        zzux.zza().zzb(zza);
        zzux.zza().zzb(zzb);
        zzur.zza().zzb(zze, zzxx.class);
        zzty.zza().zzc(zzc, i, true);
        zzty.zza().zzc(zzd, i, false);
    }
}
