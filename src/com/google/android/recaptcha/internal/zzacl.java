package com.google.android.recaptcha.internal;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzacl {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final zzvi zzb = zzvi.zzb(zzack.zza, zzaah.class);
    private static final zzvf zzc = zzvf.zzb(zzacf.zza, "type.googleapis.com/google.crypto.tink.RsaSsaPssPrivateKey");
    private static final zzue zzd = zzue.zzc(zzacg.zza, zzaal.class);
    private static final zzub zze = zzub.zzc(zzach.zza, "type.googleapis.com/google.crypto.tink.RsaSsaPssPublicKey");
    private static final zzue zzf = zzue.zzc(zzaci.zza, zzaaj.class);
    private static final zzub zzg = zzub.zzc(zzacj.zza, "type.googleapis.com/google.crypto.tink.RsaSsaPssPrivateKey");
    private static final zztv zzh;

    static {
        zztu zztuVarZza = zztv.zza();
        zztuVarZza.zza(zzwp.SHA256, zzaaf.zza);
        zztuVarZza.zza(zzwp.SHA384, zzaaf.zzb);
        zztuVarZza.zza(zzwp.SHA512, zzaaf.zzc);
        zzh = zztuVarZza.zzb();
    }

    public static void zza(zzvb zzvbVar) {
        zzvbVar.zzd(zzb);
        zzvbVar.zze(zzc);
        zzvbVar.zzb(zzd);
        zzvbVar.zzc(zze);
        zzvbVar.zzb(zzf);
        zzvbVar.zzc(zzg);
    }

    public static /* synthetic */ zzaal zzc(zzsp zzspVar, zzsy zzsyVar) throws GeneralSecurityException {
        if (!zzspVar.zzb().equals("type.googleapis.com/google.crypto.tink.RsaSsaPssPublicKey")) {
            f$$ExternalSyntheticBUOutline1.m212m("Wrong type URL in call to RsaSsaPssProtoSerialization.parsePublicKey: ".concat(String.valueOf(zzspVar.zzb())));
            return null;
        }
        try {
            zzxr zzxrVarZze = zzxr.zze(zzspVar.zzc(), zzafh.zzb());
            if (zzxrVarZze.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            BigInteger bigInteger = new BigInteger(1, zzxrVarZze.zzc().zzy());
            int iBitLength = bigInteger.bitLength();
            zzaae zzaaeVarZza = zzaah.zza();
            zztv zztvVar = zzh;
            zzaaeVarZza.zzd((zzaaf) zztvVar.zzc(zzxrVarZze.zzb().zza()));
            zzaaeVarZza.zze((zzaaf) zztvVar.zzc(zzxrVarZze.zzb().zzb()));
            zzaaeVarZza.zzb(new BigInteger(1, zzxrVarZze.zzd().zzy()));
            zzaaeVarZza.zza(iBitLength);
            zzaaeVarZza.zzf(zzxrVarZze.zzb().zzc());
            zzaaeVarZza.zzc(zzg(zzspVar.zze()));
            zzaah zzaahVarZzg = zzaaeVarZza.zzg();
            zzaak zzaakVarZzc = zzaal.zzc();
            zzaakVarZzc.zza(zzaahVarZzg);
            zzaakVarZzc.zzb(bigInteger);
            zzaakVarZzc.zzc(zzspVar.zzf());
            return zzaakVarZzc.zzd();
        } catch (zzagk | IllegalArgumentException unused) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Parsing RsaSsaPssPublicKey failed");
            return null;
        }
    }

    public static /* synthetic */ zzsp zzd(zzaaj zzaajVar, zzsy zzsyVar) {
        zzxo zzxoVarZzk = zzxp.zzk();
        zzxoVarZzk.zza(0);
        zzxoVarZzk.zzb(zzh(zzaajVar.zze()));
        byte[] bArrZza = zzth.zza(zzaajVar.zzi().zzb(zzsyVar));
        zzaer zzaerVar = zzaer.zza;
        zzxoVarZzk.zzc(zzaer.zzs(bArrZza, 0, bArrZza.length));
        byte[] bArrZza2 = zzth.zza(zzaajVar.zzf().zzb(zzsyVar));
        zzxoVarZzk.zzd(zzaer.zzs(bArrZza2, 0, bArrZza2.length));
        byte[] bArrZza3 = zzth.zza(zzaajVar.zzh().zzb(zzsyVar));
        zzxoVarZzk.zze(zzaer.zzs(bArrZza3, 0, bArrZza3.length));
        byte[] bArrZza4 = zzth.zza(zzaajVar.zzj().zzb(zzsyVar));
        zzxoVarZzk.zzf(zzaer.zzs(bArrZza4, 0, bArrZza4.length));
        byte[] bArrZza5 = zzth.zza(zzaajVar.zzk().zzb(zzsyVar));
        zzxoVarZzk.zzg(zzaer.zzs(bArrZza5, 0, bArrZza5.length));
        byte[] bArrZza6 = zzth.zza(zzaajVar.zzl().zzb(zzsyVar));
        zzxoVarZzk.zzh(zzaer.zzs(bArrZza6, 0, bArrZza6.length));
        return zzsp.zza("type.googleapis.com/google.crypto.tink.RsaSsaPssPrivateKey", ((zzxp) zzxoVarZzk.zzp()).zzv(), zzsn.zzc, zzf(zzaajVar.zzd().zzd()), zzaajVar.zze().zzb());
    }

    public static /* synthetic */ zzaaj zze(zzsp zzspVar, zzsy zzsyVar) throws GeneralSecurityException {
        if (!zzspVar.zzb().equals("type.googleapis.com/google.crypto.tink.RsaSsaPssPrivateKey")) {
            f$$ExternalSyntheticBUOutline1.m212m("Wrong type URL in call to RsaSsaPssProtoSerialization.parsePrivateKey: ".concat(String.valueOf(zzspVar.zzb())));
            return null;
        }
        try {
            zzxp zzxpVarZzj = zzxp.zzj(zzspVar.zzc(), zzafh.zzb());
            if (zzxpVarZzj.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzxr zzxrVarZzb = zzxpVarZzj.zzb();
            if (zzxrVarZzb.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            BigInteger bigInteger = new BigInteger(1, zzxrVarZzb.zzc().zzy());
            int iBitLength = bigInteger.bitLength();
            BigInteger bigInteger2 = new BigInteger(1, zzxrVarZzb.zzd().zzy());
            zzaae zzaaeVarZza = zzaah.zza();
            zztv zztvVar = zzh;
            zzaaeVarZza.zzd((zzaaf) zztvVar.zzc(zzxrVarZzb.zzb().zza()));
            zzaaeVarZza.zze((zzaaf) zztvVar.zzc(zzxrVarZzb.zzb().zzb()));
            zzaaeVarZza.zzb(bigInteger2);
            zzaaeVarZza.zza(iBitLength);
            zzaaeVarZza.zzf(zzxrVarZzb.zzb().zzc());
            zzaaeVarZza.zzc(zzg(zzspVar.zze()));
            zzaah zzaahVarZzg = zzaaeVarZza.zzg();
            zzaak zzaakVarZzc = zzaal.zzc();
            zzaakVarZzc.zza(zzaahVarZzg);
            zzaakVarZzc.zzb(bigInteger);
            zzaakVarZzc.zzc(zzspVar.zzf());
            zzaal zzaalVarZzd = zzaakVarZzc.zzd();
            zzaai zzaaiVarZzc = zzaaj.zzc();
            zzaaiVarZzc.zza(zzaalVarZzd);
            zzaaiVarZzc.zzb(zzi(zzxpVarZzj.zzd(), zzsyVar), zzi(zzxpVarZzj.zze(), zzsyVar));
            zzaaiVarZzc.zzc(zzi(zzxpVarZzj.zzc(), zzsyVar));
            zzaaiVarZzc.zzd(zzi(zzxpVarZzj.zzg(), zzsyVar), zzi(zzxpVarZzj.zzh(), zzsyVar));
            zzaaiVarZzc.zze(zzi(zzxpVarZzj.zzi(), zzsyVar));
            return zzaaiVarZzc.zzf();
        } catch (zzagk | IllegalArgumentException unused) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Parsing RsaSsaPssPrivateKey failed");
            return null;
        }
    }

    private static zzso zzf(zzaag zzaagVar) throws GeneralSecurityException {
        if (zzaagVar.equals(zzaag.zzd)) {
            return zzso.zzd;
        }
        if (zzaagVar == zzaag.zza) {
            return zzso.zzb;
        }
        if (zzaagVar == zzaag.zzb) {
            return zzso.zze;
        }
        if (zzaagVar == zzaag.zzc) {
            return zzso.zzc;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzaagVar)));
    }

    private static zzaag zzg(zzso zzsoVar) throws GeneralSecurityException {
        if (zzsoVar == zzso.zzd) {
            return zzaag.zzd;
        }
        if (zzsoVar == zzso.zzb) {
            return zzaag.zza;
        }
        if (zzsoVar == zzso.zze) {
            return zzaag.zzb;
        }
        if (zzsoVar == zzso.zzc) {
            return zzaag.zzc;
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: ".concat(zzsoVar.toString()));
    }

    private static zzxr zzh(zzaal zzaalVar) {
        zzxq zzxqVarZzg = zzxr.zzg();
        zzaah zzaahVarZzf = zzaalVar.zzf();
        zzxm zzxmVarZzd = zzxn.zzd();
        zztv zztvVar = zzh;
        zzxmVarZzd.zza((zzwp) zztvVar.zzb(zzaahVarZzf.zze()));
        zzxmVarZzd.zzb((zzwp) zztvVar.zzb(zzaahVarZzf.zzf()));
        zzxmVarZzd.zzc(zzaahVarZzf.zzg());
        zzxqVarZzg.zzb((zzxn) zzxmVarZzd.zzp());
        byte[] bArrZza = zzth.zza(zzaalVar.zzd());
        zzaer zzaerVar = zzaer.zza;
        zzxqVarZzg.zzc(zzaer.zzs(bArrZza, 0, bArrZza.length));
        byte[] bArrZza2 = zzth.zza(zzaalVar.zzf().zzc());
        zzxqVarZzg.zzd(zzaer.zzs(bArrZza2, 0, bArrZza2.length));
        zzxqVarZzg.zza(0);
        return (zzxr) zzxqVarZzg.zzp();
    }

    private static zzadz zzi(zzaer zzaerVar, zzsy zzsyVar) {
        return zzadz.zza(new BigInteger(1, zzaerVar.zzy()), zzsyVar);
    }
}
