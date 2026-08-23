package com.google.android.gms.cast.internal;

import android.content.Context;
import com.google.android.gms.cast.zzax;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes.dex */
public final class zzn extends GoogleApi {
    private static final Api.ClientKey zza;
    private static final Api.AbstractClientBuilder zzb;
    private static final Api zzc;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zza = clientKey;
        zzi zziVar = new zzi();
        zzb = zziVar;
        zzc = new Api("CastApi.API", zziVar, clientKey);
    }

    public zzn(Context context) {
        super(context, zzc, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    public final Task zza(final String[] strArr) {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.internal.zzg
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzaj) ((zzo) obj).getService()).zzf(new zzk(this.zza, (TaskCompletionSource) obj2), strArr);
            }
        }).setFeatures(zzax.zzd).setAutoResolveMissingFeatures(false).setMethodKey(8425).build());
    }
}
