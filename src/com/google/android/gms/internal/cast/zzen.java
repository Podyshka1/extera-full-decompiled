package com.google.android.gms.internal.cast;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzen extends zzer {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzen(zzet zzetVar, GoogleApiClient googleApiClient) {
        super(zzetVar, googleApiClient);
        Objects.requireNonNull(zzetVar);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation$ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient) {
        zza((zzew) anyClient);
    }

    @Override // com.google.android.gms.internal.cast.zzer
    public final void zza(zzew zzewVar) {
        zzewVar.zzq(new zzeq(this));
    }
}
