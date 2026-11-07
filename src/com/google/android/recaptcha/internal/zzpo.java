package com.google.android.recaptcha.internal;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzpo extends zzpp {
    Object[] zza;
    int zzb;
    boolean zzc;

    public zzpo(int i) {
        zzpa.zzb(i, "initialCapacity");
        this.zza = new Object[i];
        this.zzb = 0;
    }

    public final zzpo zza(Object obj) {
        int length = this.zza.length;
        int iZzc = zzpp.zzc(length, this.zzb + 1);
        if (iZzc > length || this.zzc) {
            this.zza = Arrays.copyOf(this.zza, iZzc);
            this.zzc = false;
        }
        Object[] objArr = this.zza;
        int i = this.zzb;
        this.zzb = i + 1;
        objArr[i] = obj;
        return this;
    }
}
