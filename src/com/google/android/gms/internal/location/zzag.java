package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.StatusCallback;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.location.ActivityRecognitionClient;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class zzag extends GoogleApi implements ActivityRecognitionClient {
    static final Api.ClientKey zza;
    public static final Api zzb;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zza = clientKey;
        zzb = new Api("ActivityRecognition.API", new zzad(), clientKey);
    }

    @Override // com.google.android.gms.location.ActivityRecognitionClient
    public final Task removeActivityUpdates(final PendingIntent pendingIntent) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.internal.location.zzy
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                PendingIntent pendingIntent2 = pendingIntent;
                Api api = zzag.zzb;
                ((zzf) obj).zzp(pendingIntent2);
                ((TaskCompletionSource) obj2).setResult(null);
            }
        }).setMethodKey(2402).build());
    }

    @Override // com.google.android.gms.location.ActivityRecognitionClient
    public final Task requestActivityUpdates(long j, final PendingIntent pendingIntent) {
        com.google.android.gms.location.zza zzaVar = new com.google.android.gms.location.zza();
        zzaVar.zza(j);
        final com.google.android.gms.location.zzb zzbVarZzb = zzaVar.zzb();
        zzbVarZzb.zza(getContextAttributionTag());
        return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.internal.location.zzz
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                com.google.android.gms.location.zzb zzbVar = zzbVarZzb;
                PendingIntent pendingIntent2 = pendingIntent;
                Api api = zzag.zzb;
                zzaf zzafVar = new zzaf((TaskCompletionSource) obj2);
                Preconditions.checkNotNull(zzbVar, "ActivityRecognitionRequest can't be null.");
                Preconditions.checkNotNull(pendingIntent2, "PendingIntent must be specified.");
                Preconditions.checkNotNull(zzafVar, "ResultHolder not provided.");
                ((zzo) ((zzf) obj).getService()).zzs(zzbVar, pendingIntent2, new StatusCallback(zzafVar));
            }
        }).setMethodKey(2401).build());
    }

    public zzag(Context context) {
        super(context, zzb, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }
}
