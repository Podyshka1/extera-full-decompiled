package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzyn {
    private static final zzvp zza = zzvp.zzc(zzyl.zza, zzyi.class, zzss.class);
    private static final zzvp zzb = zzvp.zzc(zzym.zza, zzyo.class, zzst.class);
    private static final zzsm zzc = zzug.zzb("type.googleapis.com/google.crypto.tink.Ed25519PrivateKey", zzss.class, zzwl.zzg());
    private static final zzsf zzd = zzug.zzc("type.googleapis.com/google.crypto.tink.Ed25519PublicKey", zzst.class, 5, zzwn.zzg());
    private static final zzus zze = zzyk.zza;
    private static final zztx zzf = zzyj.zza;

    public static void zza(boolean z) throws GeneralSecurityException {
        if (!zzte.zza(1)) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Registering AES GCM SIV is not supported in FIPS mode");
            return;
        }
        zzabt.zza(zzvb.zza());
        zzuw zzuwVarZza = zzuw.zza();
        HashMap map = new HashMap();
        map.put("ED25519", zzyh.zza(zzyg.zza));
        zzyg zzygVar = zzyg.zzd;
        map.put("ED25519_RAW", zzyh.zza(zzygVar));
        map.put("ED25519WithRawOutput", zzyh.zza(zzygVar));
        zzuwVarZza.zzc(Collections.unmodifiableMap(map));
        zzur.zza().zzb(zzf, zzyh.class);
        zzut.zza().zzb(zze, zzyh.class);
        zzux.zza().zzb(zza);
        zzux.zza().zzb(zzb);
        zzty.zza().zzb(zzc, true);
        zzty.zza().zzb(zzd, false);
    }
}
