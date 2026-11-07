package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class zzbv implements zzce {
    static final /* synthetic */ zzbv zza = new zzbv();

    private /* synthetic */ zzbv() {
    }

    @Override // com.google.android.gms.internal.location.zzce
    public final /* synthetic */ void zza(zzec zzecVar, ListenerHolder.ListenerKey listenerKey, boolean z, TaskCompletionSource taskCompletionSource) {
        zzecVar.zzw(listenerKey, z, taskCompletionSource);
    }
}
