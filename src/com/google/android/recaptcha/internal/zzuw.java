package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class zzuw {
    private static final zzuw zzb = new zzuw();
    private final Map zza = new HashMap();

    public static zzuw zza() {
        return zzb;
    }

    public final synchronized void zzb(String str, zzsl zzslVar) {
        try {
            Map map = this.zza;
            if (!map.containsKey(str)) {
                map.put(str, zzslVar);
                return;
            }
            if (((zzsl) map.get(str)).equals(zzslVar)) {
                return;
            }
            String strValueOf = String.valueOf(map.get(str));
            String strValueOf2 = String.valueOf(zzslVar);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 45 + strValueOf.length() + 17 + strValueOf2.length());
            sb.append("Parameters object with name ");
            sb.append(str);
            sb.append(" already exists (");
            sb.append(strValueOf);
            sb.append("), cannot insert ");
            sb.append(strValueOf2);
            throw new GeneralSecurityException(sb.toString());
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzc(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            zzb((String) entry.getKey(), (zzsl) entry.getValue());
        }
    }
}
