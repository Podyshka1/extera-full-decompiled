package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmn {
    Object[] zza;
    int zzb;
    zzmm zzc;

    public zzmn() {
        this(4);
    }

    private final void zzd(int i) {
        Object[] objArr = this.zza;
        int length = objArr.length;
        int i2 = i + i;
        if (i2 > length) {
            this.zza = Arrays.copyOf(objArr, zzmf.zzc(length, i2));
        }
    }

    public final zzmn zza(Object obj, Object obj2) {
        zzd(this.zzb + 1);
        zzlu.zza(obj, obj2);
        Object[] objArr = this.zza;
        int i = this.zzb;
        int i2 = i + i;
        objArr[i2] = obj;
        objArr[i2 + 1] = obj2;
        this.zzb = i + 1;
        return this;
    }

    public final zzmn zzb(Iterable iterable) {
        if (iterable instanceof Collection) {
            zzd(this.zzb + ((Collection) iterable).size());
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zza(entry.getKey(), entry.getValue());
        }
        return this;
    }

    public final zzmo zzc() {
        zzmm zzmmVar = this.zzc;
        if (zzmmVar != null) {
            throw zzmmVar.zza();
        }
        zznl zznlVarZzj = zznl.zzj(this.zzb, this.zza, this);
        zzmm zzmmVar2 = this.zzc;
        if (zzmmVar2 == null) {
            return zznlVarZzj;
        }
        throw zzmmVar2.zza();
    }

    public zzmn(int i) {
        this.zza = new Object[i + i];
        this.zzb = 0;
    }
}
