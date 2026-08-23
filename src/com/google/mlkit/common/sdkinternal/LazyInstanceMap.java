package com.google.mlkit.common.sdkinternal;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class LazyInstanceMap<K, V> {
    private final Map zza = new HashMap();

    public abstract V create(K k);

    public V get(K k) {
        synchronized (this.zza) {
            try {
                if (this.zza.containsKey(k)) {
                    return (V) this.zza.get(k);
                }
                V vCreate = create(k);
                this.zza.put(k, vCreate);
                return vCreate;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
