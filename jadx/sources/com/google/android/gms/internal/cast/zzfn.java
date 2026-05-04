package com.google.android.gms.internal.cast;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfn extends zzfk {
    public zzfn() {
        super(4);
    }

    public final zzfq zzc() {
        this.zzc = true;
        return zzfq.zzi(this.zza, this.zzb);
    }

    public final zzfn zzb(Object obj) {
        obj.getClass();
        int i = this.zzb + 1;
        Object[] objArr = this.zza;
        int length = objArr.length;
        if (length < i) {
            this.zza = Arrays.copyOf(objArr, zzfl.zza(length, i));
            this.zzc = false;
        } else if (this.zzc) {
            this.zza = (Object[]) objArr.clone();
            this.zzc = false;
        }
        Object[] objArr2 = this.zza;
        int i2 = this.zzb;
        this.zzb = i2 + 1;
        objArr2[i2] = obj;
        return this;
    }
}
