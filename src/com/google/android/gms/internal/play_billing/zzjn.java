package com.google.android.gms.internal.play_billing;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
final class zzjn extends zzjp {
    public zzjn(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjp
    public final double zza(Object obj, long j) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j));
    }

    @Override // com.google.android.gms.internal.play_billing.zzjp
    public final float zzb(Object obj, long j) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j));
    }

    @Override // com.google.android.gms.internal.play_billing.zzjp
    public final void zzc(Object obj, long j, boolean z) {
        if (zzjq.zzb) {
            zzjq.zzD(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            zzjq.zzE(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjp
    public final void zzd(Object obj, long j, byte b2) {
        if (zzjq.zzb) {
            zzjq.zzD(obj, j, b2);
        } else {
            zzjq.zzE(obj, j, b2);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjp
    public final void zze(Object obj, long j, double d) {
        this.zza.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.play_billing.zzjp
    public final void zzf(Object obj, long j, float f) {
        this.zza.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.play_billing.zzjp
    public final boolean zzg(Object obj, long j) {
        return zzjq.zzb ? zzjq.zzt(obj, j) : zzjq.zzu(obj, j);
    }
}
