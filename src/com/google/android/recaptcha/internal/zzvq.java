package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class zzvq {
    private final Map zza;
    private final Map zzb;

    public final zzvq zza(zzvp zzvpVar) throws GeneralSecurityException {
        zzvr zzvrVar = new zzvr(zzvpVar.zza(), zzvpVar.zzb(), null);
        Map map = this.zza;
        if (!map.containsKey(zzvrVar)) {
            map.put(zzvrVar, zzvpVar);
            return this;
        }
        zzvp zzvpVar2 = (zzvp) map.get(zzvrVar);
        if (zzvpVar2.equals(zzvpVar) && zzvpVar.equals(zzvpVar2)) {
            return this;
        }
        throw new GeneralSecurityException("Attempt to register non-equal PrimitiveConstructor object for already existing object of type: ".concat(zzvrVar.toString()));
    }

    public final zzvq zzb(zzvu zzvuVar) throws GeneralSecurityException {
        Map map = this.zzb;
        Class clsZza = zzvuVar.zza();
        if (!map.containsKey(clsZza)) {
            map.put(clsZza, zzvuVar);
            return this;
        }
        zzvu zzvuVar2 = (zzvu) map.get(clsZza);
        if (zzvuVar2.equals(zzvuVar) && zzvuVar.equals(zzvuVar2)) {
            return this;
        }
        throw new GeneralSecurityException("Attempt to register non-equal PrimitiveWrapper object or input class object for already existing object of type".concat(clsZza.toString()));
    }

    public final /* synthetic */ Map zzc() {
        return this.zza;
    }

    public final /* synthetic */ Map zzd() {
        return this.zzb;
    }

    public /* synthetic */ zzvq(zzvs zzvsVar, byte[] bArr) {
        this.zza = new HashMap(zzvsVar.zza());
        this.zzb = new HashMap(zzvsVar.zzb());
    }

    public /* synthetic */ zzvq(byte[] bArr) {
        this.zza = new HashMap();
        this.zzb = new HashMap();
    }
}
