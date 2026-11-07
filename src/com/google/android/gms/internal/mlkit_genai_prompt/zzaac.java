package com.google.android.gms.internal.mlkit_genai_prompt;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
final class zzaac implements zzxj {
    public static final zzaac zza = new zzaac();

    private zzaac() {
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzxj
    public final /* bridge */ /* synthetic */ zzxi zza(JSONObject jSONObject) {
        return new zzaab(jSONObject.getString("id"), jSONObject.getString("path"), jSONObject.getLong("last_access_time"), jSONObject.optString("model_name", "unknown"));
    }
}
