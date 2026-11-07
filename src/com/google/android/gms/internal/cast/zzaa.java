package com.google.android.gms.internal.cast;

import android.text.TextUtils;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.util.DefaultClock;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
final class zzaa {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final Logger zzd = new Logger("SessionFlowSummary");
    private static final String zzf = "22.3.1";
    private static long zzg = System.currentTimeMillis();
    CastSession zza;
    private final zzj zzl;
    private final String zzm;
    private final long zzo;
    private String zzp;
    private String zzq;
    private zzt zzr;
    private String zzs;
    private String zzt;
    private String zzu;
    private String zzv;
    private String zzw;
    private String zzx;
    private int zzy;
    private final zzhg zze = zzhj.zza(zzz.zza);
    private final List zzh = Collections.synchronizedList(new ArrayList());
    private final List zzi = Collections.synchronizedList(new ArrayList());
    private final List zzj = Collections.synchronizedList(new ArrayList());
    private final Map zzk = Collections.synchronizedMap(new HashMap());
    public int zzb = 0;
    private final long zzn = DefaultClock.getInstance().currentTimeMillis();

    private zzaa(zzj zzjVar, String str) {
        this.zzl = zzjVar;
        this.zzm = str;
        long j = zzg;
        zzg = 1 + j;
        this.zzo = j;
    }

    public static zzaa zza(zzj zzjVar, String str) {
        return new zzaa(zzjVar, str);
    }

    public final void zzb(zzcs zzcsVar) {
        zzcsVar.zza(this.zzn);
        this.zzh.add(zzcsVar);
    }

    public final void zzc(zzac zzacVar) {
        zzacVar.zza(this.zzn);
        this.zzi.add(zzacVar);
    }

    public final void zzd(zzcq zzcqVar) {
        zzcqVar.zza(this.zzn);
        this.zzj.add(zzcqVar);
    }

    public final void zze(zzt zztVar) {
        zzt zztVar2 = this.zzr;
        if (zztVar2 == null || !zztVar2.zza()) {
            zztVar.zzb(this.zzn);
            this.zzr = zztVar;
        }
    }

    public final void zzf() {
        this.zzy++;
    }

    public final void zzg(String str) {
        String str2 = this.zzp;
        if (str2 == null) {
            this.zzp = str;
        } else {
            if (TextUtils.equals(str, str2)) {
                return;
            }
            zzj(4);
        }
    }

    public final void zzh(CastSession castSession) {
        if (castSession == null) {
            zzj(2);
            return;
        }
        CastDevice castDevice = castSession.getCastDevice();
        if (castDevice == null) {
            zzj(3);
            return;
        }
        this.zza = castSession;
        String str = this.zzq;
        if (str != null) {
            if (TextUtils.equals(str, castDevice.zza())) {
                return;
            }
            zzj(5);
            return;
        }
        this.zzq = castDevice.zza();
        this.zzs = castDevice.getModelName();
        this.zzb = castDevice.zzd();
        com.google.android.gms.cast.internal.zzaa zzaaVarZzb = castDevice.zzb();
        if (zzaaVarZzb != null) {
            this.zzt = zzaaVarZzb.zza();
            this.zzu = zzaaVarZzb.zzb();
            this.zzv = zzaaVarZzb.zzc();
            this.zzw = zzaaVarZzb.zzd();
            this.zzx = zzaaVarZzb.zze();
        }
        castSession.zzm();
    }

