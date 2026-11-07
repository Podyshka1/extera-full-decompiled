package com.google.android.recaptcha.internal;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
final class zzaid extends zzaif {
    public zzaid(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.recaptcha.internal.zzaif
    public final boolean zza(Object obj, long j) {
        return zzaig.zza ? zzaig.zzp(obj, j) : zzaig.zzq(obj, j);
    }

    @Override // com.google.android.recaptcha.internal.zzaif
    public final void zzb(Object obj, long j, boolean z) {
        if (zzaig.zza) {
            zzaig.zzr(obj, j, z);
        } else {
            zzaig.zzs(obj, j, z);
        }
    }

    @Override // com.google.android.recaptcha.internal.zzaif
    public final float zzc(Object obj, long j) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j));
    }

    @Override // com.google.android.recaptcha.internal.zzaif
    public final void zzd(Object obj, long j, float f) {
        this.zza.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.recaptcha.internal.zzaif
    public final double zze(Object obj, long j) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j));
    }

    @Override // com.google.android.recaptcha.internal.zzaif
    public final void zzf(Object obj, long j, double d) {
        this.zza.putLong(obj, j, Double.doubleToLongBits(d));
    }
}
