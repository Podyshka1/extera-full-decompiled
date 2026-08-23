package com.google.android.recaptcha.internal;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
final class zzlt extends zzlu {
    public zzlt(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.recaptcha.internal.zzlu
    public final double zza(Object obj, long j) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j));
    }

    @Override // com.google.android.recaptcha.internal.zzlu
    public final float zzb(Object obj, long j) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j));
    }

    /* JADX WARN: Failed to inline method: com.google.android.recaptcha.internal.zzlv.zzi(java.lang.Object, long, boolean):void */
    /* JADX WARN: Failed to inline method: com.google.android.recaptcha.internal.zzlv.zzj(java.lang.Object, long, boolean):void */
    /* JADX WARN: Unknown register number '(r4v0 'z' boolean)' in method call: com.google.android.recaptcha.internal.zzlv.zzi(java.lang.Object, long, boolean):void */
    /* JADX WARN: Unknown register number '(r4v0 'z' boolean)' in method call: com.google.android.recaptcha.internal.zzlv.zzj(java.lang.Object, long, boolean):void */
    @Override // com.google.android.recaptcha.internal.zzlu
    public final void zzc(Object obj, long j, boolean z) {
        if (zzlv.zzb) {
            zzlv.zzi(obj, j, z);
        } else {
            zzlv.zzj(obj, j, z);
        }
    }

    @Override // com.google.android.recaptcha.internal.zzlu
    public final void zzd(Object obj, long j, byte b2) {
        if (zzlv.zzb) {
            zzlv.zzD(obj, j, b2);
        } else {
            zzlv.zzE(obj, j, b2);
        }
    }

    @Override // com.google.android.recaptcha.internal.zzlu
    public final void zze(Object obj, long j, double d) {
        this.zza.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.recaptcha.internal.zzlu
    public final void zzf(Object obj, long j, float f) {
        this.zza.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.recaptcha.internal.zzlu
    public final boolean zzg(Object obj, long j) {
        return zzlv.zzb ? zzlv.zzt(obj, j) : zzlv.zzu(obj, j);
    }
}
