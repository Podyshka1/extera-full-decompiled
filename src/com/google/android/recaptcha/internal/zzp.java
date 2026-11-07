package com.google.android.recaptcha.internal;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class zzp implements zzaj {
    public static final /* synthetic */ zzp zza;
    public static final /* synthetic */ zzp zzb;
    public static final /* synthetic */ zzp zzc;
    public static final /* synthetic */ zzp zzd;
    public static final /* synthetic */ zzp zze;
    public static final /* synthetic */ zzp zzf;
    public static final /* synthetic */ zzp zzg;
    public static final /* synthetic */ zzp zzh;
    public static final /* synthetic */ zzp zzi;
    public static final /* synthetic */ zzp zzj;
    public static final /* synthetic */ zzp zzk;
    public static final /* synthetic */ zzp zzl;
    public static final /* synthetic */ zzp zzm;
    public static final /* synthetic */ zzp zzn;
    public static final /* synthetic */ zzp zzo;
    public static final /* synthetic */ zzp zzp;
    public static final /* synthetic */ zzp zzq;
    public static final /* synthetic */ zzp zzr;
    public static final /* synthetic */ zzp zzs;
    public static final /* synthetic */ zzp zzt;
    public static final /* synthetic */ zzp zzu;
    private final /* synthetic */ int zzv;

    static {
        int i = (((((~1163384280) & 546336878) | 505597078) + ((1163384280 & 546323048) | 358992768)) - 1346988615) ^ (1124734562 % 530406424);
        int i2 = (((((~86086317) & 1644315690) | 229847203) + ((86086317 & 1644710940) | 145693589)) - 1464982814) ^ (2016408437 % 730832933);
        int i3 = (((((~306851320) & 1264822912) | 1640587974) + ((306851320 & 171608133) | 77403775)) - 1652838498) ^ (1764892438 % 764851988);
        int i4 = (((((~1245644428) & 268473443) | 2019232271) + ((1245644428 & 2266720) | 1693582210)) - (-827594177)) ^ (1308581515 % 354367395);
        int i5 = (((((~1659373349) & 67158599) | 37727454) + ((1659373349 & 1158693377) | 1765350732)) - 1760416061) ^ (1773595097 % 554602408);
        int i6 = (((((~1702943003) & 814688134) | 1149507933) + ((1702943003 & 806043266) | 1183897648)) - (-1377255939)) ^ (1704572553 % 1482841197);
        int i7 = (((((~263043320) & 60114514) | 41169773) + ((263043320 & (-2122202061)) | (-1707691999))) - 2084316433) ^ (1802491982 % 1233114544);
        zzu = new zzp((((((~1183912267) & 781500502) | 1683555200) + ((1183912267 & 180666614) | 541077665)) - (-1949988631)) ^ (1527793660 % 245277883));
        zzt = new zzp((((((~960188534) & 168264392) | 75092503) + ((960188534 & 171312328) | 1886434865)) - 1988142396) ^ (2097657371 % 978053418));
        zzs = new zzp((((((~2113556942) & 940077738) | 1775573937) + ((2113556942 & 269019163) | 1630701617)) - (-641336821)) ^ (1412017135 % 1390387708));
        zzr = new zzp(i7);
        zzq = new zzp(i4);
        zzp = new zzp(i5);
        zzp zzpVar = new zzp(i6);
        int i8 = (((((~1173002606) & 1578625684) | 461390155) + ((1173002606 & 1150790292) | 63439977)) - 1301607397) ^ (1316505735 % 950881304);
        int i9 = (((((~1701475883) & 1167691919) | 1798790684) + ((1701475883 & 617250947) | 846663956)) - (-1618778093)) ^ (118993446 % 73673339);
        int i10 = (((((~1389079342) & 405954796) | 5768195) + ((1389079342 & 967468028) | 1640566546)) - 1618010498) ^ (1588695568 % 1155465115);
        int i11 = (((((~338346092) & 646267921) | 2030210832) + ((338346092 & 109431171) | 1768591350)) - (-956795161)) ^ (1912163036 % 671068506);
        int i12 = (((((~2107654819) & 15073922) | 1957914701) + ((2107654819 & (-2142502266)) | (-1902504939))) - (-100222276)) ^ (1835342733 % 837626799);
        int i13 = (((((~1666231349) & 289538435) | 621649448) + ((1666231349 & 406985107) | 264059440)) - 1093855299) ^ (1698487330 % 272312086);
        int i14 = (((((~1111088131) & 1881672162) | 1222111317) + ((1111088131 & 807995811) | 38123093)) - 1508183853) ^ (1348361729 % 788380902);
        int i15 = (((((~592456289) & 122915509) | 1765820355) + ((592456289 & (-1911322572)) | (-1735916853))) - (-404346116)) ^ (1987235624 % 1451042659);
        int i16 = (((((~1020406649) & 1025610818) | 1309027208) + ((1020406649 & 1931582530) | 1180322452)) - (-1047179772)) ^ (1444311956 % 153162844);
        zzo = zzpVar;
        zzn = new zzp(i3);
        zzm = new zzp(i8);
        zzl = new zzp(i9);
        zzk = new zzp(i10);
        zzj = new zzp(i2);
        zzi = new zzp(i11);
        zzh = new zzp(i12);
        zzg = new zzp(i13);
        zzf = new zzp(i);
        zze = new zzp(i14);
        zzd = new zzp(i15);
        zzc = new zzp(i16);
        zzb = new zzp(1);
        zza = new zzp(0);
    }

    private /* synthetic */ zzp(int i) {
        this.zzv = i;
    }

    @Override // java.util.function.Function
    public final /* synthetic */ Object apply(Object obj) {
        zzc zzcVar;
        long j = 1;
        try {
            try {
                try {
                    try {
                        try {
                            try {
                                try {
                                    try {
                                        switch (this.zzv) {
                                            case 0:
                                                zzam zzamVar = (zzam) obj;
                                                zzai zzaiVar = zzamVar.zzb;
                                                long jZzm = zzaiVar.zzc().zzm();
                                                if (zzaiVar.zzc().zzm() != 0) {
                                                    zzamVar.zzd.zza(jZzm);
                                                }
                                                return Optional.empty();
                                            case 1:
                                                try {
                                                    zzai zzaiVar2 = ((zzam) obj).zzb;
                                                    long jZzm2 = zzaiVar2.zzc().zzm();
                                                    zzar zzarVarZzc = zzaiVar2.zzc();
                                                    zzar zzarVarZzc2 = zzaiVar2.zzc();
                                                    List listZzo = zzarVarZzc2.zzo();
                                                    if (jZzm2 < 0) {
                                                        jZzm2 += (long) (listZzo.size() + 1);
                                                    }
                                                    if (jZzm2 < 0 || jZzm2 >= listZzo.size() + 1) {
                                                        throw new zzap();
                                                    }
                                                    listZzo.add((int) jZzm2, zzarVarZzc);
                                                    zzaiVar2.zzb(zzarVarZzc2);
                                                    return Optional.empty();
                                                } catch (zzap unused) {
                                                    zzcVar = zzc.zzI;
                                                }
                                                break;
                                            case 2:
                                                zzam zzamVar2 = (zzam) obj;
                                                zzai zzaiVar3 = zzamVar2.zzb;
                                                long jZzm3 = zzaiVar3.zzc().zzm();
                                                if (zzaiVar3.zzc().zzm() == 0) {
                                                    zzamVar2.zzd.zza(jZzm3);
                                                }
                                                return Optional.empty();
                                            case 3:
                                                ((zzam) obj).zzb.zzb(zzar.zzb(r14.zzc().zzo().size()));
                                                return Optional.empty();
                                            case 4:
                                                ((zzam) obj).zzb.zzb(zzar.zzb(r14.zzc().zzn().zza.length));
                                                return Optional.empty();
                                            case 5:
                                                zzai zzaiVar4 = ((zzam) obj).zzb;
                                                zzaiVar4.zzb(zzar.zzc(Math.log(zzaiVar4.zzc().zzq())));
                                                return Optional.empty();
                                            case 6:
                                                zzai zzaiVar5 = ((zzam) obj).zzb;
                                                long jZzm4 = zzaiVar5.zzc().zzm();
                                                long jZzm5 = zzaiVar5.zzc().zzm();
                                                if (jZzm4 == 0 || jZzm5 == 0) {
                                                    j = 0;
                                                }
                                                zzaiVar5.zzb(zzar.zzb(j));
                                                return Optional.empty();
                                            case 7:
                                                zzai zzaiVar6 = ((zzam) obj).zzb;
                                                if (zzaiVar6.zzc().zzm() != 0) {
                                                    j = 0;
                                                }
                                                zzaiVar6.zzb(zzar.zzb(j));
                                                return Optional.empty();
                                            case 8:
                                                zzai zzaiVar7 = ((zzam) obj).zzb;
                                                long jZzm6 = zzaiVar7.zzc().zzm();
                                                long jZzm7 = zzaiVar7.zzc().zzm();
                                                if (jZzm6 == 0 && jZzm7 == 0) {
                                                    j = 0;
                                                }
                                                zzaiVar7.zzb(zzar.zzb(j));
                                                return Optional.empty();
                                            case 9:
                                                zzam zzamVar3 = (zzam) obj;
                                                zzai zzaiVar8 = zzamVar3.zzb;
                                                try {
                                                    int iCompare = new zzan(false).compare(zzaiVar8.zzc(), zzaiVar8.zzc());
                                                    zzai zzaiVar9 = zzamVar3.zzb;
                                                    if (iCompare >= 0) {
                                                        j = 0;
                                                    }
                                                    zzaiVar9.zzb(zzar.zzb(j));
                                                    return Optional.empty();
                                                } catch (IllegalArgumentException unused2) {
                                                    return Optional.of(zzc.zzd);
                                                }
                                            case 10:
                                                int[] iArr = {13146790, 575946145, 1620790320, 1246507401, 1292535914, -1004059703, 819634850, 1194559277, 714481123};
                                                int i = iArr[0];
                                                int i2 = iArr[1];
                                                int i3 = iArr[2];
                                                int i4 = iArr[3];
                                                int i5 = iArr[4];
                                                int i6 = iArr[5];
                                                int i7 = iArr[6];
                                                int i8 = iArr[7];
                                                int i9 = i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6);
                                                int i10 = i8 % 714481123;
                                                zzam zzamVar4 = (zzam) obj;
                                                try {
                                                    zzai zzaiVar10 = zzamVar4.zzb;
                                                    long jZzm8 = zzaiVar10.zzc().zzm();
                                                    zzh zzhVar = zzamVar4.zza;
                                                    zzai zzaiVar11 = new zzai(i10 ^ i9);
                                                    for (int i11 = 0; i11 < zzaiVar10.zzb; i11++) {
                                                        try {
                                                            zzaiVar11.zzb(zzar.zzj((zzar) zzaiVar10.zza.get(i11)));
                                                        } catch (zzah e) {
                                                            throw new AssertionError(zzt.zza("CEiv6BFfPnitUE+D"), e);
                                                        }
                                                    }
                                                    zzaa zzaaVar = zzamVar4.zzd;
                                                    new zzam(zzhVar, zzaiVar11, new zzaa(zzaaVar.zzb, zzaaVar.zza, zzaaVar.zzc.zzc(), zzaaVar.zzd)).zzd.zza(jZzm8);
                                                    zzaiVar10.zzb(zzar.zza(new zzr()));
                                                    return Optional.empty();
                                                } catch (zzy | zzz unused3) {
                                                    zzcVar = zzc.zzt;
                                                }
                                                break;
                                            case 11:
                                                try {
                                                    zzai zzaiVar12 = ((zzam) obj).zzb;
                                                    zzaiVar12.zzb(zzar.zza(zzaiVar12.zzc().zzi((Class) zzaiVar12.zzc().zzl())));
                                                    return Optional.empty();
                                                } catch (zzao unused4) {
                                                    zzcVar = zzc.zzp;
                                                }
                                                break;
                                            case 12:
                                                zzai zzaiVar13 = ((zzam) obj).zzb;
                                                long jZzm9 = zzaiVar13.zzc().zzm();
                                                long jZzm10 = zzaiVar13.zzc().zzm();
                                                if (jZzm9 == 0) {
                                                    return Optional.of(zzc.zzF);
                                                }
                                                zzaiVar13.zzb(zzar.zzb(jZzm10 % jZzm9));
                                                return Optional.empty();
                                            case 13:
                                                zzai zzaiVar14 = ((zzam) obj).zzb;
                                                zzaiVar14.zzb(zzar.zzc(zzaiVar14.zzc().zzq() * zzaiVar14.zzc().zzq()));
                                                return Optional.empty();
                                            case 14:
                                                zzai zzaiVar15 = ((zzam) obj).zzb;
                                                zzaiVar15.zzb(zzar.zzb(zzaiVar15.zzc().zzm() * zzaiVar15.zzc().zzm()));
                                                return Optional.empty();
                                            case 15:
                                                zzai zzaiVar16 = ((zzam) obj).zzb;
                                                long jZzm11 = zzaiVar16.zzc().zzm();
                                                ArrayList arrayList = new ArrayList();
                                                for (long j2 = 0; j2 < jZzm11; j2++) {
                                                    arrayList.add(zzaiVar16.zzc());
                                                }
                                                Collections.reverse(arrayList);
                                                zzaiVar16.zzb(zzar.zze(arrayList));
                                                return Optional.empty();
                                            case 16:
                                                zzai zzaiVar17 = ((zzam) obj).zzb;
                                                zzaiVar17.zzb(zzar.zzc(Math.pow(zzaiVar17.zzc().zzq(), zzaiVar17.zzc().zzq())));
                                                return Optional.empty();
                                            case 17:
                                                ((zzam) obj).zzb.zzb(zzar.zza(null));
                                                return Optional.empty();
                                            case 18:
                                                zzam zzamVar5 = (zzam) obj;
                                                ByteBuffer byteBufferWrap = ByteBuffer.wrap(zzamVar5.zzd.zzf((((((~2093882409L) & 1745263598) | 1919681973) + ((2093882409 & 201570906) | 608510005)) - 2293625313L) ^ (2017117507 % 549387536)).zza());
                                                byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
                                                zzamVar5.zzb.zzb(zzar.zzc(Double.longBitsToDouble(byteBufferWrap.getLong())));
                                                return Optional.empty();
                                            case 19:
                                                zzam zzamVar6 = (zzam) obj;
                                                zzamVar6.zzb.zzb(zzar.zzb(zzamVar6.zzd.zze()));
                                                return Optional.empty();
                                            default:
                                                long j3 = ((((~1638823523L) & 1470327826) | 268480728) + ((1638823523 & 1872973067) | 672433085)) - 448653836;
                                                long j4 = 1829878520 % 1376539012;
                                                long j5 = ((((~257620370L) & 608506385) | 363629956) + ((257620370 & 943920785) | 1530817674)) - 1774142815;
                                                long j6 = 1500173960 % 838733761;
                                                zzam zzamVar7 = (zzam) obj;
                                                zzaa zzaaVar2 = zzamVar7.zzd;
                                                long jZze = zzaaVar2.zze();
                                                if (jZze >= 0 && jZze <= (j3 ^ j4)) {
                                                    if (((j5 ^ j6) & jZze) != 0) {
                                                        return Optional.of(zzc.zze);
                                                    }
                                                    zzamVar7.zzb.zzb(zzar.zzd(zzaaVar2.zzf(jZze)));
                                                    return Optional.empty();
                                                }
                                                return Optional.of(zzc.zzz);
                                        }
                                    } catch (zzx unused5) {
                                        zzcVar = zzc.zzD;
                                    }
                                } catch (zzy | zzz unused6) {
                                    zzcVar = zzc.zzi;
                                }
                            } catch (zzag unused7) {
                                zzcVar = zzc.zzx;
                            }
                        } catch (zzy e2) {
                            e = e2;
                            throw new AssertionError(zzt.zza("CEiv6BFfPnitUE+D"), e);
                        }
                    } catch (zzah e3) {
                        e = e3;
                        throw new AssertionError(zzt.zza("CEiv6BFfPnitUE+D"), e);
                    }
                } catch (zzah unused8) {
                    zzcVar = zzc.zza;
                }
            } catch (zzao unused9) {
                zzcVar = zzc.zzy;
            }
        } catch (zzz unused10) {
            zzcVar = zzc.zzz;
        }
        return Optional.of(zzcVar);
    }
}
