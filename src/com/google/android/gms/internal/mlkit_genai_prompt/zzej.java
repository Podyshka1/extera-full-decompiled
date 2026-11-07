package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes4.dex */
final class zzej extends zzeu {
    private final zzdi zza;
    private final zzdy zzb;
    private final zzdq zzc;

    public /* synthetic */ zzej(zzdi zzdiVar, zzdy zzdyVar, zzdq zzdqVar, byte[] bArr) {
        this.zza = zzdiVar;
        this.zzb = zzdyVar;
        this.zzc = zzdqVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzeu) {
            zzeu zzeuVar = (zzeu) obj;
            if (this.zza.equals(zzeuVar.zza()) && this.zzb.equals(zzeuVar.zzb()) && this.zzc.equals(zzeuVar.zzc())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((this.zza.hashCode() ^ 1000003) * 1000003) ^ this.zzb.hashCode();
        return this.zzc.hashCode() ^ (iHashCode * 1000003);
    }

    public final String toString() {
        String string = this.zza.toString();
        int length = string.length();
        String string2 = this.zzb.toString();
        int length2 = string2.length();
        String string3 = this.zzc.toString();
        StringBuilder sb = new StringBuilder(length + 54 + length2 + 10 + string3.length() + 1);
        sb.append("CortanaServiceOptions{aiCoreClient=");
        sb.append(string);
        sb.append(", downloadCallback=");
        sb.append(string2);
        sb.append(", feature=");
        sb.append(string3);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzeu
    public final zzdi zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzeu
    public final zzdy zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzeu
    public final zzdq zzc() {
        return this.zzc;
    }
}
