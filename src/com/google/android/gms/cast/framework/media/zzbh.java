package com.google.android.gms.cast.framework.media;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;

/* JADX INFO: loaded from: classes4.dex */
final class zzbh extends BasePendingResult {
    zzbh() {
        super(null);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    protected final /* synthetic */ Result createFailedResult(Status status) {
        return new zzbg(this, status);
    }
}
