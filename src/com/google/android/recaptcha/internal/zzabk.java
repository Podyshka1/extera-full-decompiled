package com.google.android.recaptcha.internal;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.spec.ECPoint;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzabk {
    private static final zzvi zza = zzvi.zzb(zzabj.zza, zzxx.class);
    private static final zzvf zzb = zzvf.zzb(zzabe.zza, "type.googleapis.com/google.crypto.tink.EcdsaPrivateKey");
    private static final zzue zzc = zzue.zzc(zzabf.zza, zzyb.class);
    private static final zzub zzd = zzub.zzc(zzabg.zza, "type.googleapis.com/google.crypto.tink.EcdsaPublicKey");
    private static final zzue zze = zzue.zzc(zzabh.zza, zzxz.class);
    private static final zzub zzf = zzub.zzc(zzabi.zza, "type.googleapis.com/google.crypto.tink.EcdsaPrivateKey");

    public static void zza(zzvb zzvbVar) {
        zzvbVar.zzd(zza);
        zzvbVar.zze(zzb);
        zzvbVar.zzb(zzc);
        zzvbVar.zzc(zzd);
        zzvbVar.zzb(zze);
        zzvbVar.zzc(zzf);
    }

    public static /* synthetic */ zzyb zzc(zzsp zzspVar, zzsy zzsyVar) throws GeneralSecurityException {
        if (!zzspVar.zzb().equals("type.googleapis.com/google.crypto.tink.EcdsaPublicKey")) {
            f$$ExternalSyntheticBUOutline1.m212m("Wrong type URL in call to EcdsaProtoSerialization.parsePublicKey: ".concat(String.valueOf(zzspVar.zzb())));
            return null;
        }
        try {
            zzwi zzwiVarZze = zzwi.zze(zzspVar.zzc(), zzafh.zzb());
            if (zzwiVarZze.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzxs zzxsVarZza = zzxx.zza();
            zzxsVarZza.zzc(zzg(zzwiVarZze.zzb().zza()));
            zzxsVarZza.zza(zzl(zzwiVarZze.zzb().zzh()));
            zzxsVarZza.zzb(zzk(zzwiVarZze.zzb().zzg()));
            zzxsVarZza.zzd(zzh(zzspVar.zze()));
            zzxx zzxxVarZze = zzxsVarZza.zze();
            zzya zzyaVarZzc = zzyb.zzc();
            zzyaVarZzc.zza(zzxxVarZze);
            zzyaVarZzc.zzb(new ECPoint(new BigInteger(1, zzwiVarZze.zzc().zzy()), new BigInteger(1, zzwiVarZze.zzd().zzy())));
            zzyaVarZzc.zzc(zzspVar.zzf());
            return zzyaVarZzc.zzd();
        } catch (zzagk | IllegalArgumentException unused) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Parsing EcdsaPublicKey failed");
            return null;
        }
    }

    public static /* synthetic */ zzsp zzd(zzxz zzxzVar, zzsy zzsyVar) throws GeneralSecurityException {
        int iZzi = zzi(zzxzVar.zzd().zzc());
        zzwf zzwfVarZze = zzwg.zze();
        zzwfVarZze.zza(zzj(zzxzVar.zze()));
        byte[] bArrZzb = zzth.zzb(zzxzVar.zzf().zzb(zzsyVar), iZzi);
        zzaer zzaerVar = zzaer.zza;
        zzwfVarZze.zzb(zzaer.zzs(bArrZzb, 0, bArrZzb.length));
        return zzsp.zza("type.googleapis.com/google.crypto.tink.EcdsaPrivateKey", ((zzwg) zzwfVarZze.zzp()).zzv(), zzsn.zzc, zzf(zzxzVar.zzd().zze()), zzxzVar.zze().zzb());
    }

    public static /* synthetic */ zzxz zze(zzsp zzspVar, zzsy zzsyVar) throws GeneralSecurityException {
        if (!zzspVar.zzb().equals("type.googleapis.com/google.crypto.tink.EcdsaPrivateKey")) {
            f$$ExternalSyntheticBUOutline1.m212m("Wrong type URL in call to EcdsaProtoSerialization.parsePrivateKey: ".concat(String.valueOf(zzspVar.zzb())));
            return null;
        }
        try {
            zzwg zzwgVarZzd = zzwg.zzd(zzspVar.zzc(), zzafh.zzb());
            if (zzwgVarZzd.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzwi zzwiVarZzb = zzwgVarZzd.zzb();
            if (zzwiVarZzb.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzxs zzxsVarZza = zzxx.zza();
            zzxsVarZza.zzc(zzg(zzwiVarZzb.zzb().zza()));
            zzxsVarZza.zza(zzl(zzwiVarZzb.zzb().zzh()));
            zzxsVarZza.zzb(zzk(zzwiVarZzb.zzb().zzg()));
            zzxsVarZza.zzd(zzh(zzspVar.zze()));
            zzxx zzxxVarZze = zzxsVarZza.zze();
            zzya zzyaVarZzc = zzyb.zzc();
            zzyaVarZzc.zza(zzxxVarZze);
            zzyaVarZzc.zzb(new ECPoint(new BigInteger(1, zzwiVarZzb.zzc().zzy()), new BigInteger(1, zzwiVarZzb.zzd().zzy())));
            zzyaVarZzc.zzc(zzspVar.zzf());
            zzyb zzybVarZzd = zzyaVarZzc.zzd();
            zzxy zzxyVarZzc = zzxz.zzc();
            zzxyVarZzc.zza(zzybVarZzd);
            zzxyVarZzc.zzb(zzadz.zza(new BigInteger(1, zzwgVarZzd.zzc().zzy()), zzsyVar));
            return zzxyVarZzc.zzc();
        } catch (zzagk | IllegalArgumentException unused) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Parsing EcdsaPrivateKey failed");
            return null;
        }
    }

    private static zzso zzf(zzxw zzxwVar) throws GeneralSecurityException {
        if (zzxwVar.equals(zzxw.zza)) {
            return zzso.zzb;
        }
        if (zzxwVar == zzxw.zzb) {
            return zzso.zze;
        }
        if (zzxwVar == zzxw.zzd) {
            return zzso.zzd;
        }
        if (zzxwVar == zzxw.zzc) {
            return zzso.zzc;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzxwVar.toString()));
    }

    private static zzxu zzg(zzwp zzwpVar) throws GeneralSecurityException {
        int iOrdinal = zzwpVar.ordinal();
        if (iOrdinal == 2) {
            return zzxu.zzb;
        }
        if (iOrdinal == 3) {
            return zzxu.zza;
        }
        if (iOrdinal == 4) {
            return zzxu.zzc;
        }
        int iZza = zzwpVar.zza();
        StringBuilder sb = new StringBuilder(String.valueOf(iZza).length() + 26);
        sb.append("Unable to parse HashType: ");
        sb.append(iZza);
        throw new GeneralSecurityException(sb.toString());
    }

    private static zzxw zzh(zzso zzsoVar) throws GeneralSecurityException {
        if (zzsoVar.equals(zzso.zzb)) {
            return zzxw.zza;
        }
        if (zzsoVar == zzso.zze) {
            return zzxw.zzb;
        }
        if (zzsoVar == zzso.zzc) {
            return zzxw.zzc;
        }
        if (zzsoVar == zzso.zzd) {
            return zzxw.zzd;
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: ".concat(zzsoVar.toString()));
    }

    private static int zzi(zzxt zzxtVar) throws GeneralSecurityException {
        if (zzxtVar.equals(zzxt.zza)) {
            return 33;
        }
        if (zzxtVar == zzxt.zzb) {
            return 49;
        }
        if (zzxtVar == zzxt.zzc) {
            return 67;
        }
        throw new GeneralSecurityException("Unable to serialize CurveType ".concat(zzxtVar.toString()));
    }

    private static zzwi zzj(zzyb zzybVar) throws GeneralSecurityException {
        zzwp zzwpVar;
        int i;
        int iZzi = zzi(zzybVar.zzf().zzc());
        ECPoint eCPointZzd = zzybVar.zzd();
        zzwh zzwhVarZzg = zzwi.zzg();
        zzxx zzxxVarZzf = zzybVar.zzf();
        zzwd zzwdVarZzb = zzwe.zzb();
        zzxu zzxuVarZzd = zzxxVarZzf.zzd();
        if (zzxuVarZzd.equals(zzxu.zza)) {
            zzwpVar = zzwp.SHA256;
        } else if (zzxuVarZzd == zzxu.zzb) {
            zzwpVar = zzwp.SHA384;
        } else {
            if (zzxuVarZzd != zzxu.zzc) {
                throw new GeneralSecurityException("Unable to serialize HashType ".concat(zzxuVarZzd.toString()));
            }
            zzwpVar = zzwp.SHA512;
        }
        zzwdVarZzb.zza(zzwpVar);
        zzxt zzxtVarZzc = zzxxVarZzf.zzc();
        int i2 = 4;
        if (zzxtVarZzc.equals(zzxt.zza)) {
            i = 4;
        } else if (zzxtVarZzc == zzxt.zzb) {
            i = 5;
        } else {
            if (zzxtVarZzc != zzxt.zzc) {
                throw new GeneralSecurityException("Unable to serialize CurveType ".concat(zzxtVarZzc.toString()));
            }
            i = 6;
        }
        zzwdVarZzb.zzb(i);
        zzxv zzxvVarZzb = zzxxVarZzf.zzb();
        if (zzxvVarZzb.equals(zzxv.zza)) {
            i2 = 3;
        } else if (zzxvVarZzb != zzxv.zzb) {
            throw new GeneralSecurityException("Unable to serialize SignatureEncoding ".concat(zzxvVarZzb.toString()));
        }
        zzwdVarZzb.zzc(i2);
        zzwhVarZzg.zza((zzwe) zzwdVarZzb.zzp());
        byte[] bArrZzb = zzth.zzb(eCPointZzd.getAffineX(), iZzi);
        zzaer zzaerVar = zzaer.zza;
        zzwhVarZzg.zzb(zzaer.zzs(bArrZzb, 0, bArrZzb.length));
        byte[] bArrZzb2 = zzth.zzb(eCPointZzd.getAffineY(), iZzi);
        zzwhVarZzg.zzc(zzaer.zzs(bArrZzb2, 0, bArrZzb2.length));
        return (zzwi) zzwhVarZzg.zzp();
    }

    private static zzxt zzk(int i) throws GeneralSecurityException {
        int i2 = i - 2;
        if (i2 == 2) {
            return zzxt.zza;
        }
        if (i2 == 3) {
            return zzxt.zzb;
        }
        if (i2 == 4) {
            return zzxt.zzc;
        }
        int iZza = zzwo.zza(i);
        StringBuilder sb = new StringBuilder(String.valueOf(iZza).length() + 35);
        sb.append("Unable to parse EllipticCurveType: ");
        sb.append(iZza);
        throw new GeneralSecurityException(sb.toString());
    }

    private static zzxv zzl(int i) throws GeneralSecurityException {
        int i2 = i - 2;
        if (i2 == 1) {
            return zzxv.zza;
        }
        if (i2 == 2) {
            return zzxv.zzb;
        }
        int iZza = zzwj.zza(i);
        StringBuilder sb = new StringBuilder(String.valueOf(iZza).length() + 40);
        sb.append("Unable to parse EcdsaSignatureEncoding: ");
        sb.append(iZza);
        throw new GeneralSecurityException(sb.toString());
    }
}
