package com.google.android.gms.internal.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation$ApiMethodImpl;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzer extends BaseImplementation$ApiMethodImpl {
    final /* synthetic */ zzet zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzer(zzet zzetVar, GoogleApiClient googleApiClient) {
        super(zzetVar.zzc(), googleApiClient);
        Objects.requireNonNull(zzetVar);
        this.zzc = zzetVar;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return new zzes(status);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation$ApiMethodImpl, com.google.android.gms.common.api.internal.BaseImplementation$ResultHolder
    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Result) obj);
    }

    public abstract void zza(zzew zzewVar);
}
