package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
final class zzkj extends zzkr {
    private final TaskCompletionSource zza;

    public /* synthetic */ zzkj(TaskCompletionSource taskCompletionSource, byte[] bArr) {
        this.zza = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzb(Status status) {
        TaskUtil.setResultOrApiException(status, this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzc(Status status) {
        TaskUtil.setResultOrApiException(status, this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzd(Status status) {
        TaskUtil.setResultOrApiException(status, this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zze(Status status) {
        TaskUtil.setResultOrApiException(status, this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzf(Status status, zzjh zzjhVar) {
        TaskUtil.setResultOrApiException(status, zzjhVar, (TaskCompletionSource<zzjh>) this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzg(Status status) {
        TaskUtil.setResultOrApiException(status, this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzh(Status status, zzjl zzjlVar) {
        TaskUtil.setResultOrApiException(status, zzjlVar, (TaskCompletionSource<zzjl>) this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzi(Status status, zzjj zzjjVar) {
        TaskUtil.setResultOrApiException(status, zzjjVar, (TaskCompletionSource<zzjj>) this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzj(Status status) {
        TaskUtil.setResultOrApiException(status, this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzk(Status status, zzjo zzjoVar) {
        TaskUtil.setResultOrApiException(status, zzjoVar, (TaskCompletionSource<zzjo>) this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzl(Status status, zzjh zzjhVar) {
        TaskUtil.setResultOrApiException(status, zzjhVar, (TaskCompletionSource<zzjh>) this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzm(Status status, long j) {
        TaskUtil.setResultOrApiException(status, (Object) null, (TaskCompletionSource<Object>) this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzn(Status status) {
        TaskUtil.setResultOrApiException(status, this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzo(Status status, zzjs zzjsVar) {
        TaskUtil.setResultOrApiException(status, zzjsVar, (TaskCompletionSource<zzjs>) this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzp(Status status) {
        TaskUtil.setResultOrApiException(status, this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzq(Status status, long j) {
        TaskUtil.setResultOrApiException(status, Long.valueOf(j), (TaskCompletionSource<Long>) this.zza);
    }
}
