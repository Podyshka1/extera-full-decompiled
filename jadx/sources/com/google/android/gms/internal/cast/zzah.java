package com.google.android.gms.internal.cast;

import android.os.Bundle;
import java.util.HashMap;
import java.util.Map;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzah {
    public static Map zza(Bundle bundle, String str) {
        Map map = (Map) bundle.getSerializable(str);
        if (map == null) {
            return zzft.zzd();
        }
        HashMap map2 = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            if (entry != null && entry.getKey() != null && entry.getValue() != null) {
                map2.put((Integer) entry.getKey(), (Integer) entry.getValue());
            }
        }
        return DesugarCollections.unmodifiableMap(map2);
    }
}
