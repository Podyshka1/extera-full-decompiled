package com.google.android.gms.cast;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzcd {
    private final Map zza = new HashMap();
    private final Map zzb = new HashMap();
    private final Map zzc = new HashMap();

    public final int zza(String str) {
        Integer num = (Integer) this.zzc.get(str);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public final zzcd zzb(String str, String str2, int i) {
        this.zza.put(str, str2);
        this.zzb.put(str2, str);
        this.zzc.put(str, Integer.valueOf(i));
        return this;
    }

    public final String zzc(String str) {
        return (String) this.zza.get(str);
    }

    public final String zzd(String str) {
        return (String) this.zzb.get(str);
    }
}
