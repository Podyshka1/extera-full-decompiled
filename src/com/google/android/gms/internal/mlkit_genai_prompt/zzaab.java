package com.google.android.gms.internal.mlkit_genai_prompt;

import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaab implements zzxi {
    private final String zza;
    private final String zzb;
    private final long zzc;
    private final String zzd;

    public zzaab(String str, String str2, long j, String str3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = j;
        this.zzd = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaab)) {
            return false;
        }
        zzaab zzaabVar = (zzaab) obj;
        return Intrinsics.areEqual(this.zza, zzaabVar.zza) && Intrinsics.areEqual(this.zzb, zzaabVar.zzb) && this.zzc == zzaabVar.zzc && Intrinsics.areEqual(this.zzd, zzaabVar.zzd);
    }

    public final int hashCode() {
        return (((((this.zza.hashCode() * 31) + this.zzb.hashCode()) * 31) + Long.hashCode(this.zzc)) * 31) + this.zzd.hashCode();
    }

    public final String toString() {
        String str = this.zza;
        int length = String.valueOf(str).length();
        String str2 = this.zzb;
        int length2 = String.valueOf(str2).length();
        long j = this.zzc;
        int length3 = String.valueOf(j).length();
        String str3 = this.zzd;
        StringBuilder sb = new StringBuilder(length + 34 + length2 + 17 + length3 + 12 + String.valueOf(str3).length() + 1);
        sb.append("ImplicitCacheMetadata(name=");
        sb.append(str);
        sb.append(", path=");
        sb.append(str2);
        sb.append(", lastAccessTime=");
        sb.append(j);
        sb.append(", modelName=");
        sb.append(str3);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzxi
    public final String zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzxi
    public final String zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzxi
    public final JSONObject zzc() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", this.zza);
        jSONObject.put("path", this.zzb);
        jSONObject.put("last_access_time", this.zzc);
        jSONObject.put("model_name", this.zzd);
        return jSONObject;
    }

    public final long zzd() {
        return this.zzc;
    }

    public final String zze() {
        return this.zzd;
    }
}
