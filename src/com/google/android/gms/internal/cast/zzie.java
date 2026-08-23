package com.google.android.gms.internal.cast;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzie extends zzhz {
    private final transient zzhy zza;
    private final transient Object[] zzb;
    private final transient int zzc;

    public zzie(zzhy zzhyVar, Object[] objArr, int i, int i2) {
        this.zza = zzhyVar;
        this.zzb = objArr;
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.cast.zzhr, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.zza.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return zze().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public final int zzg(Object[] objArr, int i) {
        return zze().zzg(objArr, 0);
    }

    @Override // com.google.android.gms.internal.cast.zzhz
    public final zzhv zzl() {
        return new zzid(this);
    }

    public final /* synthetic */ Object[] zzm() {
        return this.zzb;
    }

    public final /* synthetic */ int zzn() {
        return this.zzc;
    }
}
