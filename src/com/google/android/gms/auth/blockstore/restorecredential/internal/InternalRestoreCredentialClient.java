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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class InternalRestoreCredentialClient extends GoogleApi implements RestoreCredentialClient {
    private static final Api API;
    private static final Api.ClientKey CLIENT_KEY;
    public static final Companion Companion = new Companion(null);
    private static final InternalRestoreCredentialClient$Companion$clientBuilder$1 clientBuilder;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient$Companion$clientBuilder$1, com.google.android.gms.common.api.Api$AbstractClientBuilder] */
    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        CLIENT_KEY = clientKey;
        ?? r1 = new Api.AbstractClientBuilder() { // from class: com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient$Companion$clientBuilder$1
            @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
            public RestoreCredentialClientImpl buildClient(Context context, Looper looper, ClientSettings commonSettings, Api.ApiOptions.NoOptions apiOptions, ConnectionCallbacks connectedListener, OnConnectionFailedListener connectionFailedListener) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(looper, "looper");
                Intrinsics.checkNotNullParameter(commonSettings, "commonSettings");
                Intrinsics.checkNotNullParameter(apiOptions, "apiOptions");
                Intrinsics.checkNotNullParameter(connectedListener, "connectedListener");
                Intrinsics.checkNotNullParameter(connectionFailedListener, "connectionFailedListener");
                return new RestoreCredentialClientImpl(context, looper, commonSettings, connectedListener, connectionFailedListener);
            }
        };
        clientBuilder = r1;
        API = new Api("RestoreCredential.API", r1, clientKey);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InternalRestoreCredentialClient(Context context) {
        super(context, API, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getRestoreCredential$lambda$0(GetRestoreCredentialRequest request, RestoreCredentialClientImpl restoreCredentialClientImpl, final TaskCompletionSource taskCompletionSource) {
        Intrinsics.checkNotNullParameter(request, "$request");
        ((IRestoreCredentialService) restoreCredentialClientImpl.getService()).getRestoreCredential(request, new IGetRestoreCredentialCallback.Stub() { // from class: com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient$getRestoreCredential$1$callback$1
            @Override // com.google.android.gms.auth.blockstore.restorecredential.internal.IGetRestoreCredentialCallback
            public void onGetRestoreCredential(Status status, GetRestoreCredentialResponse response) {
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(response, "response");
                TaskUtil.setResultOrApiException(status, response, taskCompletionSource);
            }
        });
    }

    @Override // com.google.android.gms.auth.blockstore.restorecredential.RestoreCredentialClient
    public Task getRestoreCredential(final GetRestoreCredentialRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Task taskDoRead = doRead(TaskApiCall.builder().setFeatures(zzab.zzk).run(new RemoteCall() { // from class: com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                InternalRestoreCredentialClient.getRestoreCredential$lambda$0(request, (RestoreCredentialClientImpl) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(1695).build());
        Intrinsics.checkNotNullExpressionValue(taskDoRead, "doRead(...)");
        return taskDoRead;
    }
}
