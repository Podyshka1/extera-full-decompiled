package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes5.dex */
final class zzaut extends zzaux {
    private final String zza;
    private final boolean zzb;
    private final int zzc;

    public /* synthetic */ zzaut(String str, boolean z, int i, byte[] bArr) {
        this.zza = str;
        this.zzb = z;
        this.zzc = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzaux) {
            zzaux zzauxVar = (zzaux) obj;
            if (this.zza.equals(zzauxVar.zza()) && this.zzb == zzauxVar.zzb() && this.zzc == zzauxVar.zzc()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.zza.hashCode() ^ 1000003;
        return this.zzc ^ (((iHashCode * 1000003) ^ (true != this.zzb ? 1237 : 1231)) * 1000003);
    }

    public final String toString() {
        boolean z = this.zzb;
        int length = String.valueOf(z).length();
        int i = this.zzc;
        int length2 = String.valueOf(i).length();
        String str = this.zza;
        StringBuilder sb = new StringBuilder(str.length() + 48 + length + 19 + length2 + 1);
        sb.append("MLKitLoggingOptions{libraryName=");
        sb.append(str);
        sb.append(", enableFirelog=");
        sb.append(z);
        sb.append(", firelogEventType=");
        sb.append(i);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaux
    public final String zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaux
    public final boolean zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaux
    public final int zzc() {
        return this.zzc;
    }
}
