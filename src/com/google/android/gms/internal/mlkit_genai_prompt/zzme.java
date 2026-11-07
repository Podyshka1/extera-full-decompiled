package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzme extends zzmf {
    Object[] zza;
    int zzb;
    boolean zzc;

    public zzme(int i) {
        zzlu.zzb(i, "initialCapacity");
        this.zza = new Object[i];
        this.zzb = 0;
    }

    private final void zzd(int i) {
        int length = this.zza.length;
        int iZzc = zzmf.zzc(length, this.zzb + i);
        if (iZzc > length || this.zzc) {
            this.zza = Arrays.copyOf(this.zza, iZzc);
            this.zzc = false;
        }
    }

    public final void zzb(Object[] objArr, int i) {
        zzna.zza(objArr, i);
        zzd(i);
        System.arraycopy(objArr, 0, this.zza, this.zzb, i);
        this.zzb += i;
    }

    public final zzme zza(Object obj) {
        obj.getClass();
        zzd(1);
        Object[] objArr = this.zza;
        int i = this.zzb;
        this.zzb = i + 1;
        objArr[i] = obj;
        return this;
    }
}
