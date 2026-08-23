package com.google.android.gms.identitycredentials.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.identitycredentials.CreateCredentialHandle;
import com.google.android.gms.identitycredentials.CreateCredentialRequest;
import com.google.android.gms.identitycredentials.GetCredentialRequest;
import com.google.android.gms.identitycredentials.IdentityCredentialClient;
import com.google.android.gms.identitycredentials.PendingGetCredentialHandle;
import com.google.android.gms.identitycredentials.SignalCredentialStateRequest;
import com.google.android.gms.identitycredentials.SignalCredentialStateResponse;
import com.google.android.gms.internal.identity_credentials.zze;
import com.google.android.gms.internal.identity_credentials.zzh;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class InternalIdentityCredentialClient extends GoogleApi implements IdentityCredentialClient {
    private static final Api API;
    private static final InternalIdentityCredentialClient$Companion$CLIENT_BUILDER$1 CLIENT_BUILDER;
    private static final Api.ClientKey CLIENT_KEY;
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.common.api.Api$AbstractClientBuilder, com.google.android.gms.identitycredentials.internal.InternalIdentityCredentialClient$Companion$CLIENT_BUILDER$1] */
    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        CLIENT_KEY = clientKey;
        ?? r1 = new Api.AbstractClientBuilder() { // from class: com.google.android.gms.identitycredentials.internal.InternalIdentityCredentialClient$Companion$CLIENT_BUILDER$1
            @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
            public IdentityCredentialClientImpl buildClient(Context context, Looper looper, ClientSettings commonSettings, Api.ApiOptions.NoOptions apiOptions, ConnectionCallbacks connectedListener, OnConnectionFailedListener connectionFailedListener) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(looper, "looper");
                Intrinsics.checkNotNullParameter(commonSettings, "commonSettings");
                Intrinsics.checkNotNullParameter(apiOptions, "apiOptions");
                Intrinsics.checkNotNullParameter(connectedListener, "connectedListener");
                Intrinsics.checkNotNullParameter(connectionFailedListener, "connectionFailedListener");
                return new IdentityCredentialClientImpl(context, looper, commonSettings, connectedListener, connectionFailedListener);
            }
        };
        CLIENT_BUILDER = r1;
        API = new Api("IdentityCredentials.API", r1, clientKey);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InternalIdentityCredentialClient(Context context) {
        super(context, API, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createCredential$lambda$8(CreateCredentialRequest createCredentialRequest, IdentityCredentialClientImpl identityCredentialClientImpl, final TaskCompletionSource taskCompletionSource) {
        ((IIdentityCredentialService) identityCredentialClientImpl.getService()).createCredential(new IdentityCredentialBaseCallbacks() { // from class: com.google.android.gms.identitycredentials.internal.InternalIdentityCredentialClient$createCredential$1$callback$1
            @Override // com.google.android.gms.identitycredentials.internal.IdentityCredentialBaseCallbacks, com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
            public void onCreateCredentialV2(Status status, CreateCredentialHandle createCredentialHandle) {
                Intrinsics.checkNotNullParameter(status, "status");
                TaskUtil.setResultOrApiException(status, createCredentialHandle, taskCompletionSource);
            }
        }, createCredentialRequest, zzh.zza(identityCredentialClientImpl.getContext()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getCredential$lambda$0(GetCredentialRequest getCredentialRequest, IdentityCredentialClientImpl identityCredentialClientImpl, final TaskCompletionSource taskCompletionSource) {
        ((IIdentityCredentialService) identityCredentialClientImpl.getService()).getCredential(new IdentityCredentialBaseCallbacks() { // from class: com.google.android.gms.identitycredentials.internal.InternalIdentityCredentialClient$getCredential$1$callback$1
            @Override // com.google.android.gms.identitycredentials.internal.IdentityCredentialBaseCallbacks, com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
            public void onGetCredential(Status status, PendingGetCredentialHandle pendingGetCredentialHandle) {
                Intrinsics.checkNotNullParameter(status, "status");
                TaskUtil.setResultOrApiException(status, pendingGetCredentialHandle, taskCompletionSource);
            }
        }, getCredentialRequest, zzh.zza(identityCredentialClientImpl.getContext()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void signalCredentialState$lambda$13(SignalCredentialStateRequest signalCredentialStateRequest, IdentityCredentialClientImpl identityCredentialClientImpl, final TaskCompletionSource taskCompletionSource) {
        ((IIdentityCredentialService) identityCredentialClientImpl.getService()).signalCredentialState(new IdentityCredentialBaseCallbacks() { // from class: com.google.android.gms.identitycredentials.internal.InternalIdentityCredentialClient$signalCredentialState$1$callback$1
            @Override // com.google.android.gms.identitycredentials.internal.IdentityCredentialBaseCallbacks, com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
            public void onSignalCredentialState(Status status, SignalCredentialStateResponse signalCredentialStateResponse) {
                Intrinsics.checkNotNullParameter(status, "status");
                TaskUtil.setResultOrApiException(status, signalCredentialStateResponse, taskCompletionSource);
            }
        }, signalCredentialStateRequest, zzh.zza(identityCredentialClientImpl.getContext()));
    }

    @Override // com.google.android.gms.identitycredentials.IdentityCredentialClient
    public Task createCredential(final CreateCredentialRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Task taskDoWrite = doWrite(TaskApiCall.builder().setFeatures(zze.zzf).run(new RemoteCall() { // from class: com.google.android.gms.identitycredentials.internal.zzg
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                InternalIdentityCredentialClient.createCredential$lambda$8(request, (IdentityCredentialClientImpl) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(32704).build());
        Intrinsics.checkNotNullExpressionValue(taskDoWrite, "doWrite(...)");
        return taskDoWrite;
    }

    @Override // com.google.android.gms.identitycredentials.IdentityCredentialClient
    public Task getCredential(final GetCredentialRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Task taskDoRead = doRead(TaskApiCall.builder().setFeatures(zze.zza).run(new RemoteCall() { // from class: com.google.android.gms.identitycredentials.internal.zzj
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                InternalIdentityCredentialClient.getCredential$lambda$0(request, (IdentityCredentialClientImpl) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(32701).build());
        Intrinsics.checkNotNullExpressionValue(taskDoRead, "doRead(...)");
        return taskDoRead;
    }

    @Override // com.google.android.gms.identitycredentials.IdentityCredentialClient
    public Task signalCredentialState(final SignalCredentialStateRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Task taskDoWrite = doWrite(TaskApiCall.builder().setFeatures(zze.zzj).run(new RemoteCall() { // from class: com.google.android.gms.identitycredentials.internal.zzi
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                InternalIdentityCredentialClient.signalCredentialState$lambda$13(request, (IdentityCredentialClientImpl) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(32709).build());
        Intrinsics.checkNotNullExpressionValue(taskDoWrite, "doWrite(...)");
        return taskDoWrite;
    }
}
