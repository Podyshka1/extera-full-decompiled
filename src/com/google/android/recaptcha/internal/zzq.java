package com.google.android.recaptcha.internal;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class zzq {
    private final SharedPreferences zza;

    public zzq(Context context) {
        this.zza = context.getSharedPreferences("_GRECAPTCHA", 0);
    }

    public final String zza(String str) {
        return this.zza.getString("_GRECAPTCHA_KC", null);
    }

    public final void zzb(Map map) {
        SharedPreferences.Editor editorEdit = this.zza.edit();
        for (Map.Entry entry : map.entrySet()) {
            editorEdit.putString((String) entry.getKey(), (String) entry.getValue());
        }
        editorEdit.commit();
    }
}
