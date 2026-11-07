package com.google.android.gms.internal.mlkit_genai_prompt;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
final class zzayu extends zzayw {
    public zzayu(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzayw
    public final boolean zza(Object obj, long j) {
        return zzayx.zza ? zzayx.zzp(obj, j) : zzayx.zzq(obj, j);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzayw
    public final void zzb(Object obj, long j, boolean z) {
        if (zzayx.zza) {
            zzayx.zzr(obj, j, z);
        } else {
            zzayx.zzs(obj, j, z);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzayw
    public final float zzc(Object obj, long j) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j));
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzayw
    public final void zzd(Object obj, long j, float f) {
        this.zza.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzayw
    public final double zze(Object obj, long j) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j));
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzayw
    public final void zzf(Object obj, long j, double d) {
        this.zza.putLong(obj, j, Double.doubleToLongBits(d));
    }
}
