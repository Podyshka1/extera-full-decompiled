package com.google.android.gms.cast.internal;

import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation$ApiMethodImpl;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzc extends BaseImplementation$ApiMethodImpl {
    public zzc(GoogleApiClient googleApiClient) {
        super(Cast.API, googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation$ApiMethodImpl, com.google.android.gms.common.api.internal.BaseImplementation$ResultHolder
    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Result) obj);
    }

    public final void zzc(int i) {
        setResult(createFailedResult(new Status(CastStatusCodes.INVALID_REQUEST)));
    }
}
