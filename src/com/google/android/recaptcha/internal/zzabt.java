package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzabt {
    private static final zzvi zza = zzvi.zzb(zzabs.zza, zzyh.class);
    private static final zzvf zzb = zzvf.zzb(zzabn.zza, "type.googleapis.com/google.crypto.tink.Ed25519PrivateKey");
    private static final zzue zzc = zzue.zzc(zzabo.zza, zzyo.class);
    private static final zzub zzd = zzub.zzc(zzabp.zza, "type.googleapis.com/google.crypto.tink.Ed25519PublicKey");
    private static final zzue zze = zzue.zzc(zzabq.zza, zzyi.class);
    private static final zzub zzf = zzub.zzc(zzabr.zza, "type.googleapis.com/google.crypto.tink.Ed25519PrivateKey");

    public static void zza(zzvb zzvbVar) {
        zzvbVar.zzd(zza);
        zzvbVar.zze(zzb);
        zzvbVar.zzb(zzc);
        zzvbVar.zzc(zzd);
        zzvbVar.zzb(zze);
        zzvbVar.zzc(zzf);
    }

    public static /* synthetic */ zzyo zzc(zzsp zzspVar, zzsy zzsyVar) throws GeneralSecurityException {
        if (!zzspVar.zzb().equals("type.googleapis.com/google.crypto.tink.Ed25519PublicKey")) {
            f$$ExternalSyntheticBUOutline1.m212m("Wrong type URL in call to Ed25519ProtoSerialization.parsePublicKey: ".concat(String.valueOf(zzspVar.zzb())));
            return null;
        }
        try {
            zzwn zzwnVarZzc = zzwn.zzc(zzspVar.zzc(), zzafh.zzb());
            if (zzwnVarZzc.zza() == 0) {
                return zzyo.zzc(zzg(zzspVar.zze()), zzady.zza(zzwnVarZzc.zzb().zzy()), zzspVar.zzf());
            }
            throw new GeneralSecurityException("Only version 0 keys are accepted");
        } catch (zzagk unused) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Parsing Ed25519PublicKey failed");
            return null;
        }
    }

    public static /* synthetic */ zzsp zzd(zzyi zzyiVar, zzsy zzsyVar) {
        zzwk zzwkVarZze = zzwl.zze();
        zzwkVarZze.zzb(zzh(zzyiVar.zze()));
        byte[] bArrZzb = zzyiVar.zzf().zzb(zzsyVar);
        zzwkVarZze.zza(zzaer.zzs(bArrZzb, 0, bArrZzb.length));
        return zzsp.zza("type.googleapis.com/google.crypto.tink.Ed25519PrivateKey", ((zzwl) zzwkVarZze.zzp()).zzv(), zzsn.zzc, zzf(zzyiVar.zzd().zzb()), zzyiVar.zze().zzb());
    }

    public static /* synthetic */ zzyi zze(zzsp zzspVar, zzsy zzsyVar) throws GeneralSecurityException {
        if (!zzspVar.zzb().equals("type.googleapis.com/google.crypto.tink.Ed25519PrivateKey")) {
            f$$ExternalSyntheticBUOutline1.m212m("Wrong type URL in call to Ed25519ProtoSerialization.parsePrivateKey: ".concat(String.valueOf(zzspVar.zzb())));
            return null;
        }
        try {
            zzwl zzwlVarZzd = zzwl.zzd(zzspVar.zzc(), zzafh.zzb());
            if (zzwlVarZzd.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzwn zzwnVarZzc = zzwlVarZzd.zzc();
            if (zzwnVarZzc.zza() == 0) {
                return zzyi.zzc(zzyo.zzc(zzg(zzspVar.zze()), zzady.zza(zzwnVarZzc.zzb().zzy()), zzspVar.zzf()), zzaea.zza(zzwlVarZzd.zzb().zzy(), zzsyVar));
            }
            throw new GeneralSecurityException("Only version 0 keys are accepted");
        } catch (zzagk unused) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Parsing Ed25519PrivateKey failed");
            return null;
        }
    }

    private static zzso zzf(zzyg zzygVar) throws GeneralSecurityException {
        if (zzygVar.equals(zzyg.zzd)) {
            return zzso.zzd;
        }
        if (zzygVar == zzyg.zza) {
            return zzso.zzb;
        }
        if (zzygVar == zzyg.zzb) {
            return zzso.zze;
        }
        if (zzygVar == zzyg.zzc) {
            return zzso.zzc;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzygVar.toString()));
    }

    private static zzyg zzg(zzso zzsoVar) throws GeneralSecurityException {
        if (zzsoVar == zzso.zzd) {
            return zzyg.zzd;
        }
        if (zzsoVar == zzso.zzb) {
            return zzyg.zza;
        }
        if (zzsoVar == zzso.zze) {
            return zzyg.zzb;
        }
        if (zzsoVar == zzso.zzc) {
            return zzyg.zzc;
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: ".concat(zzsoVar.toString()));
    }

    private static zzwn zzh(zzyo zzyoVar) {
        zzwm zzwmVarZzd = zzwn.zzd();
        byte[] bArrZzc = zzyoVar.zzd().zzc();
        zzwmVarZzd.zza(zzaer.zzs(bArrZzc, 0, bArrZzc.length));
        return (zzwn) zzwmVarZzd.zzp();
    }
}
