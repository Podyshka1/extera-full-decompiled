package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes5.dex */
final class zzio extends zzir {
    private final zzml zza;

    public zzio(zzml zzmlVar) {
        super(null);
        this.zza = zzmlVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zziw) {
            zziw zziwVar = (zziw) obj;
            if (zziwVar.zzb() == 5 && this.zza.equals(zziwVar.zze())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.zza);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 26);
        sb.append("WalleArgsValue{listValue=");
        sb.append(strValueOf);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zziw
    public final int zzb() {
        return 5;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzir, com.google.android.gms.internal.mlkit_genai_prompt.zziw
    public final zzml zze() {
        return this.zza;
    }
}
