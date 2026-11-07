package com.google.android.gms.internal.cast;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.cast.framework.devicesuggestions.DeviceSuggestionsCallback;
import com.google.android.gms.cast.framework.devicesuggestions.DeviceSuggestionsClient;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class zzav extends GoogleApi implements DeviceSuggestionsClient {
    private static final Api.ClientKey zza;
    private static final Api.AbstractClientBuilder zzb;
    private static final Api zzc;
    private static final Logger zzd;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zza = clientKey;
        zzaj zzajVar = new zzaj();
        zzb = zzajVar;
        zzc = new Api("DeviceSuggestions.API", zzajVar, clientKey);
        zzd = new Logger("InternalDeviceSuggestionsClient");
    }

    public zzav(Activity activity) {
        super(activity, (Api<Api.ApiOptions.NoOptions>) zzc, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    @Override // com.google.android.gms.cast.framework.devicesuggestions.DeviceSuggestionsClient
    public final Task<Void> clearClientData() {
        return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.internal.cast.zzat
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                ((zzai) ((zzaf) obj).getService()).zzh(new zzaq(this.zza, (TaskCompletionSource) obj2));
            }
        }).setFeatures(com.google.android.gms.cast.zzaq.zzn).setMethodKey(37604).build());
    }

    @Override // com.google.android.gms.cast.framework.devicesuggestions.DeviceSuggestionsClient
    public final Task<Void> registerCallback(DeviceSuggestionsCallback deviceSuggestionsCallback) {
        ListenerHolder listenerHolderRegisterListener = registerListener(deviceSuggestionsCallback, "DeviceSuggestionsCallback");
        final zzam zzamVar = new zzam(this, listenerHolderRegisterListener);
        RemoteCall remoteCall = new RemoteCall() { // from class: com.google.android.gms.internal.cast.zzau
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                ((zzai) ((zzaf) obj).getService()).zze(new zzan(this.zza, (TaskCompletionSource) obj2), zzamVar);
            }
        };
        return doRegisterEventListener(RegistrationMethods.builder().register(remoteCall).unregister(new RemoteCall() { // from class: com.google.android.gms.internal.cast.zzar
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                ((zzai) ((zzaf) obj).getService()).zzf(new zzao(this.zza, (TaskCompletionSource) obj2), zzamVar);
            }
        }).withHolder(listenerHolderRegisterListener).setFeatures(com.google.android.gms.cast.zzaq.zzn).setMethodKey(37601).build());
    }

    @Override // com.google.android.gms.cast.framework.devicesuggestions.DeviceSuggestionsClient
    public final Task<Void> requestDeviceSuggestions() {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.internal.cast.zzas
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                ((zzai) ((zzaf) obj).getService()).zzg(new zzap(this.zza, (TaskCompletionSource) obj2));
            }
        }).setFeatures(com.google.android.gms.cast.zzaq.zzn).setMethodKey(37603).build());
    }

    @Override // com.google.android.gms.cast.framework.devicesuggestions.DeviceSuggestionsClient
    public final Task<Boolean> unregisterCallback(DeviceSuggestionsCallback deviceSuggestionsCallback) {
        return doUnregisterEventListener(ListenerHolders.createListenerKey(deviceSuggestionsCallback, "DeviceSuggestionsCallback"), 37602);
    }

    public zzav(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) zzc, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }
}
