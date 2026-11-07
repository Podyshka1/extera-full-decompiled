package com.google.android.gms.internal.mlkit_genai_prompt;

import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class zzxt implements zzxi {
    private final String zza;
    private final String zzb;
    private final String zzc;
    private final String zzd;

    public zzxt(String str, String str2, String str3, String str4) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzxt)) {
            return false;
        }
        zzxt zzxtVar = (zzxt) obj;
        return Intrinsics.areEqual(this.zza, zzxtVar.zza) && Intrinsics.areEqual(this.zzb, zzxtVar.zzb) && Intrinsics.areEqual(this.zzc, zzxtVar.zzc) && Intrinsics.areEqual(this.zzd, zzxtVar.zzd);
    }

    public final int hashCode() {
        return (((((this.zza.hashCode() * 31) + this.zzb.hashCode()) * 31) + this.zzc.hashCode()) * 31) + this.zzd.hashCode();
    }

    public final String toString() {
        String str = this.zza;
        int length = String.valueOf(str).length();
        String str2 = this.zzb;
        int length2 = String.valueOf(str2).length();
        String str3 = this.zzc;
        int length3 = String.valueOf(str3).length();
        String str4 = this.zzd;
        StringBuilder sb = new StringBuilder(length + 34 + length2 + 15 + length3 + 12 + String.valueOf(str4).length() + 1);
        sb.append("ExplicitCacheMetadata(name=");
        sb.append(str);
        sb.append(", path=");
        sb.append(str2);
        sb.append(", promptPrefix=");
        sb.append(str3);
        sb.append(", modelName=");
        sb.append(str4);
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
        jSONObject.put("name", this.zza);
        jSONObject.put("path", this.zzb);
        jSONObject.put("prompt_prefix", this.zzc);
        jSONObject.put("model_name", this.zzd);
        return jSONObject;
    }

    public final String zzd() {
        return this.zzc;
    }

    public final String zze() {
        return this.zzd;
    }
}
