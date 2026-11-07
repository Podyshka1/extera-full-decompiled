package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes4.dex */
final class zzin extends zzir {
    private final int zza;

    public zzin(int i) {
        super(null);
        this.zza = i;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zziw) {
            zziw zziwVar = (zziw) obj;
            if (zziwVar.zzb() == 3 && this.zza == zziwVar.zzd()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zza;
    }

    public final String toString() {
        int i = this.zza;
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 25);
        sb.append("WalleArgsValue{intValue=");
        sb.append(i);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zziw
    public final int zzb() {
        return 3;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzir, com.google.android.gms.internal.mlkit_genai_prompt.zziw
    public final int zzd() {
        return this.zza;
    }
}
