package com.google.android.gms.cast.internal;

import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes.dex */
final class zzk extends zzae {
    final /* synthetic */ TaskCompletionSource zza;

    zzk(zzn zznVar, TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override // com.google.android.gms.cast.internal.zzaf
    public final void zzb(Bundle bundle) {
        this.zza.setResult(bundle);
    }
}
