package com.google.android.gms.internal.cast;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
final class zzwg extends zzwi {
    zzwg(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.cast.zzwi
    public final double zza(Object obj, long j) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j));
    }

    @Override // com.google.android.gms.internal.cast.zzwi
    public final float zzb(Object obj, long j) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j));
    }

    @Override // com.google.android.gms.internal.cast.zzwi
    public final void zzc(Object obj, long j, boolean z) {
        if (zzwj.zzb) {
            zzwj.zzD(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            zzwj.zzE(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwi
    public final void zzd(Object obj, long j, byte b) {
        if (zzwj.zzb) {
            zzwj.zzD(obj, j, b);
        } else {
            zzwj.zzE(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwi
    public final void zze(Object obj, long j, double d) {
        this.zza.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.cast.zzwi
    public final void zzf(Object obj, long j, float f) {
        this.zza.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.cast.zzwi
    public final boolean zzg(Object obj, long j) {
        return zzwj.zzb ? zzwj.zzt(obj, j) : zzwj.zzu(obj, j);
    }
}
