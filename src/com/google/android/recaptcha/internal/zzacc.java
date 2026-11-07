package com.google.android.recaptcha.internal;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzacc {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final zzvi zzb = zzvi.zzb(zzacb.zza, zzzv.class);
    private static final zzvf zzc = zzvf.zzb(zzabw.zza, "type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PrivateKey");
    private static final zzue zzd = zzue.zzc(zzabx.zza, zzzz.class);
    private static final zzub zze = zzub.zzc(zzaby.zza, "type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PublicKey");
    private static final zzue zzf = zzue.zzc(zzabz.zza, zzzx.class);
    private static final zzub zzg = zzub.zzc(zzaca.zza, "type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PrivateKey");
    private static final zztv zzh;

    static {
        zztu zztuVarZza = zztv.zza();
        zztuVarZza.zza(zzwp.SHA256, zzzt.zza);
        zztuVarZza.zza(zzwp.SHA384, zzzt.zzb);
        zztuVarZza.zza(zzwp.SHA512, zzzt.zzc);
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

    public static /* synthetic */ zzzz zzc(zzsp zzspVar, zzsy zzsyVar) throws GeneralSecurityException {
        if (!zzspVar.zzb().equals("type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PublicKey")) {
            f$$ExternalSyntheticBUOutline1.m215m("Wrong type URL in call to RsaSsaPkcs1ProtoSerialization.parsePublicKey: ".concat(String.valueOf(zzspVar.zzb())));
            return null;
        }
        try {
            zzxl zzxlVarZze = zzxl.zze(zzspVar.zzc(), zzafh.zzb());
            if (zzxlVarZze.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            BigInteger bigInteger = new BigInteger(1, zzxlVarZze.zzc().zzy());
            int iBitLength = bigInteger.bitLength();
            zzzs zzzsVarZza = zzzv.zza();
            zzzsVarZza.zzd((zzzt) zzh.zzc(zzxlVarZze.zzb().zza()));
            zzzsVarZza.zzb(new BigInteger(1, zzxlVarZze.zzd().zzy()));
            zzzsVarZza.zza(iBitLength);
            zzzsVarZza.zzc(zzg(zzspVar.zze()));
            zzzv zzzvVarZze = zzzsVarZza.zze();
            zzzy zzzyVarZzc = zzzz.zzc();
            zzzyVarZzc.zza(zzzvVarZze);
            zzzyVarZzc.zzb(bigInteger);
            zzzyVarZzc.zzc(zzspVar.zzf());
            return zzzyVarZzc.zzd();
        } catch (zzagk | IllegalArgumentException unused) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Parsing RsaSsaPkcs1PublicKey failed");
            return null;
        }
    }

    public static /* synthetic */ zzsp zzd(zzzx zzzxVar, zzsy zzsyVar) {
        zzxi zzxiVarZzk = zzxj.zzk();
        zzxiVarZzk.zza(0);
        zzxiVarZzk.zzb(zzh(zzzxVar.zze()));
        byte[] bArrZza = zzth.zza(zzzxVar.zzi().zzb(zzsyVar));
        zzaer zzaerVar = zzaer.zza;
        zzxiVarZzk.zzc(zzaer.zzs(bArrZza, 0, bArrZza.length));
        byte[] bArrZza2 = zzth.zza(zzzxVar.zzf().zzb(zzsyVar));
        zzxiVarZzk.zzd(zzaer.zzs(bArrZza2, 0, bArrZza2.length));
        byte[] bArrZza3 = zzth.zza(zzzxVar.zzh().zzb(zzsyVar));
        zzxiVarZzk.zze(zzaer.zzs(bArrZza3, 0, bArrZza3.length));
        byte[] bArrZza4 = zzth.zza(zzzxVar.zzj().zzb(zzsyVar));
        zzxiVarZzk.zzf(zzaer.zzs(bArrZza4, 0, bArrZza4.length));
        byte[] bArrZza5 = zzth.zza(zzzxVar.zzk().zzb(zzsyVar));
        zzxiVarZzk.zzg(zzaer.zzs(bArrZza5, 0, bArrZza5.length));
        byte[] bArrZza6 = zzth.zza(zzzxVar.zzl().zzb(zzsyVar));
        zzxiVarZzk.zzh(zzaer.zzs(bArrZza6, 0, bArrZza6.length));
        return zzsp.zza("type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PrivateKey", ((zzxj) zzxiVarZzk.zzp()).zzv(), zzsn.zzc, zzf(zzzxVar.zzd().zzd()), zzzxVar.zze().zzb());
    }

    public static /* synthetic */ zzzx zze(zzsp zzspVar, zzsy zzsyVar) throws GeneralSecurityException {
        if (!zzspVar.zzb().equals("type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PrivateKey")) {
            f$$ExternalSyntheticBUOutline1.m215m("Wrong type URL in call to RsaSsaPkcs1ProtoSerialization.parsePrivateKey: ".concat(String.valueOf(zzspVar.zzb())));
            return null;
        }
        try {
            zzxj zzxjVarZzj = zzxj.zzj(zzspVar.zzc(), zzafh.zzb());
            if (zzxjVarZzj.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzxl zzxlVarZzb = zzxjVarZzj.zzb();
            if (zzxlVarZzb.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            BigInteger bigInteger = new BigInteger(1, zzxlVarZzb.zzc().zzy());
            int iBitLength = bigInteger.bitLength();
            BigInteger bigInteger2 = new BigInteger(1, zzxlVarZzb.zzd().zzy());
            zzzs zzzsVarZza = zzzv.zza();
            zzzsVarZza.zzd((zzzt) zzh.zzc(zzxlVarZzb.zzb().zza()));
            zzzsVarZza.zzb(bigInteger2);
            zzzsVarZza.zza(iBitLength);
            zzzsVarZza.zzc(zzg(zzspVar.zze()));
            zzzv zzzvVarZze = zzzsVarZza.zze();
            zzzy zzzyVarZzc = zzzz.zzc();
            zzzyVarZzc.zza(zzzvVarZze);
            zzzyVarZzc.zzb(bigInteger);
            zzzyVarZzc.zzc(zzspVar.zzf());
            zzzz zzzzVarZzd = zzzyVarZzc.zzd();
            zzzw zzzwVarZzc = zzzx.zzc();
            zzzwVarZzc.zza(zzzzVarZzd);
            zzzwVarZzc.zzb(zzi(zzxjVarZzj.zzd(), zzsyVar), zzi(zzxjVarZzj.zze(), zzsyVar));
            zzzwVarZzc.zzc(zzi(zzxjVarZzj.zzc(), zzsyVar));
            zzzwVarZzc.zzd(zzi(zzxjVarZzj.zzg(), zzsyVar), zzi(zzxjVarZzj.zzh(), zzsyVar));
            zzzwVarZzc.zze(zzi(zzxjVarZzj.zzi(), zzsyVar));
            return zzzwVarZzc.zzf();
        } catch (zzagk | IllegalArgumentException unused) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Parsing RsaSsaPkcs1PrivateKey failed");
            return null;
        }
    }

    private static zzso zzf(zzzu zzzuVar) throws GeneralSecurityException {
        if (zzzuVar.equals(zzzu.zzd)) {
            return zzso.zzd;
        }
        if (zzzuVar == zzzu.zza) {
            return zzso.zzb;
        }
        if (zzzuVar == zzzu.zzb) {
            return zzso.zze;
        }
        if (zzzuVar == zzzu.zzc) {
            return zzso.zzc;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzzuVar)));
    }

    private static zzzu zzg(zzso zzsoVar) throws GeneralSecurityException {
        if (zzsoVar == zzso.zzd) {
            return zzzu.zzd;
        }
        if (zzsoVar == zzso.zzb) {
            return zzzu.zza;
        }
        if (zzsoVar == zzso.zze) {
            return zzzu.zzb;
        }
        if (zzsoVar == zzso.zzc) {
            return zzzu.zzc;
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: ".concat(zzsoVar.toString()));
    }

    private static zzxl zzh(zzzz zzzzVar) {
        zzxk zzxkVarZzg = zzxl.zzg();
        zzzv zzzvVarZzf = zzzzVar.zzf();
        zzxg zzxgVarZzb = zzxh.zzb();
        zzxgVarZzb.zza((zzwp) zzh.zzb(zzzvVarZzf.zze()));
        zzxkVarZzg.zza((zzxh) zzxgVarZzb.zzp());
        byte[] bArrZza = zzth.zza(zzzzVar.zzd());
        zzaer zzaerVar = zzaer.zza;
        zzxkVarZzg.zzb(zzaer.zzs(bArrZza, 0, bArrZza.length));
        byte[] bArrZza2 = zzth.zza(zzzzVar.zzf().zzc());
        zzxkVarZzg.zzc(zzaer.zzs(bArrZza2, 0, bArrZza2.length));
        return (zzxl) zzxkVarZzg.zzp();
    }

    private static zzadz zzi(zzaer zzaerVar, zzsy zzsyVar) {
        return zzadz.zza(new BigInteger(1, zzaerVar.zzy()), zzsyVar);
    }
}
