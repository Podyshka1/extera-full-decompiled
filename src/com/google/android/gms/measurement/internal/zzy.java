package com.google.android.gms.measurement.internal;

import androidx.collection.ArrayMap;
import com.google.android.gms.internal.measurement.zzpu;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzy {
    final /* synthetic */ zzad zza;
    private String zzb;
    private boolean zzc;
    private com.google.android.gms.internal.measurement.zzii zzd;
    private BitSet zze;
    private BitSet zzf;
    private Map zzg;
    private Map zzh;

    /* synthetic */ zzy(zzad zzadVar, String str, com.google.android.gms.internal.measurement.zzii zziiVar, BitSet bitSet, BitSet bitSet2, Map map, Map map2, byte[] bArr) {
        Objects.requireNonNull(zzadVar);
        this.zza = zzadVar;
        this.zzb = str;
        this.zze = bitSet;
        this.zzf = bitSet2;
        this.zzg = map;
        this.zzh = new ArrayMap();
        for (Integer num : map2.keySet()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) map2.get(num));
            this.zzh.put(num, arrayList);
        }
        this.zzc = false;
        this.zzd = zziiVar;
    }

    final void zza(zzab zzabVar) {
        int iZza = zzabVar.zza();
        if (zzabVar.zzd != null) {
            this.zzf.set(iZza, true);
        }
        Boolean bool = zzabVar.zze;
        if (bool != null) {
            this.zze.set(iZza, bool.booleanValue());
        }
        if (zzabVar.zzf != null) {
            Map map = this.zzg;
            Integer numValueOf = Integer.valueOf(iZza);
            Long l = (Long) map.get(numValueOf);
            long jLongValue = zzabVar.zzf.longValue() / 1000;
            if (l == null || jLongValue > l.longValue()) {
                this.zzg.put(numValueOf, Long.valueOf(jLongValue));
            }
        }
        if (zzabVar.zzg != null) {
            Map map2 = this.zzh;
            Integer numValueOf2 = Integer.valueOf(iZza);
            List arrayList = (List) map2.get(numValueOf2);
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.zzh.put(numValueOf2, arrayList);
            }
            if (zzabVar.zzb()) {
                arrayList.clear();
            }
            zzpu.zza();
            zzic zzicVar = this.zza.zzu;
            zzal zzalVarZzc = zzicVar.zzc();
            String str = this.zzb;
            zzfx zzfxVar = zzfy.zzaF;
            if (zzalVarZzc.zzp(str, zzfxVar) && zzabVar.zzc()) {
                arrayList.clear();
            }
            zzpu.zza();
            if (!zzicVar.zzc().zzp(this.zzb, zzfxVar)) {
                arrayList.add(Long.valueOf(zzabVar.zzg.longValue() / 1000));
                return;
            }
            Long lValueOf = Long.valueOf(zzabVar.zzg.longValue() / 1000);
            if (arrayList.contains(lValueOf)) {
                return;
            }
            arrayList.add(lValueOf);
        }
    }

    final com.google.android.gms.internal.measurement.zzhg zzb(int i) {
        ArrayList arrayList;
        List list;
        com.google.android.gms.internal.measurement.zzhf zzhfVarZzh = com.google.android.gms.internal.measurement.zzhg.zzh();
        zzhfVarZzh.zza(i);
        zzhfVarZzh.zzd(this.zzc);
        com.google.android.gms.internal.measurement.zzii zziiVar = this.zzd;
        if (zziiVar != null) {
            zzhfVarZzh.zzc(zziiVar);
        }
        com.google.android.gms.internal.measurement.zzih zzihVarZzi = com.google.android.gms.internal.measurement.zzii.zzi();
        zzihVarZzi.zzc(zzpk.zzp(this.zze));
        zzihVarZzi.zza(zzpk.zzp(this.zzf));
        Map map = this.zzg;
        if (map == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList(map.size());
            for (Integer num : this.zzg.keySet()) {
                int iIntValue = num.intValue();
                Long l = (Long) this.zzg.get(num);
                if (l != null) {
                    com.google.android.gms.internal.measurement.zzhp zzhpVarZze = com.google.android.gms.internal.measurement.zzhq.zze();
                    zzhpVarZze.zza(iIntValue);
                    zzhpVarZze.zzb(l.longValue());
                    arrayList2.add((com.google.android.gms.internal.measurement.zzhq) zzhpVarZze.zzbc());
                }
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            zzihVarZzi.zze(arrayList);
        }
        Map map2 = this.zzh;
        if (map2 == null) {
            list = Collections.EMPTY_LIST;
        } else {
            ArrayList arrayList3 = new ArrayList(map2.size());
            for (Integer num2 : this.zzh.keySet()) {
                com.google.android.gms.internal.measurement.zzij zzijVarZzf = com.google.android.gms.internal.measurement.zzik.zzf();
                zzijVarZzf.zza(num2.intValue());
                List list2 = (List) this.zzh.get(num2);
                if (list2 != null) {
                    Collections.sort(list2);
                    zzijVarZzf.zzb(list2);
                }
                arrayList3.add((com.google.android.gms.internal.measurement.zzik) zzijVarZzf.zzbc());
            }
            list = arrayList3;
        }
        zzihVarZzi.zzg(list);
        zzhfVarZzh.zzb(zzihVarZzi);
        return (com.google.android.gms.internal.measurement.zzhg) zzhfVarZzh.zzbc();
    }

    final /* synthetic */ BitSet zzc() {
        return this.zze;
    }

    /* synthetic */ zzy(zzad zzadVar, String str, byte[] bArr) {
        Objects.requireNonNull(zzadVar);
        this.zza = zzadVar;
        this.zzb = str;
        this.zzc = true;
        this.zze = new BitSet();
        this.zzf = new BitSet();
        this.zzg = new ArrayMap();
        this.zzh = new ArrayMap();
    }
}
