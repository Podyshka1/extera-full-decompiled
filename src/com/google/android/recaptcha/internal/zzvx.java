package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class zzvx {
    private final Map zza;
    private final Map zzb;
    private final Map zzc;
    private final Map zzd;

    public zzvx() {
        this.zza = new HashMap();
        this.zzb = new HashMap();
        this.zzc = new HashMap();
        this.zzd = new HashMap();
    }

    public final zzvx zza(zzue zzueVar) throws GeneralSecurityException {
        Map map = this.zza;
        if (!map.containsKey(zzueVar.zzb())) {
            map.put(zzueVar.zzb(), zzueVar);
            return this;
        }
        zzue zzueVar2 = (zzue) map.get(zzueVar.zzb());
        if (zzueVar2.equals(zzueVar) && zzueVar.equals(zzueVar2)) {
            return this;
        }
        throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(zzueVar.zzb().toString()));
    }

    public final zzvx zzb(zzub zzubVar) throws GeneralSecurityException {
        Map map = this.zzb;
        String strZzb = zzubVar.zzb();
        if (!map.containsKey(strZzb)) {
            map.put(strZzb, zzubVar);
            return this;
        }
        zzub zzubVar2 = (zzub) map.get(strZzb);
        if (zzubVar2.equals(zzubVar) && zzubVar.equals(zzubVar2)) {
            return this;
        }
        zzsj$$ExternalSyntheticBUOutline1.m480m("Attempt to register non-equal parser for already existing object of type: ".concat(strZzb));
        return null;
    }

    public final zzvx zzc(zzvi zzviVar) throws GeneralSecurityException {
        Map map = this.zzc;
        if (!map.containsKey(zzviVar.zza())) {
            map.put(zzviVar.zza(), zzviVar);
            return this;
        }
        zzvi zzviVar2 = (zzvi) map.get(zzviVar.zza());
        if (zzviVar2.equals(zzviVar) && zzviVar.equals(zzviVar2)) {
            return this;
        }
        throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(zzviVar.zza().toString()));
    }

    public final zzvx zzd(zzvf zzvfVar) throws GeneralSecurityException {
        Map map = this.zzd;
        String strZza = zzvfVar.zza();
        if (!map.containsKey(strZza)) {
            map.put(strZza, zzvfVar);
            return this;
        }
        zzvf zzvfVar2 = (zzvf) map.get(strZza);
        if (zzvfVar2.equals(zzvfVar) && zzvfVar.equals(zzvfVar2)) {
            return this;
        }
        zzsj$$ExternalSyntheticBUOutline1.m480m("Attempt to register non-equal parser for already existing object of type: ".concat(strZza));
        return null;
    }

    public final /* synthetic */ Map zze() {
        return this.zza;
    }

    public final /* synthetic */ Map zzf() {
        return this.zzb;
    }

    public final /* synthetic */ Map zzg() {
        return this.zzc;
    }

    public final /* synthetic */ Map zzh() {
        return this.zzd;
    }

    public zzvx(zzvy zzvyVar) {
        this.zza = new HashMap(zzvyVar.zzd());
        this.zzb = new HashMap(zzvyVar.zze());
        this.zzc = new HashMap(zzvyVar.zzf());
        this.zzd = new HashMap(zzvyVar.zzg());
    }
}
