package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes4.dex */
final class zziq extends zzir {
    private final String zza;

    public zziq(String str) {
        super(null);
        this.zza = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zziw) {
            zziw zziwVar = (zziw) obj;
            if (zziwVar.zzb() == 1 && this.zza.equals(zziwVar.zzg())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final String toString() {
        String str = this.zza;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 28);
        sb.append("WalleArgsValue{stringValue=");
        sb.append(str);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zziw
    public final int zzb() {
        return 1;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzir, com.google.android.gms.internal.mlkit_genai_prompt.zziw
    public final String zzg() {
        return this.zza;
    }
}
