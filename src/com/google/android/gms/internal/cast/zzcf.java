package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;

/* JADX INFO: loaded from: classes4.dex */
final class zzcf extends BasePendingResult {
    public zzcf(zzcg zzcgVar) {
        super((GoogleApiClient) null);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final Result createFailedResult(Status status) {
        int i = CastSession.zza;
        return status;
    }
}
