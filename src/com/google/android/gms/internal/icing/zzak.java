package com.google.android.gms.internal.icing;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation$ResultHolder;

/* JADX INFO: loaded from: classes4.dex */
public final class zzak extends zzad<Status> {
    public zzak(BaseImplementation$ResultHolder<Status> baseImplementation$ResultHolder) {
        super(baseImplementation$ResultHolder);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.android.gms.internal.icing.zzac
    public final void zzb(Status status) {
        this.zza.setResult((T) status);
    }
}
