package com.google.android.gms.cast.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzi extends zzaf {
    final /* synthetic */ TaskCompletionSource zza;

    public zzi(zzn zznVar, TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
        Objects.requireNonNull(zznVar);
    }

    @Override // com.google.android.gms.cast.internal.zzag
    public final void zzb(Bundle bundle, ApiMetadata apiMetadata) {
        this.zza.setResult(bundle);
    }
}
