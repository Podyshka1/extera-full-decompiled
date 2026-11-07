package com.google.android.recaptcha.internal;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes5.dex */
public final class zzno {
    private final SharedPreferences zza;

    public zzno(Context context) {
        this.zza = context.getSharedPreferences("_GRECAPTCHA", 0);
    }

    public final Object zza(Map map, Continuation continuation) {
        SharedPreferences.Editor editorEdit = this.zza.edit();
        for (Map.Entry entry : map.entrySet()) {
            editorEdit.putString((String) entry.getKey(), (String) entry.getValue());
        }
        editorEdit.commit();
        return Unit.INSTANCE;
    }

    public final Object zzb(String str, Continuation continuation) {
        return this.zza.getString(str, null);
    }
}
