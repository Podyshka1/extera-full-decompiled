package com.google.android.gms.internal.cast;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhx {
    Object[] zza;
    int zzb = 0;
    zzhw zzc;

    private final void zzb(int i) {
        Object[] objArr = this.zza;
        int length = objArr.length;
        int i2 = i + i;
        if (i2 > length) {
            this.zza = Arrays.copyOf(objArr, zzhq.zza(length, i2));
        }
    }

    public final zzhx zza(Iterable iterable) {
        if (iterable instanceof Collection) {
            zzb(this.zzb + ((Collection) iterable).size());
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            Object value = entry.getValue();
            zzb(this.zzb + 1);
            zzhm.zza(key, value);
            Object[] objArr = this.zza;
            int i = this.zzb;
            int i2 = i + i;
            objArr[i2] = key;
            objArr[i2 + 1] = value;
            this.zzb = i + 1;
        }
        return this;
    }

    public zzhx(int i) {
        this.zza = new Object[i + i];
    }
}
