package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes5.dex */
final class zzip extends zzir {
    private final long zza;

    public zzip(long j) {
        super(null);
        this.zza = j;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zziw) {
            zziw zziwVar = (zziw) obj;
            if (zziwVar.zzb() == 6 && this.zza == zziwVar.zzf()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.zza;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        long j = this.zza;
        StringBuilder sb = new StringBuilder(String.valueOf(j).length() + 26);
        sb.append("WalleArgsValue{longValue=");
        sb.append(j);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zziw
    public final int zzb() {
        return 6;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzir, com.google.android.gms.internal.mlkit_genai_prompt.zziw
    public final long zzf() {
        return this.zza;
    }
}
