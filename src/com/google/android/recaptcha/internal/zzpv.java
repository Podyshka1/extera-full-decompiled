package com.google.android.recaptcha.internal;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class zzpv {
    Object[] zza;
    int zzb;
    zzpu zzc;

    public zzpv() {
        this(4);
    }

    public final zzpv zza(Object obj, Object obj2) {
        int i = this.zzb + 1;
        Object[] objArr = this.zza;
        int length = objArr.length;
        int i2 = i + i;
        if (i2 > length) {
            this.zza = Arrays.copyOf(objArr, zzpp.zzc(length, i2));
        }
        zzpa.zza(obj, obj2);
        Object[] objArr2 = this.zza;
        int i3 = this.zzb;
        int i4 = i3 + i3;
        objArr2[i4] = obj;
        objArr2[i4 + 1] = obj2;
        this.zzb = i3 + 1;
        return this;
    }

    public final zzpw zzb() {
        zzpu zzpuVar = this.zzc;
        if (zzpuVar != null) {
            throw zzpuVar.zza();
        }
        zzqq zzqqVarZzf = zzqq.zzf(this.zzb, this.zza, this);
        zzpu zzpuVar2 = this.zzc;
        if (zzpuVar2 == null) {
            return zzqqVarZzf;
        }
        throw zzpuVar2.zza();
    }

    public zzpv(int i) {
        this.zza = new Object[i + i];
        this.zzb = 0;
    }
}
