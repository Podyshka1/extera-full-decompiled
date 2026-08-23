package com.google.android.gms.internal.cast;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfu extends GoogleApi implements zzgb {
    public zzfu(Context context, zzfz zzfzVar) {
        super(context, (Api<zzfz>) zzga.zza, zzfzVar, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    @Override // com.google.android.gms.internal.cast.zzgb
    public final Task zza() {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.internal.cast.zzft
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                ((zzgh) ((zzgm) obj).getService()).zze(new zzfs(this.zza, (TaskCompletionSource) obj2));
            }
        }).setMethodKey(4501).build());
    }
}
