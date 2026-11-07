package com.google.android.gms.internal.mlkit_genai_prompt;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
final class zzxu implements zzxj {
    public static final zzxu zza = new zzxu();

    private zzxu() {
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzxj
    public final /* bridge */ /* synthetic */ zzxi zza(JSONObject jSONObject) {
        return new zzxt(jSONObject.getString("name"), jSONObject.getString("path"), jSONObject.getString("prompt_prefix"), jSONObject.optString("model_name", "unknown"));
    }
}
