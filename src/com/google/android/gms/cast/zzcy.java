package com.google.android.gms.cast;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzcy implements ResultCallback {
    final /* synthetic */ zzcz zza;
    private final long zzb;

    public zzcy(zzcz zzczVar, long j) {
        Objects.requireNonNull(zzczVar);
        this.zza = zzczVar;
        this.zzb = j;
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final /* bridge */ /* synthetic */ void onResult(Result result) {
        Status status = (Status) result;
        if (status.isSuccess()) {
            return;
        }
        zzcz zzczVar = this.zza;
        zzczVar.zza.zzg().zzN(this.zzb, status.getStatusCode());
    }
}
