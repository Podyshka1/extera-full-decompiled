package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes4.dex */
class zzo extends com.google.android.gms.cast.internal.zzc {
    public zzo(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return new zzn(this, status);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation$ApiMethodImpl
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public void doExecute(com.google.android.gms.cast.internal.zzx zzxVar) {
        throw null;
    }
}
