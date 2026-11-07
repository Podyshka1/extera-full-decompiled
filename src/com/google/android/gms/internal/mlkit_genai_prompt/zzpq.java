package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes5.dex */
final class zzpq implements zzpv {
    private final int zza;
    private final zzpu zzb;

    public zzpq(int i, zzpu zzpuVar) {
        this.zza = i;
        this.zzb = zzpuVar;
    }

    @Override // java.lang.annotation.Annotation
    public final Class annotationType() {
        return zzpv.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzpv)) {
            return false;
        }
        zzpv zzpvVar = (zzpv) obj;
        return this.zza == zzpvVar.zza() && this.zzb.equals(zzpvVar.zzb());
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (this.zza ^ 14552422) + (this.zzb.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.zza + "intEncoding=" + this.zzb + ')';
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzpv
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzpv
    public final zzpu zzb() {
        return this.zzb;
    }
}
