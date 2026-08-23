package com.google.android.gms.auth.blockstore.restorecredential.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.blockstore.restorecredential.GetRestoreCredentialRequest;
import com.google.android.gms.auth.blockstore.restorecredential.GetRestoreCredentialResponse;
import com.google.android.gms.auth.blockstore.restorecredential.RestoreCredentialClient;
import com.google.android.gms.auth.blockstore.restorecredential.internal.IGetRestoreCredentialCallback;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.internal.auth_blockstore.zzab;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 \u000e2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u000eB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient;", "Lcom/google/android/gms/common/api/GoogleApi;", "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;", "Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredentialClient;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Lcom/google/android/gms/auth/blockstore/restorecredential/GetRestoreCredentialRequest;", "request", "Lcom/google/android/gms/tasks/Task;", "Lcom/google/android/gms/auth/blockstore/restorecredential/GetRestoreCredentialResponse;", "getRestoreCredential", "(Lcom/google/android/gms/auth/blockstore/restorecredential/GetRestoreCredentialRequest;)Lcom/google/android/gms/tasks/Task;", "Companion", "java.com.google.android.gmscore.integ.client.auth_blockstore_client_auth_blockstore"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
public final class InternalRestoreCredentialClient extends GoogleApi<Api.ApiOptions.NoOptions> implements RestoreCredentialClient {
    private static final Api<Api.ApiOptions.NoOptions> API;
    private static final Api.ClientKey<RestoreCredentialClientImpl> CLIENT_KEY;
    private static final InternalRestoreCredentialClient$Companion$clientBuilder$1 clientBuilder;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient$Companion$clientBuilder$1, com.google.android.gms.common.api.Api$AbstractClientBuilder] */
    static {
        Api.ClientKey<RestoreCredentialClientImpl> clientKey = new Api.ClientKey<>();
        CLIENT_KEY = clientKey;
        ?? r1 = new Api.AbstractClientBuilder<RestoreCredentialClientImpl, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient$Companion$clientBuilder$1
            @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
            public RestoreCredentialClientImpl buildClient(Context context, Looper looper, ClientSettings commonSettings, Api.ApiOptions.NoOptions apiOptions, ConnectionCallbacks connectedListener, OnConnectionFailedListener connectionFailedListener) {
                return new RestoreCredentialClientImpl(context, looper, commonSettings, connectedListener, connectionFailedListener);
            }
        };
        clientBuilder = r1;
        API = new Api<>("RestoreCredential.API", r1, clientKey);
    }

    public InternalRestoreCredentialClient(Context context) {
        super(context, API, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getRestoreCredential$lambda$0(GetRestoreCredentialRequest getRestoreCredentialRequest, RestoreCredentialClientImpl restoreCredentialClientImpl, final TaskCompletionSource taskCompletionSource) {
        ((IRestoreCredentialService) restoreCredentialClientImpl.getService()).getRestoreCredential(getRestoreCredentialRequest, new IGetRestoreCredentialCallback.Stub() { // from class: com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient$getRestoreCredential$1$callback$1
            @Override // com.google.android.gms.auth.blockstore.restorecredential.internal.IGetRestoreCredentialCallback
            public void onGetRestoreCredential(Status status, GetRestoreCredentialResponse response) {
                TaskUtil.setResultOrApiException(status, response, taskCompletionSource);
            }
        });
    }

    @Override // com.google.android.gms.auth.blockstore.restorecredential.RestoreCredentialClient
    public Task<GetRestoreCredentialResponse> getRestoreCredential(final GetRestoreCredentialRequest request) {
        return doRead(TaskApiCall.builder().setFeatures(zzab.zzk).run(new RemoteCall() { // from class: com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                InternalRestoreCredentialClient.getRestoreCredential$lambda$0(request, (RestoreCredentialClientImpl) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(1695).build());
    }
}
