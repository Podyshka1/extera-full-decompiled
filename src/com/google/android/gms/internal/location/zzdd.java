package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.location.LocationSettingsResponse;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
final class zzdd extends zzz {
    final /* synthetic */ TaskCompletionSource zza;

    public zzdd(TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.location.zzaa
    public final void zzb(LocationSettingsResult locationSettingsResult, ApiMetadata apiMetadata) {
        TaskUtil.setResultOrApiException(locationSettingsResult.getStatus(), new LocationSettingsResponse(locationSettingsResult), this.zza, apiMetadata);
    }
}
