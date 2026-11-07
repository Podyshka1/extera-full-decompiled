package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class zzvy implements zzsq {
    private final Map zza;
    private final Map zzb;
    private final Map zzc;
    private final Map zzd;

    public /* synthetic */ zzvy(zzvx zzvxVar, byte[] bArr) {
        this.zza = new HashMap(zzvxVar.zze());
        this.zzb = new HashMap(zzvxVar.zzf());
        this.zzc = new HashMap(zzvxVar.zzg());
        this.zzd = new HashMap(zzvxVar.zzh());
    }

    @Override // com.google.android.recaptcha.internal.zzsq
    public final zzse zza(zzsp zzspVar, zzsy zzsyVar) throws GeneralSecurityException {
        Map map = this.zzb;
        String strZzb = zzspVar.zzb();
        if (map.containsKey(strZzb)) {
            return ((zzub) map.get(strZzb)).zza(zzspVar, zzsyVar);
        }
        StringBuilder sb = new StringBuilder(String.valueOf(strZzb).length() + 47);
        sb.append("No Key Parser for requested key type ");
        sb.append(strZzb);
        sb.append(" available");
        throw new GeneralSecurityException(sb.toString());
    }

    @Override // com.google.android.recaptcha.internal.zzsq
    public final zzsp zzb(zzse zzseVar, zzsy zzsyVar) throws GeneralSecurityException {
        Map map = this.zza;
        if (map.containsKey(zzseVar.getClass())) {
            return ((zzue) map.get(zzseVar.getClass())).zza(zzseVar, zzsyVar);
        }
        String strValueOf = String.valueOf(zzseVar.getClass());
        StringBuilder sb = new StringBuilder(strValueOf.length() + 32);
        sb.append("No Key serializer for ");
        sb.append(strValueOf);
        sb.append(" available");
        throw new GeneralSecurityException(sb.toString());
    }

    public final boolean zzc(zzsp zzspVar) {
        return this.zzb.containsKey(zzspVar.zzb());
    }

    public final /* synthetic */ Map zzd() {
        return this.zza;
    }

    public final /* synthetic */ Map zze() {
        return this.zzb;
    }

    public final /* synthetic */ Map zzf() {
        return this.zzc;
    }

    public final /* synthetic */ Map zzg() {
        return this.zzd;
    }
}
