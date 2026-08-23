package com.google.android.gms.fido.fido2;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions;
import com.google.android.gms.internal.fido.zzo;
import com.google.android.gms.internal.fido.zzp;
import com.google.android.gms.internal.fido.zzs;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public class Fido2ApiClient extends GoogleApi {
    private static final Api.ClientKey zza;
    private static final Api zzb;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zza = clientKey;
        zzb = new Api("Fido.FIDO2_API", new zzo(), clientKey);
    }

    public Task getRegisterPendingIntent(final PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions) {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.fido.fido2.zza
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzs) ((zzp) obj).getService()).zzc(new zzf(this.zza, (TaskCompletionSource) obj2), publicKeyCredentialCreationOptions);
            }
        }).setMethodKey(5407).build());
    }

    public Fido2ApiClient(Context context) {
        super(context, zzb, Api.ApiOptions.NO_OPTIONS, new ApiExceptionMapper());
    }
}
