package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes5.dex */
final class zzfg extends zzu {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ byte[] zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfg(zzfl zzflVar, GoogleApiClient googleApiClient, String str, String str2, byte[] bArr) {
        super(googleApiClient);
        this.zza = str;
        this.zzb = str2;
        this.zzc = bArr;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* bridge */ /* synthetic */ Result createFailedResult(Status status) {
        return new zzfk(status, -1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.BaseImplementation$ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient) {
        ((zzfb) ((zzim) anyClient).getService()).zzz(new zzig(this), this.zza, this.zzb, this.zzc);
    }
}
