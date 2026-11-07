package com.google.android.gms.cast;

import android.app.PendingIntent;
import android.text.TextUtils;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzl extends com.google.android.gms.cast.internal.zzae {
    final /* synthetic */ String zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzl(zzm zzmVar, GoogleApiClient googleApiClient, String str) {
        super(googleApiClient);
        this.zza = str;
        Objects.requireNonNull(zzmVar);
    }

    @Override // com.google.android.gms.cast.internal.zzae, com.google.android.gms.common.api.internal.BaseImplementation$ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient) {
        doExecute((com.google.android.gms.cast.internal.zzx) anyClient);
    }

    @Override // com.google.android.gms.cast.internal.zzae
    /* JADX INFO: renamed from: zza */
    public final void doExecute(com.google.android.gms.cast.internal.zzx zzxVar) {
        String str = this.zza;
        if (TextUtils.isEmpty(str)) {
            setResult(new Status(CastStatusCodes.INVALID_REQUEST, "IllegalArgument: sessionId cannot be null or empty", (PendingIntent) null));
            return;
        }
        try {
            zzxVar.zzt(str, this);
        } catch (IllegalStateException unused) {
            zzc(CastStatusCodes.INVALID_REQUEST);
        }
    }
}
