package com.google.android.recaptcha.internal;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzaif {
    final Unsafe zza;

    public zzaif(Unsafe unsafe) {
        this.zza = unsafe;
    }

    public abstract boolean zza(Object obj, long j);

    public abstract void zzb(Object obj, long j, boolean z);

    public abstract float zzc(Object obj, long j);

    public abstract void zzd(Object obj, long j, float f);

    public abstract double zze(Object obj, long j);

    public abstract void zzf(Object obj, long j, double d);
}
