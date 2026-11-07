package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
final class zzdm extends zzp {
    final /* synthetic */ Object zza;
    final /* synthetic */ TaskCompletionSource zzb;

    public zzdm(Object obj, TaskCompletionSource taskCompletionSource) {
        this.zza = obj;
        this.zzb = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.location.zzq
    public final void zzd(zzk zzkVar, ApiMetadata apiMetadata) {
        TaskUtil.setResultOrApiException(zzkVar.getStatus(), this.zza, this.zzb, apiMetadata);
    }

    @Override // com.google.android.gms.internal.location.zzq
    public final void zze(ApiMetadata apiMetadata) {
    }
}
