package com.google.android.gms.internal.cast;

import android.os.Bundle;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzaz {
    public static Map zza(Bundle bundle, String str) {
        Map map = (Map) bundle.getSerializable(str);
        if (map == null) {
            return zzhy.zza();
        }
        HashMap map2 = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            if (entry != null && entry.getKey() != null && entry.getValue() != null) {
                map2.put((Integer) entry.getKey(), (Integer) entry.getValue());
            }
        }
        return Collections.unmodifiableMap(map2);
    }
}
