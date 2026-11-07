package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.android.gms.internal.cast.zzhm$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzlu {
    public static int zzb(int i, String str) {
        if (i >= 0) {
            return i;
        }
        StringBuilder sb = new StringBuilder(str.length() + 29 + String.valueOf(i).length());
        sb.append(str);
        sb.append(" cannot be negative but was: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    public static void zza(Object obj, Object obj2) {
        if (obj == null) {
            f$$ExternalSyntheticBUOutline2.m213m("null key in entry: null=".concat(String.valueOf(obj2)));
        } else {
            if (obj2 != null) {
                return;
            }
            String string = obj.toString();
            zzhm$$ExternalSyntheticBUOutline0.m309m(string.length() + 26, string);
        }
    }
}
