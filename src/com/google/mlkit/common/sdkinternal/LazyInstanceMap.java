package com.google.mlkit.common.sdkinternal;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class LazyInstanceMap {
    private final Map zza = new HashMap();

    protected abstract Object create(Object obj);

    public Object get(Object obj) {
        synchronized (this.zza) {
            try {
                if (this.zza.containsKey(obj)) {
                    return this.zza.get(obj);
                }
                Object objCreate = create(obj);
                this.zza.put(obj, objCreate);
                return objCreate;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
