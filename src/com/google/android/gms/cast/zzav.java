package com.google.android.gms.cast;

import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.cast.zzff;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class zzav implements RemoteCall {
    static final /* synthetic */ zzav zza = new zzav();

    private /* synthetic */ zzav() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final /* synthetic */ void accept(Object obj, Object obj2) {
        com.google.android.gms.cast.internal.zzy zzyVar = (com.google.android.gms.cast.internal.zzy) obj;
        int i = zzbm.zzf;
        ((com.google.android.gms.cast.internal.zzah) zzyVar.getService()).zzh(zzff.zza(zzyVar.getContext()));
        ((TaskCompletionSource) obj2).setResult(null);
    }
}
