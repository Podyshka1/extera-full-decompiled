package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.internal.BaseImplementation$ResultHolder;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzhn extends zza {
    private BaseImplementation$ResultHolder zza;

    public zzhn(BaseImplementation$ResultHolder baseImplementation$ResultHolder) {
        this.zza = baseImplementation$ResultHolder;
    }

    public final void zzI(Object obj) {
        BaseImplementation$ResultHolder baseImplementation$ResultHolder = this.zza;
        if (baseImplementation$ResultHolder != null) {
            baseImplementation$ResultHolder.setResult(obj);
            this.zza = null;
        }
    }
}