    public final void zzi() {
        long jLongValue;
        CastSession castSession = this.zza;
        if (castSession != null) {
            castSession.zzb(null);
            this.zza = null;
        }
        long j = this.zzo;
        zzqq zzqqVarZzc = zzqr.zzc();
        zzqqVarZzc.zza(j);
        String str = this.zzq;
        if (str != null) {
            zzqqVarZzc.zzf(str);
        }
        zzur zzurVarZza = zzus.zza();
        if (!TextUtils.isEmpty(this.zzs)) {
            zzqqVarZzc.zzb(this.zzs);
            zzurVarZza.zza(this.zzs);
        }
        if (!TextUtils.isEmpty(this.zzt)) {
            zzurVarZza.zzb(this.zzt);
        }
        if (!TextUtils.isEmpty(this.zzu)) {
            zzurVarZza.zzc(this.zzu);
        }
        if (!TextUtils.isEmpty(this.zzv)) {
            zzurVarZza.zzd(this.zzv);
        }
        if (!TextUtils.isEmpty(this.zzw)) {
            zzurVarZza.zze(this.zzw);
        }
        if (!TextUtils.isEmpty(this.zzx)) {
            zzurVarZza.zzf(this.zzx);
        }
        zzurVarZza.zzg(zzco.zza(this.zzb));
        zzqqVarZzc.zzn((zzus) zzurVarZza.zzu());
        zzqb zzqbVarZza = zzqc.zza();
        zzqbVarZza.zzb(zzf);
        zzqbVarZza.zza(this.zzm);
        zzqqVarZzc.zzl((zzqc) zzqbVarZza.zzu());
        zzhg zzhgVar = this.zze;
        zzqy zzqyVarZza = zzqz.zza();
        String str2 = (String) zzhgVar.zza();
        if (str2 != null) {
            zzro zzroVarZza = zzrp.zza();
            zzroVarZza.zza(str2);
            zzqyVarZza.zza((zzrp) zzroVarZza.zzu());
        }
        String str3 = this.zzp;
        if (str3 != null) {
            try {
                String strReplace = str3.replace("-", _UrlKt.FRAGMENT_ENCODE_SET);
                jLongValue = new BigInteger(strReplace.substring(0, Math.min(16, strReplace.length())), 16).longValue();
            } catch (NumberFormatException e) {
                zzd.m295w(e, "receiverSessionId %s is not valid for hash", str3);
                jLongValue = 0;
            }
            zzqyVarZza.zzb(jLongValue);
        }
        List list = this.zzh;
        if (!list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((zzcs) it.next()).zzb());
            }
            zzqyVarZza.zzc(arrayList);
        }
        List list2 = this.zzi;
        if (!list2.isEmpty()) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((zzac) it2.next()).zzb());
            }
            zzqyVarZza.zze(arrayList2);
        }
        List list3 = this.zzj;
        if (!list3.isEmpty()) {
            ArrayList arrayList3 = new ArrayList();
            Iterator it3 = list3.iterator();
            while (it3.hasNext()) {
                arrayList3.add(((zzcq) it3.next()).zzb());
            }
            zzqyVarZza.zzd(arrayList3);
        }
        if (this.zzr != null) {
            ArrayList arrayList4 = new ArrayList();
            arrayList4.add(this.zzr.zzc());
            zzqyVarZza.zzg(arrayList4);
        }
        Map map = this.zzk;
        if (!map.isEmpty()) {
            ArrayList arrayList5 = new ArrayList();
            Iterator it4 = map.values().iterator();
            while (it4.hasNext()) {
                arrayList5.add(((zzae) it4.next()).zza());
            }
            zzqyVarZza.zzf(arrayList5);
        }
        zzqyVarZza.zzh(this.zzy);
        zzqqVarZzc.zzk((zzqz) zzqyVarZza.zzu());
        this.zzl.zzd((zzqr) zzqqVarZzc.zzu(), 233);
    }

    public final void zzj(int i) {
        Map map = this.zzk;
        Integer numValueOf = Integer.valueOf(i - 1);
        zzae zzaeVar = (zzae) map.get(numValueOf);
        if (zzaeVar != null) {
            zzaeVar.zzc();
            return;
        }
        zzae zzaeVar2 = new zzae(new zzad(i));
        zzaeVar2.zzb(this.zzn);
        map.put(numValueOf, zzaeVar2);
    }
}
