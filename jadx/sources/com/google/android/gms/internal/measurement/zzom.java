package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
final class zzom extends zzoo {
    zzom(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.measurement.zzoo
    public final void zza(Object obj, long j, byte b) {
        if (zzop.zzb) {
            zzop.zzD(obj, j, b);
        } else {
            zzop.zzE(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzoo
    public final boolean zzb(Object obj, long j) {
        return zzop.zzb ? zzop.zzu(obj, j) : zzop.zzv(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzoo
    public final void zzc(Object obj, long j, boolean z) {
        if (zzop.zzb) {
            zzop.zzD(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            zzop.zzE(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzoo
    public final float zzd(Object obj, long j) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzoo
    public final void zze(Object obj, long j, float f) {
        this.zza.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.measurement.zzoo
    public final double zzf(Object obj, long j) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzoo
    public final void zzg(Object obj, long j, double d) {
        this.zza.putLong(obj, j, Double.doubleToLongBits(d));
    }
}
