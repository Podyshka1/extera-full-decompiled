package com.google.android.gms.internal.cast;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzem extends zzer {
    final /* synthetic */ String zza;
    final /* synthetic */ zzet zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzem(zzet zzetVar, GoogleApiClient googleApiClient, String str) {
        super(zzetVar, googleApiClient);
        this.zza = str;
        Objects.requireNonNull(zzetVar);
        this.zzb = zzetVar;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation$ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient) {
        zza((zzew) anyClient);
    }

    @Override // com.google.android.gms.internal.cast.zzer
    public final void zza(zzew zzewVar) {
        zzewVar.zzp(new zzep(this, zzewVar), this.zzb.zzf(), this.zza);
    }
}
