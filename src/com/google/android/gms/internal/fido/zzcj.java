package com.google.android.gms.internal.fido;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;
import javax.annotation.CheckForNull;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcj extends zzcd implements NavigableMap {
    private static final Comparator zzb;
    private static final zzcj zzc;
    private final transient zzcv zzd;
    private final transient zzcc zze;

    @CheckForNull
    private final transient zzcj zzf;

    static {
        zzcq zzcqVar = zzcq.zza;
        zzb = zzcqVar;
        zzcv zzcvVarZzs = zzck.zzs(zzcqVar);
        int i = zzcc.$r8$clinit;
        zzc = new zzcj(zzcvVarZzs, zzct.zza, null);
    }

    public zzcj(zzcv zzcvVar, zzcc zzccVar, @CheckForNull zzcj zzcjVar) {
        this.zzd = zzcvVar;
        this.zze = zzccVar;
        this.zzf = zzcjVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzcj zzf(Map map) {
        final Comparator comparator = zzb;
        Comparator comparator2 = map.comparator();
        int i = 1;
        boolean zEquals = comparator2 == null ? true : comparator.equals(comparator2);
        Collection collectionEntrySet = map.entrySet();
        Map.Entry[] entryArr = zzcd.zza;
        if (collectionEntrySet == null) {
            Iterator it = collectionEntrySet.iterator();
            ArrayList arrayList = new ArrayList();
            it.getClass();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            collectionEntrySet = arrayList;
        }
        Map.Entry[] entryArr2 = (Map.Entry[]) collectionEntrySet.toArray(entryArr);
        int length = entryArr2.length;
        if (length == 0) {
            return zzg(comparator);
        }
        if (length == 1) {
            Map.Entry entry = entryArr2[0];
            Objects.requireNonNull(entry);
            Map.Entry entry2 = entry;
            return new zzcj(new zzcv(zzcc.zzj(entry2.getKey()), comparator), zzcc.zzj(entry2.getValue()), null);
        }
        Object[] objArr = new Object[length];
        Object[] objArr2 = new Object[length];
        if (zEquals) {
            for (int i2 = 0; i2 < length; i2++) {
                Map.Entry entry3 = entryArr2[i2];
                Objects.requireNonNull(entry3);
                Map.Entry entry4 = entry3;
                Object key = entry4.getKey();
                Object value = entry4.getValue();
                zzbv.zza(key, value);
                objArr[i2] = key;
                objArr2[i2] = value;
            }
        } else {
            Arrays.sort(entryArr2, 0, length, new Comparator() { // from class: com.google.android.gms.internal.fido.zzcg
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    Map.Entry entry5 = (Map.Entry) obj;
                    Map.Entry entry6 = (Map.Entry) obj2;
                    Objects.requireNonNull(entry5);
                    Objects.requireNonNull(entry6);
                    return comparator.compare(entry5.getKey(), entry6.getKey());
                }
            });
            Map.Entry entry5 = entryArr2[0];
            Objects.requireNonNull(entry5);
            Map.Entry entry6 = entry5;
            Object key2 = entry6.getKey();
            objArr[0] = key2;
            Object value2 = entry6.getValue();
            objArr2[0] = value2;
            zzbv.zza(objArr[0], value2);
            while (i < length) {
                Map.Entry entry7 = entryArr2[i - 1];
                Objects.requireNonNull(entry7);
                Map.Entry entry8 = entry7;
                Map.Entry entry9 = entryArr2[i];
                Objects.requireNonNull(entry9);
                Map.Entry entry10 = entry9;
                Object key3 = entry10.getKey();
                Object value3 = entry10.getValue();
                zzbv.zza(key3, value3);
                objArr[i] = key3;
                objArr2[i] = value3;
                if (comparator.compare(key2, key3) == 0) {
                    throw new IllegalArgumentException("Multiple entries with same key: " + String.valueOf(entry8) + " and " + String.valueOf(entry10));
                }
                i++;
                key2 = key3;
            }
        }
        return new zzcj(new zzcv(zzcc.zzh(objArr, length), comparator), zzcc.zzh(objArr2, length), null);
    }

    public static zzcj zzg(Comparator comparator) {
        if (zzcq.zza.equals(comparator)) {
            return zzc;
        }
        zzcv zzcvVarZzs = zzck.zzs(comparator);
        int i = zzcc.$r8$clinit;
        return new zzcj(zzcvVarZzs, zzct.zza, null);
    }

    private final zzcj zzl(int i, int i2) {
        if (i == 0) {
            if (i2 == this.zze.size()) {
                return this;
            }
            i = 0;
        }
        zzcv zzcvVar = this.zzd;
        if (i == i2) {
            return zzg(((zzck) zzcvVar).zza);
        }
        return new zzcj(zzcvVar.zzw(i, i2), this.zze.subList(i, i2), null);
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public final Map.Entry ceilingEntry(Object obj) {
        return tailMap(obj, true).firstEntry();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public final Object ceilingKey(Object obj) {
        return zzco.zza(ceilingEntry(obj));
    }

    @Override // java.util.SortedMap
    public final Comparator comparator() {
        return ((zzck) this.zzd).zza;
    }

    @Override // java.util.NavigableMap
    public final /* synthetic */ NavigableSet descendingKeySet() {
        return this.zzd.descendingSet();
    }

    @Override // java.util.NavigableMap
    public final /* bridge */ /* synthetic */ NavigableMap descendingMap() {
        zzcj zzcjVar = this.zzf;
        if (zzcjVar != null) {
            return zzcjVar;
        }
        boolean zIsEmpty = isEmpty();
        zzcv zzcvVar = this.zzd;
        if (!zIsEmpty) {
            return new zzcj((zzcv) zzcvVar.descendingSet(), this.zze.zzf(), this);
        }
        Comparator comparator = ((zzck) zzcvVar).zza;
        return zzg((comparator instanceof zzcs ? (zzcs) comparator : new zzbw(comparator)).zza());
    }

    @Override // java.util.Map, java.util.SortedMap
    public final /* bridge */ /* synthetic */ Set entrySet() {
        return zzc();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public final Map.Entry firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return (Map.Entry) zzc().zzi().get(0);
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return this.zzd.first();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public final Map.Entry floorEntry(Object obj) {
        return headMap(obj, true).lastEntry();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public final Object floorKey(Object obj) {
        return zzco.zza(floorEntry(obj));
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public final /* synthetic */ SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public final Map.Entry higherEntry(Object obj) {
        return tailMap(obj, false).firstEntry();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public final Object higherKey(Object obj) {
        return zzco.zza(higherEntry(obj));
    }

    @Override // java.util.Map, java.util.SortedMap
    public final /* synthetic */ Set keySet() {
        return this.zzd;
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public final Map.Entry lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return (Map.Entry) zzc().zzi().get(this.zze.size() - 1);
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return this.zzd.last();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public final Map.Entry lowerEntry(Object obj) {
        return headMap(obj, false).lastEntry();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public final Object lowerKey(Object obj) {
        return zzco.zza(lowerEntry(obj));
    }

    @Override // java.util.NavigableMap
    public final /* synthetic */ NavigableSet navigableKeySet() {
        return this.zzd;
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    @Deprecated
    public final Map.Entry pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    @Deprecated
    public final Map.Entry pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final int size() {
        return this.zze.size();
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public final /* bridge */ /* synthetic */ SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public final /* synthetic */ SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }

    @Override // java.util.Map, java.util.SortedMap
    public final /* synthetic */ Collection values() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.fido.zzcd
    public final zzby zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.fido.zzcd
    public final zzcf zzb() {
        return isEmpty() ? zzcu.zza : new zzci(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0005  */
    @Override // com.google.android.gms.internal.fido.zzcd, java.util.Map
    @CheckForNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object get(@CheckForNull Object obj) {
        int iBinarySearch;
        zzcv zzcvVar = this.zzd;
        if (obj == null) {
            iBinarySearch = -1;
        } else {
            try {
                iBinarySearch = Collections.binarySearch(zzcvVar.zzd, obj, ((zzck) zzcvVar).zza);
                if (iBinarySearch < 0) {
                }
            } catch (ClassCastException unused) {
            }
        }
        if (iBinarySearch == -1) {
            return null;
        }
        return this.zze.get(iBinarySearch);
    }

    @Override // java.util.NavigableMap
    /* JADX INFO: renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public final zzcj headMap(Object obj, boolean z) {
        obj.getClass();
        return zzl(0, this.zzd.zzu(obj, z));
    }

    @Override // java.util.NavigableMap
    /* JADX INFO: renamed from: zzj, reason: merged with bridge method [inline-methods] */
    public final zzcj tailMap(Object obj, boolean z) {
        obj.getClass();
        return zzl(this.zzd.zzv(obj, z), this.zze.size());
    }

    @Override // java.util.NavigableMap
    /* JADX INFO: renamed from: zzi, reason: merged with bridge method [inline-methods] */
    public final zzcj subMap(Object obj, boolean z, Object obj2, boolean z2) {
        obj.getClass();
        obj2.getClass();
        if (((zzck) this.zzd).zza.compare(obj, obj2) <= 0) {
            return headMap(obj2, z2).tailMap(obj, z);
        }
        f$$ExternalSyntheticBUOutline1.m178m(zzbo.zza("expected fromKey <= toKey but %s > %s", obj, obj2));
        return null;
    }
}
