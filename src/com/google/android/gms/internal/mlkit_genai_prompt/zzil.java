package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes4.dex */
final class zzil extends zzir {
    private final boolean zza;

    public zzil(boolean z) {
        super(null);
        this.zza = z;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zziw) {
            zziw zziwVar = (zziw) obj;
            if (zziwVar.zzb() == 2 && this.zza == zziwVar.zza()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zza ? 1231 : 1237;
    }

    public final String toString() {
        boolean z = this.zza;
        StringBuilder sb = new StringBuilder(String.valueOf(z).length() + 26);
        sb.append("WalleArgsValue{boolValue=");
        sb.append(z);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzir, com.google.android.gms.internal.mlkit_genai_prompt.zziw
    public final boolean zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zziw
    public final int zzb() {
        return 2;
    }
}
