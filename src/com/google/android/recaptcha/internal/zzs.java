package com.google.android.recaptcha.internal;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class zzs implements zzaj {
    public static final /* synthetic */ zzs zza;
    public static final /* synthetic */ zzs zzb;
    public static final /* synthetic */ zzs zzc;
    public static final /* synthetic */ zzs zzd;
    public static final /* synthetic */ zzs zze;
    public static final /* synthetic */ zzs zzf;
    public static final /* synthetic */ zzs zzg;
    public static final /* synthetic */ zzs zzh;
    public static final /* synthetic */ zzs zzi;
    public static final /* synthetic */ zzs zzj;
    public static final /* synthetic */ zzs zzk;
    public static final /* synthetic */ zzs zzl;
    public static final /* synthetic */ zzs zzm;
    public static final /* synthetic */ zzs zzn;
    public static final /* synthetic */ zzs zzo;
    public static final /* synthetic */ zzs zzp;
    private final /* synthetic */ int zzq;

    static {
        int i = (((((~386839851) & 502322068) | 1879579667) + ((386839851 & 1341449093) | 1376723995)) - (-1804183289)) ^ (2118801173 % 1119399015);
        int i2 = (((((~310242589) & 1847460522) | 916960512) + ((310242589 & 1486357226) | 346393668)) - 2000278179) ^ (2125023787 % 550804899);
        int i3 = (((((~2025251990) & 688917531) | 1994836270) + ((2025251990 & 152053269) | 883831534)) - (-1390790891)) ^ (1069117832 % 942581876);
        int i4 = (((((~1650994571) & 1371186185) | 1050017619) + ((1650994571 & 1227505800) | 205643505)) - (-1965943233)) ^ (1992865128 % 986478257);
        int i5 = (((((~1199680559) & 1141516237) | 463752220) + ((1199680559 & 1150952403) | 43369530)) - 1260832081) ^ (1435001171 % 1047196295);
        int i6 = (((((~1456339643) & 675645608) | 1411114002) + ((1456339643 & 693897896) | 1427718916)) - (-1019776501)) ^ (1561812722 % 1322623287);
        int i7 = (((((~1978701535) & 466139520) | 1762924265) + ((1978701535 & 315141952) | 1765037774)) - (-506179056)) ^ (1934660183 % 1880346039);
        int i8 = (((((~222028828) & 1142841824) | 166034459) + ((222028828 & 1142555104) | 723801104)) - 1805567702) ^ (829570037 % 301373537);
        int i9 = (((((~1396918184) & 1248054849) | 133905852) + ((1396918184 & 1770570357) | 870268086)) - 2138058592) ^ (1934392735 % 620089368);
        int i10 = (((((~1889804310) & 69748736) | 707083889) + ((1889804310 & 604795188) | 951435263)) - 1284100921) ^ (1663080928 % 610506582);
        int i11 = (((((~672139932) & 1821026947) | 1629321417) + ((672139932 & 214090242) | 828986457)) - (-2020274916)) ^ (1579068977 % 395191309);
        int i12 = (((((~99568484) & 3432473) | 44796710) + ((99568484 & 403994653) | 1028298918)) - 934561551) ^ (1076919591 % 234262547);
        zzp = new zzs((((((~1759592334) & 1334334268) | 1043988652) + ((1759592334 & 1099191056) | 509413516)) - (-1669029722)) ^ (599529154 % 33713861));
        zzo = new zzs((((((~1160063179) & 1841305796) | 575720514) + ((1160063179 & 1300254868) | 1886521)) - 1545499812) ^ (1060494695 % 728149010));
        zzn = new zzs(i12);
        zzm = new zzs(i3);
        zzl = new zzs(i4);
        zzk = new zzs(i5);
        zzj = new zzs(i2);
        zzi = new zzs(i6);
        zzh = new zzs(i7);
        zzg = new zzs(i8);
        zzf = new zzs(i);
        zze = new zzs(i9);
        zzd = new zzs(i10);
        zzc = new zzs(i11);
        zzb = new zzs(1);
        zza = new zzs(0);
    }

    private /* synthetic */ zzs(int i) {
        this.zzq = i;
    }

    @Override // java.util.function.Function
    public final /* synthetic */ Object apply(Object obj) {
        zzc zzcVar;
        zzar zzarVarZzc;
        int i = ((((~1301053842) & 15767913) | 186261585) + ((1301053842 & (-2132756056)) | (-887741291))) - (-855860664);
        int i2 = 1616992200 % 241315329;
        try {
            try {
                try {
                    try {
                        try {
                            switch (this.zzq) {
                                case 0:
                                    return ((zzam) obj).zza();
                                case 1:
                                    try {
                                        zzai zzaiVar = ((zzam) obj).zzb;
                                        long jZzm = zzaiVar.zzc().zzm();
                                        zzar zzarVarZzc2 = zzaiVar.zzc();
                                        List listZzo = zzarVarZzc2.zzo();
                                        if (jZzm < 0) {
                                            jZzm += (long) listZzo.size();
                                        }
                                        if (jZzm < 0 || jZzm >= listZzo.size()) {
                                            throw new zzap();
                                        }
                                        listZzo.remove((int) jZzm);
                                        zzaiVar.zzb(zzarVarZzc2);
                                        return Optional.empty();
                                    } catch (zzap unused) {
                                        zzcVar = zzc.zzI;
                                    }
                                    break;
                                case 2:
                                    zzam zzamVar = (zzam) obj;
                                    zzai zzaiVar2 = zzamVar.zzb;
                                    zzar zzarVarZzc3 = zzaiVar2.zzc();
                                    zzv zzvVarZzn = zzaiVar2.zzc().zzn();
                                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                    zzarVarZzc3.zzk(byteArrayOutputStream);
                                    zzamVar.zzb.zzb(zzar.zzd(zzvVarZzn.zzd(zzv.zze(byteArrayOutputStream.toByteArray()))));
                                    return Optional.empty();
                                case 3:
                                    zzam zzamVar2 = (zzam) obj;
                                    zzai zzaiVar3 = zzamVar2.zzb;
                                    zzar zzarVarZzc4 = zzaiVar3.zzc();
                                    zzv zzvVarZzn2 = zzaiVar3.zzc().zzn();
                                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                                    zzr.zzb(zzarVarZzc4.zzm(), new zzaq(byteArrayOutputStream2, i ^ i2), false);
                                    zzamVar2.zzb.zzb(zzar.zzd(zzvVarZzn2.zzd(zzv.zze(byteArrayOutputStream2.toByteArray()))));
                                    return Optional.empty();
                                case 4:
                                    zzam zzamVar3 = (zzam) obj;
                                    zzamVar3.zzb.zze(-(zzamVar3.zzc.zzb().zzb + zzamVar3.zzd.zze()), zzamVar3.zzb.zzc());
                                    return Optional.empty();
                                case 5:
                                    zzai zzaiVar4 = ((zzam) obj).zzb;
                                    zzaiVar4.zzb(zzar.zzb(zzaiVar4.zzc().zzm() << ((int) zzaiVar4.zzc().zzm())));
                                    return Optional.empty();
                                case 6:
                                    zzai zzaiVar5 = ((zzam) obj).zzb;
                                    zzaiVar5.zzb(zzar.zzb(zzaiVar5.zzc().zzm() >>> ((int) zzaiVar5.zzc().zzm())));
                                    return Optional.empty();
                                case 7:
                                    zzai zzaiVar6 = ((zzam) obj).zzb;
                                    zzaiVar6.zzb(zzar.zzc(zzaiVar6.zzc().zzq() - zzaiVar6.zzc().zzq()));
                                    return Optional.empty();
                                case 8:
                                    zzai zzaiVar7 = ((zzam) obj).zzb;
                                    zzaiVar7.zzb(zzar.zzb(zzaiVar7.zzc().zzm() - zzaiVar7.zzc().zzm()));
                                    return Optional.empty();
                                case 9:
                                    zzam zzamVar4 = (zzam) obj;
                                    zzai zzaiVar8 = zzamVar4.zzb;
                                    long jZzm2 = zzaiVar8.zzc().zzm();
                                    zzar zzarVarZzc5 = zzaiVar8.zzc();
                                    zzai zzaiVar9 = zzamVar4.zzb;
                                    zzar zzarVarZzd = zzaiVar9.zzd(jZzm2);
                                    zzaiVar9.zze(jZzm2, zzarVarZzc5);
                                    zzaiVar9.zzb(zzarVarZzd);
                                    return Optional.empty();
                                case 10:
                                    zzam zzamVar5 = (zzam) obj;
                                    zzai zzaiVar10 = zzamVar5.zzb;
                                    long jZzm3 = zzamVar5.zzc.zzb().zzb + zzaiVar10.zzc().zzm();
                                    zzar zzarVarZzc6 = zzaiVar10.zzc();
                                    zzai zzaiVar11 = zzamVar5.zzb;
                                    long j = -jZzm3;
                                    zzar zzarVarZzd2 = zzaiVar11.zzd(j);
                                    zzaiVar11.zze(j, zzarVarZzc6);
                                    zzaiVar11.zzb(zzarVarZzd2);
                                    return Optional.empty();
                                case 11:
                                    zzam zzamVar6 = (zzam) obj;
                                    long jZze = zzamVar6.zzc.zzb().zzb + zzamVar6.zzd.zze();
                                    zzar zzarVarZzc7 = zzamVar6.zzb.zzc();
                                    zzai zzaiVar12 = zzamVar6.zzb;
                                    long j2 = -jZze;
                                    zzar zzarVarZzd3 = zzaiVar12.zzd(j2);
                                    zzaiVar12.zze(j2, zzarVarZzc7);
                                    zzaiVar12.zzb(zzarVarZzd3);
                                    return Optional.empty();
                                case 12:
                                    zzam zzamVar7 = (zzam) obj;
                                    long jZzm4 = zzamVar7.zzb.zzc().zzm();
                                    try {
                                        zzai zzaiVar13 = zzamVar7.zzb;
                                        int i3 = ((((~1349029729) & 1683806466) | 298308136) + ((1349029729 & (-199751405)) | (-1830723495))) - 438321650;
                                        int i4 = 1478326644 % 593443203;
                                        if (jZzm4 == 0) {
                                            zzarVarZzc = zzaiVar13.zzc();
                                        } else {
                                            int iZza = zzaiVar13.zza(jZzm4);
                                            zzaiVar13.zzb += i3 ^ i4;
                                            zzarVarZzc = (zzar) zzaiVar13.zza.remove(iZza);
                                        }
                                        zzaiVar13.zzb(zzarVarZzc);
                                        return Optional.empty();
                                    } catch (zzag unused2) {
                                        zzcVar = zzc.zzg;
                                    }
                                    break;
                                case 13:
                                    zzam zzamVar8 = (zzam) obj;
                                    try {
                                        zzai zzaiVar14 = zzamVar8.zzb;
                                        long jZzm5 = zzaiVar14.zzc().zzm();
                                        long jZzm6 = zzaiVar14.zzc().zzm();
                                        zzaf zzafVar = zzamVar8.zzc;
                                        zzaa zzaaVar = zzamVar8.zzd;
                                        zzafVar.zza(zzaaVar.zzb(), jZzm6, zzafVar.zzb().zzb);
                                        zzaaVar.zza(jZzm5);
                                        return Optional.empty();
                                    } catch (zzad unused3) {
                                        zzcVar = zzc.zzB;
                                    } catch (zzae unused4) {
                                        zzcVar = zzc.zzw;
                                    } catch (zzy | zzz unused5) {
                                        zzcVar = zzc.zzr;
                                    }
                                    break;
                                case 14:
                                    zzam zzamVar9 = (zzam) obj;
                                    try {
                                        zzamVar9.zzb.zzb(zzar.zzg(zzamVar9.zzb.zzc().zzl()));
                                        return Optional.empty();
                                    } catch (zzao unused6) {
                                        zzcVar = zzc.zzp;
                                    }
                                    break;
                                default:
                                    try {
                                        zzai zzaiVar15 = ((zzam) obj).zzb;
                                        Iterator it = zzaiVar15.zzc().zzo().iterator();
                                        while (it.hasNext()) {
                                            zzaiVar15.zzb((zzar) it.next());
                                            break;
                                        }
                                        return Optional.empty();
                                    } catch (zzah unused7) {
                                        zzcVar = zzc.zza;
                                    }
                                    break;
                            }
                        } catch (zzae | zzag unused8) {
                            zzcVar = zzc.zzx;
                        }
                    } catch (zzah e) {
                        e = e;
                        throw new AssertionError(zzt.zza("CEiv6BFfPnitUE+D"), e);
                    }
                } catch (zzao | zzx | zzz unused9) {
                    zzcVar = zzc.zzy;
                }
            } catch (zzag unused10) {
                zzcVar = zzc.zzh;
            }
        } catch (zzao unused11) {
            zzcVar = zzc.zzk;
        } catch (IOException e2) {
            e = e2;
            throw new AssertionError(zzt.zza("CEiv6BFfPnitUE+D"), e);
        }
        return Optional.of(zzcVar);
    }
}
