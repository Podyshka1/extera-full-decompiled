package com.google.android.gms.internal.cast;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
final class zzwh extends zzwi {
    zzwh(Unsafe unsafe) {
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

    /* JADX WARN: Failed to inline method: com.google.android.gms.internal.cast.zzwj.zzi(java.lang.Object, long, boolean):void */
    /* JADX WARN: Failed to inline method: com.google.android.gms.internal.cast.zzwj.zzj(java.lang.Object, long, boolean):void */
    /* JADX WARN: Unknown register number '(r5v0 'z' boolean)' in method call: com.google.android.gms.internal.cast.zzwj.zzj(java.lang.Object, long, boolean):void */
    /* JADX WARN: Unknown register number '(r5v0 boolean)' in method call: com.google.android.gms.internal.cast.zzwj.zzi(java.lang.Object, long, boolean):void */
    @Override // com.google.android.gms.internal.cast.zzwi
    public final void zzc(Object obj, long j, boolean z) {
        if (zzwj.zzb) {
            zzwj.zzi(obj, j, z);
        } else {
            zzwj.zzj(obj, j, z);
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
