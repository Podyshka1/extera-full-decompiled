package com.google.android.recaptcha.internal;

import java.util.Map;
import java.util.Optional;

/* JADX INFO: loaded from: classes5.dex */
public final class zzg implements zzd {
    private final zzam zza;
    private boolean zzb;

    public zzg() {
        int[] iArr = {674402557, 172623493, 866613568, 1013573333, 1957030256, -522343499, 923703910, 1260995960, 573666704};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        this.zza = new zzam(zzh.zza, new zzai((i8 % 573666704) ^ (i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6))), new zzaa(new zzm(0)));
        this.zzb = false;
    }

    @Override // com.google.android.recaptcha.internal.zzd
    public final void zza() throws zzf {
        long j = ((((~1035317824L) & 1087134510) | 473138451) + ((1035317824 & 1105001004) | 657630210)) - 2043255476;
        long j2 = 1367480709 % 198805545;
        long j3 = ((((~1375552878L) & 930005130) | 1249030082) + ((1375552878 & 1024213016) | 136481682)) - 2090967663;
        long j4 = 2014126950 % 228698447;
        long j5 = ((((~1717807878L) & 147150979) | 945873012) + ((1717807878 & 9771395) | 1998120264)) - 2877586875L;
        long j6 = 1851164576 % 888017808;
        long j7 = (((((~1836208501L) & 210137385) | 1516043939) + ((1836208501 & 2277638536L) | 4082416871L)) - 5385744160L) ^ (1886872710 % 1598527249);
        long j8 = ((((~141540322L) & 1502636208) | 1177417290) + ((141540322 & (-1181737292)) | (-496945651))) - 1394421505;
        long j9 = 1716462158 % 477127367;
        long j10 = ((((~1509887186L) & 791214792) | 681348159) + ((1509887186 & (-685739327)) | (-263323639))) - 602175498;
        long j11 = 1276192190 % 1211608254;
        long j12 = ((((~2088058261L) & 1934940106) | 816371073) + ((2088058261 & (-1009515958)) | (-2071222235))) - 290091873;
        long j13 = 1436796072 % 1021432192;
        int i = (((((~1735551514) & 822814446) | 281413778) + ((1735551514 & (-1593235860)) | (-1729050365))) - (-1767884548)) ^ (1948377259 % 1073881423);
        int i2 = ((((~1945972417) & 2047608354) | 1680042585) + ((445391906 & 1945972417) | 1101177153)) - (-1085617420);
        int i3 = 2082735328 % 76810012;
        int i4 = ((((~976668784) & 180291712) | 743486707) + ((976668784 & 45025824) | 621843232)) - 1388598289;
        int i5 = 1026201114 % 47830643;
        boolean z = this.zzb;
        String strZza = zzt.zza("BkCyvAwRMTm0TkOZyDYQMHRR/BfGWZQu16Q1Ljk3pdYDZK5S");
        if (z) {
            return;
        }
        try {
            Map map = zzal.zza;
            zzpv zzpvVar = new zzpv();
            zzpvVar.zza(zzw.zza, zzar.zzf(zzp.zzr));
            zzpvVar.zza(zzw.zzb, zzr.zza(0L));
            zzpvVar.zza(zzw.zzc, zzr.zza(1L));
            zzpvVar.zza(zzw.zzd, zzr.zza(j ^ j2));
            zzpvVar.zza(zzw.zze, zzr.zza(j3 ^ j4));
            zzpvVar.zza(zzw.zzf, zzr.zza(j5 ^ j6));
            zzpvVar.zza(zzw.zzg, zzr.zza(j7));
            long j14 = j8 ^ j9;
            zzpvVar.zza(zzw.zzh, zzr.zza(j14));
            zzpvVar.zza(zzw.zzi, zzr.zza(j10 ^ j11));
            zzpvVar.zza(zzw.zzj, zzar.zzf(zzo.zza));
            zzpvVar.zza(zzw.zzk, zzar.zzf(zzo.zzc));
            zzpvVar.zza(zzw.zzl, zzar.zzf(zzo.zzi));
            zzpvVar.zza(zzw.zzm, zzar.zzf(zzo.zzj));
            zzpvVar.zza(zzw.zzn, zzar.zzf(zzo.zzm));
            zzpvVar.zza(zzw.zzo, zzar.zzf(zzp.zzm));
            zzpvVar.zza(zzw.zzp, zzar.zzf(zzo.zze));
            zzpvVar.zza(zzw.zzq, zzar.zzf(zzo.zzf));
            zzpvVar.zza(zzw.zzr, zzar.zzf(zzo.zzg));
            zzpvVar.zza(zzw.zzs, zzar.zzf(zzo.zzh));
            zzpvVar.zza(zzw.zzt, zzar.zzf(zzp.zzg));
            zzpvVar.zza(zzw.zzu, zzar.zzf(zzp.zzi));
            zzpvVar.zza(zzw.zzw, zzar.zzf(zzo.zzn));
            zzpvVar.zza(zzw.zzx, zzar.zzf(zzo.zzo));
            zzpvVar.zza(zzw.zzy, zzar.zzf(zzo.zzr));
            zzpvVar.zza(zzw.zzz, zzar.zzf(zzo.zzs));
            zzpvVar.zza(zzw.zzA, zzar.zzf(zzo.zzt));
            zzpvVar.zza(zzw.zzB, zzar.zzf(zzo.zzu));
            zzpvVar.zza(zzw.zzC, zzar.zzf(zzp.zza));
            zzpvVar.zza(zzw.zzD, zzar.zzf(zzp.zzc));
            zzpvVar.zza(zzw.zzE, zzar.zzf(zzp.zzd));
            zzpvVar.zza(zzw.zzF, zzar.zzf(zzp.zze));
            zzpvVar.zza(zzw.zzG, zzar.zzf(zzp.zzj));
            zzpvVar.zza(zzw.zzH, zzar.zzf(zzp.zzk));
            zzpvVar.zza(zzw.zzI, zzar.zzf(zzp.zzo));
            zzpvVar.zza(zzw.zzJ, zzar.zzf(zzp.zzp));
            zzpvVar.zza(zzw.zzK, zzar.zzf(zzp.zzt));
            zzpvVar.zza(zzw.zzL, zzar.zzf(zzp.zzu));
            zzpvVar.zza(zzw.zzM, zzar.zzf(zzs.zza));
            zzpvVar.zza(zzw.zzN, zzar.zzf(zzs.zzc));
            zzpvVar.zza(zzw.zzU, zzar.zzf(zzs.zzd));
            zzpvVar.zza(zzw.zzO, zzar.zzf(zzs.zzi));
            zzpvVar.zza(zzw.zzP, zzar.zzf(zzs.zzj));
            zzpvVar.zza(zzw.zzQ, zzar.zzf(zzs.zzm));
            zzpvVar.zza(zzw.zzR, zzar.zzf(zzs.zzp));
            zzpvVar.zza(zzw.zzS, zzar.zzf(zzo.zzp));
            zzpvVar.zza(zzw.zzT, zzar.zzf(zzs.zzk));
            zzpvVar.zza(zzw.zzV, zzar.zzf(zzo.zzk));
            zzpvVar.zza(zzw.zzW, zzar.zzf(zzs.zzf));
            zzpvVar.zza(zzw.zzX, zzar.zzf(zzs.zzg));
            zzpvVar.zza(zzw.zzv, zzar.zzf(zzp.zzh));
            zzpvVar.zza(zzw.zzY, zzar.zzf(zzs.zzo));
            zzpvVar.zza(zzw.zzZ, zzar.zzf(zzp.zzl));
            zzpvVar.zza(zzw.zzaa, zzar.zzf(zzs.zzn));
            zzpvVar.zza(zzw.zzab, zzar.zzf(zzp.zzb));
            zzpvVar.zza(zzw.zzac, zzar.zzf(zzs.zzb));
            zzpvVar.zza(zzw.zzad, zzar.zzf(zzo.zzq));
            zzpvVar.zza(zzw.zzae, zzar.zzf(zzs.zzl));
            zzpvVar.zza(zzw.zzaf, zzar.zzf(zzo.zzd));
            zzpvVar.zza(zzw.zzag, zzar.zzf(zzs.zze));
            zzpvVar.zza(zzw.zzah, zzar.zzf(zzp.zzs));
            zzpvVar.zza(zzw.zzai, zzar.zzf(zzo.zzb));
            zzpvVar.zza(zzw.zzaj, zzar.zzf(zzs.zzh));
            zzpvVar.zza(zzw.zzak, zzar.zzf(zzp.zzn));
            zzpvVar.zza(zzw.zzal, zzar.zzf(zzo.zzl));
            zzpvVar.zza(zzw.zzam, zzar.zzf(zzp.zzq));
            zzpvVar.zza(zzw.zzan, zzar.zzf(zzp.zzf));
            zzpw zzpwVarZzb = zzpvVar.zzb();
            for (long j15 = j14; j15 >= (j12 ^ j13); j15 += j14) {
                zzw zzwVar = (zzw) map.get(Long.valueOf(j15));
                if (zzwVar == null) {
                    StringBuilder sb = new StringBuilder(String.valueOf(j15).length() + (i2 ^ i3));
                    sb.append(strZza);
                    sb.append(j15);
                    throw new zzak(sb.toString());
                }
                this.zza.zzb.zzb((zzar) zzpwVarZzb.get(zzwVar));
            }
            for (int i6 = i; i6 < (i4 ^ i5); i6++) {
                this.zza.zzb.zzb(zzar.zza(null));
            }
            this.zzb = true;
        } catch (zzah e) {
            throw new zzf(zze.zza, e);
        }
    }

    @Override // com.google.android.recaptcha.internal.zzd
    public final void zzb(byte[] bArr) {
        this.zza.zzd.zzb = zzv.zze(bArr);
    }

    @Override // com.google.android.recaptcha.internal.zzd
    public final Object zzc(Optional optional) throws zzf, zzb {
        String str;
        String str2;
        long j;
        Object obj;
        zzc zzcVar;
        Object objOf;
        long j2;
        long j3 = ((((~916768482L) & 1210206756) | 825434512) + ((916768482 & 2084588068) | 935694593)) - 2890823773L;
        long j4 = 384868448 % 102194872;
        int i = ((((~1787189168) & 1360183776) | 611516995) + ((1787189168 & 1426637216) | 612056659)) - 1771477255;
        int i2 = 1821115873 % 1010014811;
        try {
            try {
                if (this.zzb) {
                    str = "BkCyvAwRMTm/WV6IwjgYPC5Y7R/NUsZm";
                    str2 = "CEiv6BFfPnitUE+D";
                    j = 0;
                    obj = null;
                } else {
                    j = 0;
                    long j5 = (((((~1135386147L) & 134292177) | 308265485) + ((1135386147 & 2282102992L) | 4087744295L)) - 4372216822L) ^ (1602182790 % 481387902);
                    obj = null;
                    long j6 = (((((~1455252833L) & 285456334) | 915671622) + ((1455252833 & 1094956440) | 1178878071)) - 1823436645) ^ (1115917669 % 413892161);
                    str = "BkCyvAwRMTm/WV6IwjgYPC5Y7R/NUsZm";
                    str2 = "CEiv6BFfPnitUE+D";
                    long j7 = (((((~966071161L) & 134760116) | 1107483161) + ((966071161 & 134778021) | 1084418587)) - 2260964466L) ^ (1229999242 % 291079690);
                    long j8 = (((((~220510539L) & 10557761) | 1129707711) + ((220510539 & 1101021544) | 1732788266)) - 2416723516L) ^ (1063641238 % 607382700);
                    long j9 = (((((~1362243428L) & 1360043852) | 375086571) + ((1362243428 & (-284917115)) | (-1365830413))) - 224104659) ^ (1106211926 % 327305250);
                    long j10 = (((((~1247412082L) & 1557682041) | 422939207) + ((1247412082 & (-423078600)) | (-1556870524))) - 59516211) ^ (2032652302 % 71185160);
                    long j11 = (((((~603123090L) & 2086426024) | 338389065) + ((603123090 & (-338422304)) | (-2088687544))) - 19756211) ^ (1216803069 % 33252481);
                    String strZza = zzt.zza("BkCyvAwRMTm0TkOZyDYQMHRR/BfGWZQu16Q1Ljk3pdYDZK5S");
                    int i3 = ((((~309667127) & 3230374) | 101519473) + ((607439494 & 309667127) | 793023520)) - 846909942;
                    int i4 = 1953534826 % 1902736997;
                    try {
                        Map map = zzal.zza;
                        zzpv zzpvVar = new zzpv();
                        zzpvVar.zza(zzw.zza, zzar.zzf(zzp.zzr));
                        zzpvVar.zza(zzw.zzb, zzr.zza(0L));
                        zzpvVar.zza(zzw.zzc, zzr.zza(1L));
                        zzpvVar.zza(zzw.zzd, zzr.zza(j5));
                        zzpvVar.zza(zzw.zze, zzr.zza(j6));
                        zzpvVar.zza(zzw.zzf, zzr.zza(j7));
                        zzpvVar.zza(zzw.zzg, zzr.zza(j8));
                        zzpvVar.zza(zzw.zzh, zzr.zza(j9));
                        zzpvVar.zza(zzw.zzi, zzr.zza(j10));
                        zzpvVar.zza(zzw.zzj, zzar.zzf(zzo.zza));
                        zzpvVar.zza(zzw.zzk, zzar.zzf(zzo.zzc));
                        zzpvVar.zza(zzw.zzl, zzar.zzf(zzo.zzi));
                        zzpvVar.zza(zzw.zzm, zzar.zzf(zzo.zzj));
                        zzpvVar.zza(zzw.zzn, zzar.zzf(zzo.zzm));
                        zzpvVar.zza(zzw.zzo, zzar.zzf(zzp.zzm));
                        zzpvVar.zza(zzw.zzp, zzar.zzf(zzo.zze));
                        zzpvVar.zza(zzw.zzq, zzar.zzf(zzo.zzf));
                        zzpvVar.zza(zzw.zzr, zzar.zzf(zzo.zzg));
                        zzpvVar.zza(zzw.zzs, zzar.zzf(zzo.zzh));
                        zzpvVar.zza(zzw.zzt, zzar.zzf(zzp.zzg));
                        zzpvVar.zza(zzw.zzu, zzar.zzf(zzp.zzi));
                        zzpvVar.zza(zzw.zzw, zzar.zzf(zzo.zzn));
                        zzpvVar.zza(zzw.zzx, zzar.zzf(zzo.zzo));
                        zzpvVar.zza(zzw.zzy, zzar.zzf(zzo.zzr));
                        zzpvVar.zza(zzw.zzz, zzar.zzf(zzo.zzs));
                        zzpvVar.zza(zzw.zzA, zzar.zzf(zzo.zzt));
                        zzpvVar.zza(zzw.zzB, zzar.zzf(zzo.zzu));
                        zzpvVar.zza(zzw.zzC, zzar.zzf(zzp.zza));
                        zzpvVar.zza(zzw.zzD, zzar.zzf(zzp.zzc));
                        zzpvVar.zza(zzw.zzE, zzar.zzf(zzp.zzd));
                        zzpvVar.zza(zzw.zzF, zzar.zzf(zzp.zze));
                        zzpvVar.zza(zzw.zzG, zzar.zzf(zzp.zzj));
                        zzpvVar.zza(zzw.zzH, zzar.zzf(zzp.zzk));
                        zzpvVar.zza(zzw.zzI, zzar.zzf(zzp.zzo));
                        zzpvVar.zza(zzw.zzJ, zzar.zzf(zzp.zzp));
                        zzpvVar.zza(zzw.zzK, zzar.zzf(zzp.zzt));
                        zzpvVar.zza(zzw.zzL, zzar.zzf(zzp.zzu));
                        zzpvVar.zza(zzw.zzM, zzar.zzf(zzs.zza));
                        zzpvVar.zza(zzw.zzN, zzar.zzf(zzs.zzc));
                        zzpvVar.zza(zzw.zzU, zzar.zzf(zzs.zzd));
                        zzpvVar.zza(zzw.zzO, zzar.zzf(zzs.zzi));
                        zzpvVar.zza(zzw.zzP, zzar.zzf(zzs.zzj));
                        zzpvVar.zza(zzw.zzQ, zzar.zzf(zzs.zzm));
                        zzpvVar.zza(zzw.zzR, zzar.zzf(zzs.zzp));
                        zzpvVar.zza(zzw.zzS, zzar.zzf(zzo.zzp));
                        zzpvVar.zza(zzw.zzT, zzar.zzf(zzs.zzk));
                        zzpvVar.zza(zzw.zzV, zzar.zzf(zzo.zzk));
                        zzpvVar.zza(zzw.zzW, zzar.zzf(zzs.zzf));
                        zzpvVar.zza(zzw.zzX, zzar.zzf(zzs.zzg));
                        zzpvVar.zza(zzw.zzv, zzar.zzf(zzp.zzh));
                        zzpvVar.zza(zzw.zzY, zzar.zzf(zzs.zzo));
                        zzpvVar.zza(zzw.zzZ, zzar.zzf(zzp.zzl));
                        zzpvVar.zza(zzw.zzaa, zzar.zzf(zzs.zzn));
                        zzpvVar.zza(zzw.zzab, zzar.zzf(zzp.zzb));
                        zzpvVar.zza(zzw.zzac, zzar.zzf(zzs.zzb));
                        zzpvVar.zza(zzw.zzad, zzar.zzf(zzo.zzq));
                        zzpvVar.zza(zzw.zzae, zzar.zzf(zzs.zzl));
                        zzpvVar.zza(zzw.zzaf, zzar.zzf(zzo.zzd));
                        zzpvVar.zza(zzw.zzag, zzar.zzf(zzs.zze));
                        zzpvVar.zza(zzw.zzah, zzar.zzf(zzp.zzs));
                        zzpvVar.zza(zzw.zzai, zzar.zzf(zzo.zzb));
                        zzpvVar.zza(zzw.zzaj, zzar.zzf(zzs.zzh));
                        zzpvVar.zza(zzw.zzak, zzar.zzf(zzp.zzn));
                        zzpvVar.zza(zzw.zzal, zzar.zzf(zzo.zzl));
                        zzpvVar.zza(zzw.zzam, zzar.zzf(zzp.zzq));
                        zzpvVar.zza(zzw.zzan, zzar.zzf(zzp.zzf));
                        zzpw zzpwVarZzb = zzpvVar.zzb();
                        for (long j12 = j9; j12 >= j11; j12 += j9) {
                            zzw zzwVar = (zzw) map.get(Long.valueOf(j12));
                            if (zzwVar == null) {
                                StringBuilder sb = new StringBuilder(String.valueOf(j12).length() + (i3 ^ i4));
                                sb.append(strZza);
                                sb.append(j12);
                                throw new zzak(sb.toString());
                            }
                            this.zza.zzb.zzb((zzar) zzpwVarZzb.get(zzwVar));
                        }
                        for (int i5 = (((((~936621968) & 262671068) | 1099387951) + ((936621968 & 506342128) | 1363551278)) - (-1602248659)) ^ (989492335 % 981766422); i5 < (i ^ i2); i5++) {
                            this.zza.zzb.zzb(zzar.zza(null));
                        }
                        this.zzb = true;
                    } catch (zzah e) {
                        throw new zzf(zze.zza, e);
                    }
                }
                zzaa zzaaVar = this.zza.zzd;
                try {
                    zzaaVar.zza(j);
                    zzaaVar.zzc = new zzk();
                    int i6 = (((((~1579952366) & 696858471) | 1649880129) + ((1579952366 & 461935398) | 374728792)) - 2045785390) ^ (866596855 % 242639747);
                    int i7 = (((((~1855103807) & 659964468) | 1290440217) + ((1855103807 & 588562660) | 482512074)) - 1987315067) ^ (988506952 % 614340012);
                    int i8 = (((((~438485374) & 2077294240) | 349324906) + ((438485374 & (-285165440)) | (-2066922747))) - 90097908) ^ (1566586128 % 39848341);
                    int i9 = (((((~167368542) & 67146180) | 1656237743) + ((167368542 & 1145098560) | 1113671327)) - (-1733089590)) ^ (1999038585 % 574620392);
                    String strZza2 = zzt.zza("Ake3rgkWMjm/WV6IwjgYPC5W5wzEVsBo");
                    String strZza3 = zzt.zza("Ake3rgkWMjm/WV6IwjgYPC5A+hHdWNcn1PY=");
                    try {
                        int iZzd = this.zza.zzd.zzd();
                        int i10 = ((iZzd & i6) << i7) >> i7;
                        int i11 = ((i6 & (iZzd >> i7)) << i7) >> i7;
                        if (i10 != i8) {
                            throw new zzb(strZza2.concat(String.format(zzt.zza("e1Hk+x0="), Short.valueOf((short) i10))));
                        }
                        if (i11 != i9) {
                            throw new zzb(strZza3.concat(String.format(zzt.zza("e1Hk+x0="), Short.valueOf((short) i11))));
                        }
                        int i12 = (((((~284327308) & 119677334) | 1708641080) + ((284327308 & 1512061062) | 1548541712)) - (-1431765395)) ^ (2085308422 % 531900034);
                        String strZza4 = zzt.zza("HkeprgsbOny5AEiU1TIfNmpVqAjMRcch17g1");
                        try {
                            int iZzd2 = this.zza.zzd.zzd();
                            if (iZzd2 != i12) {
                                throw new zzb(strZza4.concat(String.format(zzt.zza("e1Hk9x0="), Integer.valueOf(iZzd2))));
                            }
                            try {
                                zzaa zzaaVar2 = this.zza.zzd;
                                zzaaVar2.zzc = zzaaVar2.zzd.zza(new int[]{zzaaVar2.zzd()}[0], zza.zza);
                                try {
                                    this.zza.zzd.zza(j3 ^ j4);
                                    zzpt zzptVar = zzi.zza;
                                    zzam zzamVar = this.zza;
                                    Optional.empty();
                                    Object obj2 = true != optional.isPresent() ? zzab.zzb.get() : optional.get();
                                    zzar zzarVarZzg = obj2 instanceof zzar ? (zzar) obj2 : zzar.zzg(obj2);
                                    zzai zzaiVar = zzamVar.zzb;
                                    zzaiVar.zzb(zzarVarZzg);
                                    zzaiVar.zzb(zzar.zza(obj));
                                    zzaf zzafVar = zzamVar.zzc;
                                    zzafVar.zza(0L, 0L, zzaiVar.zzb);
                                    while (!zzafVar.zza.isEmpty()) {
                                        zzaa zzaaVar3 = zzamVar.zzd;
                                        long jZzb = zzaaVar3.zzb();
                                        try {
                                            try {
                                                try {
                                                    try {
                                                        objOf = zzamVar.zzb.zzd(zzaaVar3.zzc()).zzp().apply(zzamVar);
                                                    } catch (Throwable unused) {
                                                        zzcVar = zzc.zzv;
                                                        objOf = Optional.of(zzcVar);
                                                    }
                                                } catch (zzao unused2) {
                                                    zzcVar = zzc.zzc;
                                                }
                                            } catch (zzag unused3) {
                                                zzcVar = zzc.zzb;
                                            }
                                        } catch (zzz unused4) {
                                            zzcVar = zzc.zzu;
                                        }
                                        Optional optional2 = (Optional) objOf;
                                        if (optional2.isPresent()) {
                                            if (!zzi.zza.contains(optional2.get())) {
                                                throw new zzf(zze.zzg, (zzc) optional2.get(), jZzb);
                                            }
                                            Object obj3 = optional2.get();
                                            long j13 = ((((~71061648L) & 4855882) | 981508465) + ((71061648 & 2162056234L) | 3988014384L)) - 4653022942L;
                                            long j14 = 1865033882 % 1543678155;
                                            long jZzb2 = zzamVar.zzd.zzb();
                                            do {
                                                try {
                                                    j2 = zzamVar.zzc.zzb().zzc;
                                                    Optional optionalZza = zzamVar.zza();
                                                    if (optionalZza.isPresent() && optionalZza.get() == zzc.zzw) {
                                                        throw new zzf(zze.zzg, (zzc) obj3, jZzb2);
                                                    }
                                                    if (optionalZza.isPresent()) {
                                                        throw new zzf(zze.zzg, (zzc) optionalZza.get(), jZzb2);
                                                    }
                                                } catch (zzae unused5) {
                                                    throw new zzf(zze.zzg, (zzc) obj3, jZzb2);
                                                }
                                            } while (j2 != (j13 ^ j14));
                                        }
                                    }
                                    try {
                                        zzai zzaiVar2 = zzamVar.zzb;
                                        zzar zzarVarZzc = zzaiVar2.zzc();
                                        zzaiVar2.zzc();
                                        return zzarVarZzc.zzh();
                                    } catch (zzag e2) {
                                        throw new zzf(zze.zze, e2);
                                    } catch (zzao e3) {
                                        throw new zzf(zze.zzf, e3);
                                    }
                                } catch (zzy e4) {
                                    e = e4;
                                    throw new AssertionError(zzt.zza(str2), e);
                                } catch (zzz e5) {
                                    e = e5;
                                    throw new AssertionError(zzt.zza(str2), e);
                                }
                            } catch (zzz e6) {
                                throw new zzf(zze.zzd, e6);
                            }
                        } catch (zzz e7) {
                            throw new zzb(zzt.zza(str), e7);
                        }
                    } catch (zzz e8) {
                        throw new zzb(zzt.zza(str), e8);
                    }
                } catch (zzy e9) {
                    e = e9;
                    throw new AssertionError(zzt.zza(str2), e);
                } catch (zzz e10) {
                    e = e10;
                    throw new AssertionError(zzt.zza(str2), e);
                }
            } catch (zzah e11) {
                throw new zzf(zze.zzb, e11);
            }
        } catch (zzad e12) {
            throw new zzf(zze.zzc, e12);
        }
    }

    @Override // com.google.android.recaptcha.internal.zzd
    public final Object zzd(long j, Optional optional) throws zzf, zzb {
        zzc zzcVar;
        Object objOf;
        long j2;
        try {
            if (!this.zzb) {
                zza();
            }
            zzaa zzaaVar = this.zza.zzd;
            try {
                zzaaVar.zza(0L);
                zzaaVar.zzc = new zzk();
                int i = (((((~973294814) & 1252051722) | 51207737) + ((973294814 & 1755615494) | 889459924)) - 1494177384) ^ (1861701682 % 1196748250);
                int i2 = (((((~29116548) & 174422293) | 84709888) + ((29116548 & (-1973327491)) | (-1266641814))) - (-1891730313)) ^ (2091729405 % 1207774949);
                int i3 = (((((~1481969091) & 1539339034) | 571290638) + ((1481969091 & (-104641711)) | (-1573188533))) - 1037089278) ^ (1268374276 % 735169591);
                int i4 = (((((~1154073370) & 142321428) | 1353591727) + ((1154073370 & 1297187856) | 1166811522)) - (-2013292281)) ^ (2093782069 % 857746939);
                try {
                    int iZzd = this.zza.zzd.zzd();
                    int i5 = ((iZzd & i) << i2) >> i2;
                    int i6 = ((i & (iZzd >> i2)) << i2) >> i2;
                    if (i5 != i3) {
                        throw new zzb(zzt.zza("Ake3rgkWMjm/WV6IwjgYPC5W5wzEVsBo").concat(String.format(zzt.zza("e1Hk+x0="), Short.valueOf((short) i5))));
                    }
                    if (i6 != i4) {
                        throw new zzb(zzt.zza("Ake3rgkWMjm/WV6IwjgYPC5A+hHdWNcn1PY=").concat(String.format(zzt.zza("e1Hk+x0="), Short.valueOf((short) i6))));
                    }
                    int[] iArr = {1562478999, 1463850529, 1260006094, 340390947, 1789747714, -1196532793, 55708026, 1386122429, 371888680};
                    int i7 = iArr[0];
                    char c2 = 1;
                    int i8 = iArr[1];
                    int i9 = iArr[2];
                    int i10 = iArr[3];
                    int i11 = (iArr[6] + (((((~i7) & i8) | i9) + ((i7 & i10) | iArr[4])) - iArr[5])) ^ (iArr[7] % 371888680);
                    try {
                        int iZzd2 = this.zza.zzd.zzd();
                        if (iZzd2 != i11) {
                            throw new zzb(zzt.zza("HkeprgsbOny5AEiU1TIfNmpVqAjMRcch17g1").concat(String.format(zzt.zza("e1Hk9x0="), Integer.valueOf(iZzd2))));
                        }
                        try {
                            zzaa zzaaVar2 = this.zza.zzd;
                            zzaaVar2.zzc = zzaaVar2.zzd.zza(new int[]{zzaaVar2.zzd()}[0], zza.zza);
                            try {
                                this.zza.zzd.zza(j);
                                zzpt zzptVar = zzi.zza;
                                zzam zzamVar = this.zza;
                                Optional.empty();
                                Object obj = true != optional.isPresent() ? zzab.zzb.get() : optional.get();
                                zzar zzarVarZzg = obj instanceof zzar ? (zzar) obj : zzar.zzg(obj);
                                zzai zzaiVar = zzamVar.zzb;
                                zzaiVar.zzb(zzarVarZzg);
                                zzaiVar.zzb(zzar.zza(null));
                                zzaf zzafVar = zzamVar.zzc;
                                zzafVar.zza(0L, 0L, zzaiVar.zzb);
                                while (!zzafVar.zza.isEmpty()) {
                                    zzaa zzaaVar3 = zzamVar.zzd;
                                    long jZzb = zzaaVar3.zzb();
                                    char c3 = c2;
                                    try {
                                        try {
                                            try {
                                            } catch (zzao unused) {
                                                zzcVar = zzc.zzc;
                                            }
                                        } catch (zzag unused2) {
                                            zzcVar = zzc.zzb;
                                        }
                                    } catch (zzz unused3) {
                                        zzcVar = zzc.zzu;
                                    }
                                    try {
                                        objOf = zzamVar.zzb.zzd(zzaaVar3.zzc()).zzp().apply(zzamVar);
                                    } catch (Throwable unused4) {
                                        zzcVar = zzc.zzv;
                                        objOf = Optional.of(zzcVar);
                                    }
                                    Optional optional2 = (Optional) objOf;
                                    if (optional2.isPresent()) {
                                        if (!zzi.zza.contains(optional2.get())) {
                                            throw new zzf(zze.zzg, (zzc) optional2.get(), jZzb);
                                        }
                                        Object obj2 = optional2.get();
                                        long[] jArr = {506959639, 1442955280, 62548278, 1413971974, 148798230, 2046775638, 850598623, 978128825, 553574882};
                                        long j3 = jArr[0];
                                        long j4 = jArr[c3];
                                        long j5 = jArr[2];
                                        long j6 = jArr[3];
                                        long j7 = jArr[4];
                                        long j8 = jArr[5];
                                        long j9 = jArr[6];
                                        long j10 = jArr[7];
                                        long j11 = j9 + (((((~j3) & j4) | j5) + ((j3 & j6) | j7)) - j8);
                                        long j12 = j10 % 553574882;
                                        long jZzb2 = zzamVar.zzd.zzb();
                                        do {
                                            try {
                                                j2 = zzamVar.zzc.zzb().zzc;
                                                Optional optionalZza = zzamVar.zza();
                                                if (optionalZza.isPresent() && optionalZza.get() == zzc.zzw) {
                                                    throw new zzf(zze.zzg, (zzc) obj2, jZzb2);
                                                }
                                                if (optionalZza.isPresent()) {
                                                    throw new zzf(zze.zzg, (zzc) optionalZza.get(), jZzb2);
                                                }
                                            } catch (zzae unused5) {
                                                throw new zzf(zze.zzg, (zzc) obj2, jZzb2);
                                            }
                                        } while (j2 != (j11 ^ j12));
                                    }
                                    c2 = c3;
                                }
                                try {
                                    zzai zzaiVar2 = zzamVar.zzb;
                                    zzar zzarVarZzc = zzaiVar2.zzc();
                                    zzaiVar2.zzc();
                                    return zzarVarZzc.zzh();
                                } catch (zzag e) {
                                    throw new zzf(zze.zze, e);
                                } catch (zzao e2) {
                                    throw new zzf(zze.zzf, e2);
                                }
                            } catch (zzy e3) {
                                e = e3;
                                throw new AssertionError(zzt.zza("CEiv6BFfPnitUE+D"), e);
                            } catch (zzz e4) {
                                e = e4;
                                throw new AssertionError(zzt.zza("CEiv6BFfPnitUE+D"), e);
                            }
                        } catch (zzz e5) {
                            throw new zzf(zze.zzd, e5);
                        }
                    } catch (zzz e6) {
                        throw new zzb(zzt.zza("BkCyvAwRMTm/WV6IwjgYPC5Y7R/NUsZm"), e6);
                    }
                } catch (zzz e7) {
                    throw new zzb(zzt.zza("BkCyvAwRMTm/WV6IwjgYPC5Y7R/NUsZm"), e7);
                }
            } catch (zzy e8) {
                e = e8;
                throw new AssertionError(zzt.zza("CEiv6BFfPnitUE+D"), e);
            } catch (zzz e9) {
                e = e9;
                throw new AssertionError(zzt.zza("CEiv6BFfPnitUE+D"), e);
            }
        } catch (zzad e10) {
            throw new zzf(zze.zzc, e10);
        } catch (zzah e11) {
            throw new zzf(zze.zzb, e11);
        }
    }
}
