package com.google.android.gms.cast;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzi extends zzo {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzi(zzm zzmVar, GoogleApiClient googleApiClient, String str, String str2, zzbn zzbnVar) {
        super(googleApiClient);
        this.zza = str;
        this.zzb = str2;
        Objects.requireNonNull(zzmVar);
    }

    @Override // com.google.android.gms.cast.zzo, com.google.android.gms.common.api.internal.BaseImplementation$ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient) {
        doExecute((com.google.android.gms.cast.internal.zzx) anyClient);
    }

    @Override // com.google.android.gms.cast.zzo
    /* JADX INFO: renamed from: zza */
    public final void doExecute(com.google.android.gms.cast.internal.zzx zzxVar) {
        try {
            zzxVar.zzr(this.zza, this.zzb, null, this);
        } catch (IllegalStateException unused) {
            zzc(CastStatusCodes.INVALID_REQUEST);
        }
    }
}
