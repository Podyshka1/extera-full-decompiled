package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes4.dex */
final class zzit extends zziy {
    private final String zza;
    private final zzmo zzb;

    public /* synthetic */ zzit(String str, zzmo zzmoVar, byte[] bArr) {
        this.zza = str;
        this.zzb = zzmoVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zziy) {
            zziy zziyVar = (zziy) obj;
            if (this.zza.equals(zziyVar.zza()) && this.zzb.equals(zziyVar.zzb())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.zza.hashCode() ^ 1000003;
        return this.zzb.hashCode() ^ (iHashCode * 1000003);
    }

    public final String toString() {
        String string = this.zzb.toString();
        int length = string.length();
        String str = this.zza;
        StringBuilder sb = new StringBuilder(str.length() + 30 + length + 1);
        sb.append("WalleFunctionCall{name=");
        sb.append(str);
        sb.append(", args=");
        sb.append(string);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zziy
    public final String zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zziy
    public final zzmo zzb() {
        return this.zzb;
    }
}
