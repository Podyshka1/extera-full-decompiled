package com.google.android.gms.internal.cast;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
final class zzaah extends zzaaj {
    public zzaah(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.cast.zzaaj
    public final void zza(Object obj, long j, byte b2) {
        if (zzaak.zzb) {
            zzaak.zzD(obj, j, b2);
        } else {
            zzaak.zzE(obj, j, b2);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzaaj
    public final boolean zzb(Object obj, long j) {
        return zzaak.zzb ? zzaak.zzu(obj, j) : zzaak.zzv(obj, j);
    }

    @Override // com.google.android.gms.internal.cast.zzaaj
    public final void zzc(Object obj, long j, boolean z) {
        if (zzaak.zzb) {
            zzaak.zzD(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            zzaak.zzE(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzaaj
    public final float zzd(Object obj, long j) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j));
    }

    @Override // com.google.android.gms.internal.cast.zzaaj
    public final void zze(Object obj, long j, float f) {
        this.zza.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.cast.zzaaj
    public final double zzf(Object obj, long j) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j));
    }

    @Override // com.google.android.gms.internal.cast.zzaaj
    public final void zzg(Object obj, long j, double d) {
        this.zza.putLong(obj, j, Double.doubleToLongBits(d));
    }
}
