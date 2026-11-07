package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.location.zzv;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
final class zzdc extends zzp {
    final /* synthetic */ TaskCompletionSource zza;
    final /* synthetic */ zzv zzb;

    public zzdc(TaskCompletionSource taskCompletionSource, zzv zzvVar) {
        this.zza = taskCompletionSource;
        this.zzb = zzvVar;
    }

    @Override // com.google.android.gms.internal.location.zzq
    public final void zzd(zzk zzkVar, ApiMetadata apiMetadata) {
        TaskUtil.setResultOrApiException(zzkVar.getStatus(), (TaskCompletionSource<Void>) this.zza, apiMetadata);
    }

    @Override // com.google.android.gms.internal.location.zzq
    public final void zze(ApiMetadata apiMetadata) {
        this.zzb.zzf();
    }
}
