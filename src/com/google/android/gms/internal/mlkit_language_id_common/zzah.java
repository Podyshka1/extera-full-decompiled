package com.google.android.gms.internal.mlkit_language_id_common;

/* JADX INFO: loaded from: classes.dex */
final class zzah implements zzam {
    private final int zza;
    private final zzal zzb;

    zzah(int i, zzal zzalVar) {
        this.zza = i;
        this.zzb = zzalVar;
    }

    @Override // java.lang.annotation.Annotation
    public final Class annotationType() {
        return zzam.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzam)) {
            return false;
        }
        zzam zzamVar = (zzam) obj;
        return this.zza == zzamVar.zza() && this.zzb.equals(zzamVar.zzb());
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (this.zza ^ 14552422) + (this.zzb.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.zza + "intEncoding=" + this.zzb + ')';
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzam
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzam
    public final zzal zzb() {
        return this.zzb;
    }
}
