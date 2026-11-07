package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes4.dex */
final class zzim extends zzir {
    private final double zza;

    public zzim(double d) {
        super(null);
        this.zza = d;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zziw) {
            zziw zziwVar = (zziw) obj;
            if (zziwVar.zzb() == 4 && Double.doubleToLongBits(this.zza) == Double.doubleToLongBits(zziwVar.zzc())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        double d = this.zza;
        return (int) (Double.doubleToLongBits(d) ^ (Double.doubleToLongBits(d) >>> 32));
    }

    public final String toString() {
        double d = this.zza;
        StringBuilder sb = new StringBuilder(String.valueOf(d).length() + 28);
        sb.append("WalleArgsValue{doubleValue=");
        sb.append(d);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zziw
    public final int zzb() {
        return 4;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzir, com.google.android.gms.internal.mlkit_genai_prompt.zziw
    public final double zzc() {
        return this.zza;
    }
}
