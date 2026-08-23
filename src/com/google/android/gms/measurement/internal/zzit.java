package com.google.android.gms.measurement.internal;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzhv;
import com.google.android.gms.internal.measurement.zzrb;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzit implements Callable {
    final /* synthetic */ zzbg zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzjd zzc;

    zzit(zzjd zzjdVar, zzbg zzbgVar, String str) {
        this.zza = zzbgVar;
        this.zzb = str;
        Objects.requireNonNull(zzjdVar);
        this.zzc = zzjdVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Throwable {
        zzlp zzlpVar;
        zzh zzhVarZzu;
        byte[] bArr;
        zzpg zzpgVar;
        zzpn zzpnVar;
        zzpg zzpgVar2;
        zzh zzhVar;
        zzic zzicVar;
        com.google.android.gms.internal.measurement.zzic zzicVar2;
        Bundle bundle;
        String str;
        boolean z;
        Object obj;
        com.google.android.gms.internal.measurement.zzhz zzhzVar;
        zzbc zzbcVarZza;
        long j;
        byte[] bArr2;
        zzjd zzjdVar = this.zzc;
        zzjdVar.zzL().zzZ();
        zzlp zzlpVarZzn = zzjdVar.zzL().zzn();
        zzlpVarZzn.zzg();
        zzic zzicVar3 = zzlpVarZzn.zzu;
        zzic.zzL();
        zzbg zzbgVar = this.zza;
        Preconditions.checkNotNull(zzbgVar);
        String str2 = this.zzb;
        Preconditions.checkNotEmpty(str2);
        String str3 = zzbgVar.zza;
        if (!"_iap".equals(str3) && !"_iapx".equals(str3)) {
            zzlpVarZzn.zzu.zzaV().zzj().zzc("Generating a payload for this event is not available. package_name, event_name", str2, str3);
            return null;
        }
        zzpg zzpgVar3 = zzlpVarZzn.zzg;
        com.google.android.gms.internal.measurement.zzhz zzhzVarZzh = com.google.android.gms.internal.measurement.zzib.zzh();
        zzpgVar3.zzj().zzb();
        try {
            zzhVarZzu = zzpgVar3.zzj().zzu(str2);
        } catch (Throwable th) {
            th = th;
            zzlpVar = zzlpVarZzn;
        }
        if (zzhVarZzu != null) {
            if (zzhVarZzu.zzD()) {
                com.google.android.gms.internal.measurement.zzic zzicVarZzaE = com.google.android.gms.internal.measurement.zzid.zzaE();
                zzicVarZzaE.zza(1);
                zzicVarZzaE.zzC("android");
                if (!TextUtils.isEmpty(zzhVarZzu.zzc())) {
                    zzicVarZzaE.zzL(zzhVarZzu.zzc());
                }
                if (!TextUtils.isEmpty(zzhVarZzu.zzv())) {
                    zzicVarZzaE.zzJ((String) Preconditions.checkNotNull(zzhVarZzu.zzv()));
                }
                if (!TextUtils.isEmpty(zzhVarZzu.zzr())) {
                    zzicVarZzaE.zzM((String) Preconditions.checkNotNull(zzhVarZzu.zzr()));
                }
                if (zzhVarZzu.zzt() != -2147483648L) {
                    zzicVarZzaE.zzaj((int) zzhVarZzu.zzt());
                }
                zzicVarZzaE.zzN(zzhVarZzu.zzx());
                zzicVarZzaE.zzar(zzhVarZzu.zzB());
                String strZzf = zzhVarZzu.zzf();
                if (!TextUtils.isEmpty(strZzf)) {
                    zzicVarZzaE.zzad(strZzf);
                }
                zzicVarZzaE.zzay(zzhVarZzu.zzak());
                zzjl zzjlVarZzB = zzlpVarZzn.zzg.zzB(str2);
                zzicVarZzaE.zzY(zzhVarZzu.zzz());
                if (zzicVar3.zzB() && zzlpVarZzn.zzu.zzc().zzC(zzicVarZzaE.zzK()) && zzjlVarZzB.zzo(zzjk.AD_STORAGE) && !TextUtils.isEmpty(null)) {
                    zzicVarZzaE.zzam(null);
                }
                zzicVarZzaE.zzat(zzjlVarZzB.zzk());
                if (zzjlVarZzB.zzo(zzjk.AD_STORAGE) && zzhVarZzu.zzac()) {
                    Pair pairZzc = zzpgVar3.zzq().zzc(zzhVarZzu.zzc(), zzjlVarZzB);
                    if (zzhVarZzu.zzac() && !TextUtils.isEmpty((CharSequence) pairZzc.first)) {
                        try {
                            zzicVarZzaE.zzQ(zzlp.zzc((String) pairZzc.first, Long.toString(zzbgVar.zzd)));
                            Object obj2 = pairZzc.second;
                            if (obj2 != null) {
                                zzicVarZzaE.zzT(((Boolean) obj2).booleanValue());
                            }
                        } catch (SecurityException e) {
                            zzlpVarZzn.zzu.zzaV().zzj().zzb("Resettable device id encryption failed", e.getMessage());
                            bArr = new byte[0];
                            zzpgVar = zzlpVarZzn.zzg;
                            zzpgVar.zzj().zzd();
                            return bArr;
                        }
                    }
                }
                zzic zzicVar4 = zzlpVarZzn.zzu;
                zzicVar4.zzu().zzw();
                zzicVarZzaE.zzF(Build.MODEL);
                zzicVar4.zzu().zzw();
                zzicVarZzaE.zzE(Build.VERSION.RELEASE);
                zzicVarZzaE.zzI((int) zzicVar4.zzu().zzb());
                zzicVarZzaE.zzH(zzicVar4.zzu().zzc());
                try {
                    if (zzjlVarZzB.zzo(zzjk.ANALYTICS_STORAGE) && zzhVarZzu.zzd() != null) {
                        zzicVarZzaE.zzW(zzlp.zzc((String) Preconditions.checkNotNull(zzhVarZzu.zzd()), Long.toString(zzbgVar.zzd)));
                    }
                    if (!TextUtils.isEmpty(zzhVarZzu.zzl())) {
                        zzicVarZzaE.zzah((String) Preconditions.checkNotNull(zzhVarZzu.zzl()));
                    }
                    String strZzc = zzhVarZzu.zzc();
                    zzpg zzpgVar4 = zzlpVarZzn.zzg;
                    List listZzn = zzpgVar4.zzj().zzn(strZzc);
                    Iterator it = listZzn.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            zzpnVar = null;
                            break;
                        }
                        zzpnVar = (zzpn) it.next();
                        if ("_lte".equals(zzpnVar.zzc)) {
                            break;
                        }
                    }
                    if (zzpnVar == null || zzpnVar.zze == null) {
                        zzpn zzpnVar2 = new zzpn(strZzc, "auto", "_lte", zzlpVarZzn.zzu.zzaZ().currentTimeMillis(), 0L);
                        listZzn.add(zzpnVar2);
                        zzpgVar4.zzj().zzl(zzpnVar2);
                    }
                    com.google.android.gms.internal.measurement.zziu[] zziuVarArr = new com.google.android.gms.internal.measurement.zziu[listZzn.size()];
                    for (int i = 0; i < listZzn.size(); i++) {
                        com.google.android.gms.internal.measurement.zzit zzitVarZzm = com.google.android.gms.internal.measurement.zziu.zzm();
                        zzitVarZzm.zzb(((zzpn) listZzn.get(i)).zzc);
                        zzitVarZzm.zza(((zzpn) listZzn.get(i)).zzd);
                        zzpgVar4.zzp().zzc(zzitVarZzm, ((zzpn) listZzn.get(i)).zze);
                        zziuVarArr[i] = (com.google.android.gms.internal.measurement.zziu) zzitVarZzm.zzbc();
                    }
                    zzicVarZzaE.zzq(Arrays.asList(zziuVarArr));
                    zzpg zzpgVar5 = zzlpVarZzn.zzg;
                    zzpgVar5.zzI(zzhVarZzu, zzicVarZzaE);
                    zzpgVar5.zzJ(zzhVarZzu, zzicVarZzaE);
                    zzgv zzgvVarZza = zzgv.zza(zzbgVar);
                    zzic zzicVar5 = zzlpVarZzn.zzu;
                    zzpp zzppVarZzk = zzicVar5.zzk();
                    Bundle bundle2 = zzgvVarZza.zzd;
                    zzppVarZzk.zzI(bundle2, zzpgVar4.zzj().zzU(str2));
                    zzicVar5.zzk().zzG(zzgvVarZza, zzicVar5.zzc().zzd(str2));
                    bundle2.putLong("_c", 1L);
                    zzicVar5.zzaV().zzj().zza("Marking in-app purchase as real-time");
                    bundle2.putLong("_r", 1L);
                    String str4 = zzbgVar.zzc;
                    bundle2.putString("_o", str4);
                    if (zzicVar5.zzk().zzaa(zzicVarZzaE.zzK(), zzhVarZzu.zzay())) {
                        zzicVar5.zzk().zzM(bundle2, "_dbg", 1L);
                        zzicVar5.zzk().zzM(bundle2, "_r", 1L);
                    }
                    zzav zzavVarZzj = zzpgVar4.zzj();
                    String str5 = zzbgVar.zza;
                    zzbc zzbcVarZzf = zzavVarZzj.zzf(str2, str5);
                    if (zzbcVarZzf == null) {
                        zzhVar = zzhVarZzu;
                        zzicVar = zzicVar5;
                        zzicVar2 = zzicVarZzaE;
                        zzpgVar2 = zzpgVar5;
                        obj = null;
                        bundle = bundle2;
                        str = str4;
                        zzbcVarZza = new zzbc(str2, str5, 0L, 0L, 0L, zzbgVar.zzd, 0L, null, null, null, null);
                        z = true;
                        j = 0;
                        zzhzVar = zzhzVarZzh;
                    } else {
                        zzpgVar2 = zzpgVar5;
                        zzhVar = zzhVarZzu;
                        zzicVar = zzicVar5;
                        zzicVar2 = zzicVarZzaE;
                        bundle = bundle2;
                        str = str4;
                        z = true;
                        obj = null;
                        zzhzVar = zzhzVarZzh;
                        long j2 = zzbcVarZzf.zzf;
                        zzbcVarZza = zzbcVarZzf.zza(zzbgVar.zzd);
                        j = j2;
                    }
                    zzbc zzbcVar = zzbcVarZza;
                    zzpgVar4.zzj().zzh(zzbcVar);
                    zzic zzicVar6 = zzlpVarZzn.zzu;
                    long j3 = zzbgVar.zzd;
                    boolean z2 = z;
                    zzh zzhVar2 = zzhVar;
                    com.google.android.gms.internal.measurement.zzic zzicVar7 = zzicVar2;
                    zzpg zzpgVar6 = zzpgVar2;
                    try {
                        zzbb zzbbVar = new zzbb(zzicVar6, str, str2, str5, j3, j, bundle);
                        com.google.android.gms.internal.measurement.zzhr zzhrVarZzk = com.google.android.gms.internal.measurement.zzhs.zzk();
                        zzhrVarZzk.zzo(zzbbVar.zzd);
                        zzhrVarZzk.zzl(zzbbVar.zzb);
                        zzhrVarZzk.zzq(zzbbVar.zze);
                        zzbe zzbeVar = zzbbVar.zzf;
                        zzbd zzbdVar = new zzbd(zzbeVar);
                        while (zzbdVar.hasNext()) {
                            String next = zzbdVar.next();
                            zzhv zzhvVarZzn = com.google.android.gms.internal.measurement.zzhw.zzn();
                            zzhvVarZzn.zzb(next);
                            Object objZza = zzbeVar.zza(next);
                            if (objZza != null) {
                                zzpgVar4.zzp().zzd(zzhvVarZzn, objZza);
                                zzhrVarZzk.zzg(zzhvVarZzn);
                            }
                        }
                        zzicVar7.zzg(zzhrVarZzk);
                        com.google.android.gms.internal.measurement.zzie zzieVarZza = com.google.android.gms.internal.measurement.zzig.zza();
                        com.google.android.gms.internal.measurement.zzht zzhtVarZza = com.google.android.gms.internal.measurement.zzhu.zza();
                        zzhtVarZza.zzb(zzbcVar.zzc);
                        zzhtVarZza.zza(str5);
                        zzieVarZza.zza(zzhtVarZza);
                        zzicVar7.zzap(zzieVarZza);
                        zzicVar7.zzaf(zzpgVar4.zzm().zzb(zzhVar2.zzc(), Collections.EMPTY_LIST, zzicVar7.zzk(), Long.valueOf(zzhrVarZzk.zzn()), Long.valueOf(zzhrVarZzk.zzn()), false));
                        if (zzhrVarZzk.zzm()) {
                            zzicVar7.zzv(zzhrVarZzk.zzn());
                            zzicVar7.zzx(zzhrVarZzk.zzn());
                        }
                        long jZzp = zzhVar2.zzp();
                        if (jZzp != 0) {
                            zzicVar7.zzA(jZzp);
                        }
                        long jZzn = zzhVar2.zzn();
                        if (jZzn != 0) {
                            zzicVar7.zzy(jZzn);
                        } else if (jZzp != 0) {
                            zzicVar7.zzy(jZzp);
                        }
                        String strZzh = zzhVar2.zzh();
                        zzrb.zza();
                        if (zzicVar.zzc().zzp(str2, zzfy.zzaM) && strZzh != null) {
                            zzicVar7.zzau(strZzh);
                        }
                        zzhVar2.zzL();
                        zzicVar7.zzZ((int) zzhVar2.zzG());
                        zzicVar.zzc().zzi();
                        zzicVar7.zzO(133005L);
                        zzicVar7.zzs(zzicVar.zzaZ().currentTimeMillis());
                        zzicVar7.zzae(z2);
                        zzpgVar6.zzS(zzicVar7.zzK(), zzicVar7);
                        zzhzVar.zze(zzicVar7);
                        zzhVar2.zzo(zzicVar7.zzu());
                        zzhVar2.zzq(zzicVar7.zzw());
                        zzpgVar4.zzj().zzv(zzhVar2, false, false);
                        zzpgVar4.zzj().zzc();
                        zzpgVar4.zzj().zzd();
                        try {
                            return zzpgVar4.zzp().zzv(((com.google.android.gms.internal.measurement.zzib) zzhzVar.zzbc()).zzcc());
                        } catch (IOException e2) {
                            zzlpVarZzn.zzu.zzaV().zzb().zzc("Data loss. Failed to bundle and serialize. appId", zzgu.zzl(str2), e2);
                            return obj;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        zzlpVar = zzlpVarZzn;
                    }
                } catch (SecurityException e3) {
                    zzlpVar = zzlpVarZzn;
                    try {
                        zzlpVar.zzu.zzaV().zzj().zzb("app instance id encryption failed", e3.getMessage());
                        bArr = new byte[0];
                        zzpgVar = zzlpVar.zzg;
                        zzpgVar.zzj().zzd();
                        return bArr;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
            } else {
                zzlpVarZzn.zzu.zzaV().zzj().zzb("Log and bundle disabled. package_name", str2);
                bArr2 = new byte[0];
            }
            zzlpVar.zzg.zzj().zzd();
            throw th;
        }
        zzlpVarZzn.zzu.zzaV().zzj().zzb("Log and bundle not available. package_name", str2);
        bArr2 = new byte[0];
        zzpgVar3.zzj().zzd();
        return bArr2;
    }
}
