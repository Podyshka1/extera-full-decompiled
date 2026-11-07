package com.google.android.gms.internal.play_billing;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
final class zzhm extends zzhn {
    public zzhm(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhn
    public final double zza(Object obj, long j) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j));
    }

    @Override // com.google.android.gms.internal.play_billing.zzhn
    public final float zzb(Object obj, long j) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j));
    }

    /* JADX WARN: Failed to inline method: com.google.android.gms.internal.play_billing.zzho.zzi(java.lang.Object, long, boolean):void */
    /* JADX WARN: Failed to inline method: com.google.android.gms.internal.play_billing.zzho.zzj(java.lang.Object, long, boolean):void */
    /* JADX WARN: Unknown register number '(r4v0 'z' boolean)' in method call: com.google.android.gms.internal.play_billing.zzho.zzi(java.lang.Object, long, boolean):void */
    /* JADX WARN: Unknown register number '(r4v0 'z' boolean)' in method call: com.google.android.gms.internal.play_billing.zzho.zzj(java.lang.Object, long, boolean):void */
    @Override // com.google.android.gms.internal.play_billing.zzhn
    public final void zzc(Object obj, long j, boolean z) {
        if (zzho.zzb) {
            zzho.zzi(obj, j, z);
        } else {
            zzho.zzj(obj, j, z);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhn
    public final void zzd(Object obj, long j, byte b2) {
        if (zzho.zzb) {
            zzho.zzD(obj, j, b2);
        } else {
            zzho.zzE(obj, j, b2);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhn
    public final void zze(Object obj, long j, double d) {
        this.zza.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.play_billing.zzhn
    public final void zzf(Object obj, long j, float f) {
        this.zza.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.play_billing.zzhn
    public final boolean zzg(Object obj, long j) {
        return zzho.zzb ? zzho.zzt(obj, j) : zzho.zzu(obj, j);
    }
}
