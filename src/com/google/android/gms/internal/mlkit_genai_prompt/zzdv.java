package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes4.dex */
final class zzdv extends zzdz {
    private final int zza;

    public zzdv(int i) {
        this.zza = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof zzdz) && this.zza == ((zzdz) obj).zza();
    }

    public final int hashCode() {
        return this.zza ^ 1000003;
    }

    public final String toString() {
        int i = this.zza;
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 22);
        sb.append("TokenInfo{tokenCount=");
        sb.append(i);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdz
    public final int zza() {
        return this.zza;
    }
}
