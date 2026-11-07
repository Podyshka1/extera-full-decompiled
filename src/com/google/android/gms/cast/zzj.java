package com.google.android.gms.cast;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzj extends com.google.android.gms.cast.internal.zzae {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzj(zzm zzmVar, GoogleApiClient googleApiClient) {
        super(googleApiClient);
        Objects.requireNonNull(zzmVar);
    }

    @Override // com.google.android.gms.cast.internal.zzae, com.google.android.gms.common.api.internal.BaseImplementation$ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient) {
        doExecute((com.google.android.gms.cast.internal.zzx) anyClient);
    }

    @Override // com.google.android.gms.cast.internal.zzae
    /* JADX INFO: renamed from: zza */
    public final void doExecute(com.google.android.gms.cast.internal.zzx zzxVar) {
        try {
            zzxVar.zzs(this);
        } catch (IllegalStateException unused) {
            zzc(CastStatusCodes.INVALID_REQUEST);
        }
    }
}
