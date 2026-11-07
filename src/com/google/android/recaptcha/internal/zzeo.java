package com.google.android.recaptcha.internal;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzeo extends zzcl {
    private final List zza;
    private zzaer zzb;
    private final Map zzc = new LinkedHashMap();

    public zzeo(List list) {
        this.zza = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzaku zzl(String str) {
        Map mapEmptyMap;
        List list = (List) this.zzc.remove(str);
        zzaer zzaerVar = this.zzb;
        if (zzaerVar == null) {
            zzaerVar = null;
        }
        zzhx zzhxVar = new zzhx(zzaerVar);
        if (list != null) {
            List<zzex> list2 = list;
            mapEmptyMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(list2, 10)), 16));
            for (zzex zzexVar : list2) {
                mapEmptyMap.put(Integer.valueOf(zzexVar.zzb()), zzexVar);
            }
        } else {
            mapEmptyMap = MapsKt.emptyMap();
        }
        zzalt zzaltVarZzm = zzm(mapEmptyMap, zzhxVar, str);
        zzakt zzaktVarZza = zzaku.zza();
        zzaktVarZza.zza(str);
        zzakl zzaklVarZza = zzakm.zza();
        zzaklVarZza.zza(zzaltVarZzm);
        zzaklVarZza.zzb(zzaer.zzs(zzhxVar.zza(), 0, 12));
        zzaktVarZza.zzc(zzaklVarZza);
        return (zzaku) zzaktVarZza.zzp();
    }

    private final zzalt zzm(Map map, zzhx zzhxVar, String str) {
        zzals zzalsVarZzd = zzalt.zzd();
        zzalsVarZzd.zza(str);
        List list = this.zza;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((zzev) obj).zzb()) {
                arrayList.add(obj);
            }
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj2 = arrayList.get(i);
            i++;
            zzev zzevVar = (zzev) obj2;
            if (!map.containsKey(Integer.valueOf(zzevVar.zza()))) {
                int iZza = zzevVar.zza();
                zzalw zzalwVarZza = zzalx.zza();
                zzalwVarZza.zza(iZza);
                zzalwVarZza.zzb(13);
                zzalwVarZza.zzc(27);
                zzalsVarZzd.zzb(zzn(zzhxVar, new zzep(iZza, (zzalx) zzalwVarZza.zzp())));
            }
        }
        Collection collectionValues = map.values();
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(collectionValues, 10));
        Iterator it = collectionValues.iterator();
        while (it.hasNext()) {
            arrayList2.add(zzn(zzhxVar, (zzex) it.next()));
        }
        zzalsVarZzd.zzc(arrayList2);
        return (zzalt) zzalsVarZzd.zzp();
    }

    private static final zzalr zzn(zzhx zzhxVar, zzex zzexVar) {
        zzalp zzalpVarZzi = zzalr.zzi();
        zzalpVarZzi.zzh(3);
        byte[] byteArray = BigInteger.valueOf(zzexVar.zzb()).toByteArray();
        zzaer zzaerVar = zzaer.zza;
        zzalpVarZzi.zzg(zzaer.zzs(byteArray, 0, byteArray.length));
        if (zzexVar instanceof zzeq) {
            byte[] bArrZzb = zzhxVar.zzb(((zzeq) zzexVar).zza().zzw(), zzexVar.zzb());
            zzalpVarZzi.zze(zzaer.zzs(bArrZzb, 0, bArrZzb.length));
        } else {
            if (!(zzexVar instanceof zzep)) {
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
                return null;
            }
            byte[] bArrZzb2 = zzhxVar.zzb(((zzep) zzexVar).zza().zzw(), zzexVar.zzb());
            zzalpVarZzi.zzf(zzaer.zzs(bArrZzb2, 0, bArrZzb2.length));
        }
        return (zzalr) zzalpVarZzi.zzp();
    }

    @Override // com.google.android.recaptcha.internal.zzcl
    public final Object zzb(zzakg zzakgVar, Continuation continuation) {
        return new zzmc(new zzen(zzakgVar, this, null));
    }

    @Override // com.google.android.recaptcha.internal.zzcl
    public final Object zzc(String str, zzaka zzakaVar, Continuation continuation) {
        return new zzmc(new zzel(this, str, zzakaVar, null));
    }

    @Override // com.google.android.recaptcha.internal.zzcl
    public final Object zzd(String str, Continuation continuation) {
        return zzl(str);
    }

    @Override // com.google.android.recaptcha.internal.zzcl
    public final int zzf() {
        return 34;
    }

    @Override // com.google.android.recaptcha.internal.zzcl
    public final int zzg() {
        return 35;
    }

    public final Map zzh() {
        return this.zzc;
    }
}
