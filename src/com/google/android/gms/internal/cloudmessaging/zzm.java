package com.google.android.gms.internal.cloudmessaging;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.cloudmessaging.CloudMessagingClient;
import com.google.android.gms.cloudmessaging.RegisterRequest;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class zzm extends GoogleApi implements CloudMessagingClient {
    private static final Api.ClientKey zza;
    private static final Api.AbstractClientBuilder zzb;
    private static final Api zzc;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zza = clientKey;
        zzh zzhVar = new zzh();
        zzb = zzhVar;
        zzc = new Api("CloudMessaging.API", zzhVar, clientKey);
    }

    public zzm(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) zzc, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingClient
    public final Task<String> register(final RegisterRequest registerRequest) {
        return doRead(TaskApiCall.builder().setFeatures(com.google.android.gms.cloudmessaging.zzi.zza).run(new RemoteCall() { // from class: com.google.android.gms.internal.cloudmessaging.zzl
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zzm zzmVar = this.zza;
                zzd zzdVar = (zzd) obj;
                zzi zziVar = new zzi(zzmVar, (TaskCompletionSource) obj2);
                int i = 0;
                try {
                    i = Wrappers.packageManager(zzmVar.getApplicationContext()).getPackageInfo(zzmVar.getApplicationContext().getPackageName(), 0).versionCode;
                } catch (PackageManager.NameNotFoundException unused) {
                }
                RegisterRequest registerRequest2 = registerRequest;
                registerRequest2.zza(i);
                ((zze) zzdVar.getService()).zzc(zziVar, registerRequest2, zzq.zza(zzdVar.getContext()).toBuilder().setCallbackSupportEnabled(true).build());
            }
        }).setMethodKey(39001).build());
    }
}
