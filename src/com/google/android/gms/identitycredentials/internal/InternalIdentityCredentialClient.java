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
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 $2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001$B%\b\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\t\u0010\nB\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\u000bJ\u001d\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u000e2\u0006\u0010\r\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u000e2\u0006\u0010\r\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001d\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u000e2\u0006\u0010\r\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u001d\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\u000e2\u0006\u0010\r\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001f\u0010\u001dJ\u001d\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u000e2\u0006\u0010\r\u001a\u00020\u001aH\u0016¢\u0006\u0004\b!\u0010\u001dJ\u001d\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0\u000e2\u0006\u0010\r\u001a\u00020\u001aH\u0016¢\u0006\u0004\b#\u0010\u001d¨\u0006%"}, d2 = {"Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient;", "Lcom/google/android/gms/common/api/GoogleApi;", "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;", "Lcom/google/android/gms/identitycredentials/IdentityCredentialClient;", "Landroid/content/Context;", "context", "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;", "Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;", "clientBuilder", "<init>", "(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;)V", "(Landroid/content/Context;)V", "Lcom/google/android/gms/identitycredentials/GetCredentialRequest;", "request", "Lcom/google/android/gms/tasks/Task;", "Lcom/google/android/gms/identitycredentials/PendingGetCredentialHandle;", "getCredential", "(Lcom/google/android/gms/identitycredentials/GetCredentialRequest;)Lcom/google/android/gms/tasks/Task;", "Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;", "Lcom/google/android/gms/identitycredentials/CreateCredentialHandle;", "createCredential", "(Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;)Lcom/google/android/gms/tasks/Task;", "Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest;", "Lcom/google/android/gms/identitycredentials/SignalCredentialStateResponse;", "signalCredentialState", "(Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest;)Lcom/google/android/gms/tasks/Task;", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/google/android/gms/identitycredentials/ClearExportResponse;", "clearExport", "(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;", "Lcom/google/android/gms/identitycredentials/ExportCredentialsToDeviceSetupResponse;", "exportCredentialsToDeviceSetup", "Lcom/google/android/gms/identitycredentials/ImportCredentialsForDeviceSetupResponse;", "importCredentialsForDeviceSetup", "Lcom/google/android/gms/identitycredentials/CredentialTransferCapabilities;", "getCredentialTransferCapabilities", "Companion", "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class InternalIdentityCredentialClient extends GoogleApi<Api.ApiOptions.NoOptions> implements IdentityCredentialClient {
    private static final Api<Api.ApiOptions.NoOptions> API;
    private static final InternalIdentityCredentialClient$Companion$CLIENT_BUILDER$1 CLIENT_BUILDER;
    private static final Api.ClientKey<IdentityCredentialClientImpl> CLIENT_KEY;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.common.api.Api$AbstractClientBuilder, com.google.android.gms.identitycredentials.internal.InternalIdentityCredentialClient$Companion$CLIENT_BUILDER$1] */
    static {
        Api.ClientKey<IdentityCredentialClientImpl> clientKey = new Api.ClientKey<>();
        CLIENT_KEY = clientKey;
        ?? r1 = new Api.AbstractClientBuilder<IdentityCredentialClientImpl, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.identitycredentials.internal.InternalIdentityCredentialClient$Companion$CLIENT_BUILDER$1
            @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
            public IdentityCredentialClientImpl buildClient(Context context, Looper looper, ClientSettings commonSettings, Api.ApiOptions.NoOptions apiOptions, ConnectionCallbacks connectedListener, OnConnectionFailedListener connectionFailedListener) {
                return new IdentityCredentialClientImpl(context, looper, commonSettings, connectedListener, connectionFailedListener);
            }
        };
        CLIENT_BUILDER = r1;
        API = new Api<>("IdentityCredentials.API", r1, clientKey);
    }

    public InternalIdentityCredentialClient(Context context) {
        super(context, API, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createCredential$lambda$8(CreateCredentialRequest createCredentialRequest, IdentityCredentialClientImpl identityCredentialClientImpl, final TaskCompletionSource taskCompletionSource) {
        ((IIdentityCredentialService) identityCredentialClientImpl.getService()).createCredential(new IdentityCredentialBaseCallbacks() { // from class: com.google.android.gms.identitycredentials.internal.InternalIdentityCredentialClient$createCredential$1$callback$1
            @Override // com.google.android.gms.identitycredentials.internal.IdentityCredentialBaseCallbacks, com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
            public void onCreateCredentialV2(Status status, CreateCredentialHandle result) {
                TaskUtil.setResultOrApiException(status, result, taskCompletionSource);
            }
        }, createCredentialRequest, zzh.zza(identityCredentialClientImpl.getContext()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getCredential$lambda$0(GetCredentialRequest getCredentialRequest, IdentityCredentialClientImpl identityCredentialClientImpl, final TaskCompletionSource taskCompletionSource) {
        ((IIdentityCredentialService) identityCredentialClientImpl.getService()).getCredential(new IdentityCredentialBaseCallbacks() { // from class: com.google.android.gms.identitycredentials.internal.InternalIdentityCredentialClient$getCredential$1$callback$1
            @Override // com.google.android.gms.identitycredentials.internal.IdentityCredentialBaseCallbacks, com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
            public void onGetCredential(Status status, PendingGetCredentialHandle result) {
                TaskUtil.setResultOrApiException(status, result, taskCompletionSource);
            }
        }, getCredentialRequest, zzh.zza(identityCredentialClientImpl.getContext()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void signalCredentialState$lambda$13(SignalCredentialStateRequest signalCredentialStateRequest, IdentityCredentialClientImpl identityCredentialClientImpl, final TaskCompletionSource taskCompletionSource) {
        ((IIdentityCredentialService) identityCredentialClientImpl.getService()).signalCredentialState(new IdentityCredentialBaseCallbacks() { // from class: com.google.android.gms.identitycredentials.internal.InternalIdentityCredentialClient$signalCredentialState$1$callback$1
            @Override // com.google.android.gms.identitycredentials.internal.IdentityCredentialBaseCallbacks, com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
            public void onSignalCredentialState(Status status, SignalCredentialStateResponse result) {
                TaskUtil.setResultOrApiException(status, result, taskCompletionSource);
            }
        }, signalCredentialStateRequest, zzh.zza(identityCredentialClientImpl.getContext()));
    }

    @Override // com.google.android.gms.identitycredentials.IdentityCredentialClient
    public Task<CreateCredentialHandle> createCredential(final CreateCredentialRequest request) {
        return doWrite(TaskApiCall.builder().setFeatures(zze.zzf).run(new RemoteCall() { // from class: com.google.android.gms.identitycredentials.internal.zzg
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                InternalIdentityCredentialClient.createCredential$lambda$8(request, (IdentityCredentialClientImpl) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(32704).build());
    }

    @Override // com.google.android.gms.identitycredentials.IdentityCredentialClient
    public Task<PendingGetCredentialHandle> getCredential(final GetCredentialRequest request) {
        return doRead(TaskApiCall.builder().setFeatures(zze.zza).run(new RemoteCall() { // from class: com.google.android.gms.identitycredentials.internal.zzj
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                InternalIdentityCredentialClient.getCredential$lambda$0(request, (IdentityCredentialClientImpl) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(32701).build());
    }

    @Override // com.google.android.gms.identitycredentials.IdentityCredentialClient
    public Task<SignalCredentialStateResponse> signalCredentialState(final SignalCredentialStateRequest request) {
        return doWrite(TaskApiCall.builder().setFeatures(zze.zzj).run(new RemoteCall() { // from class: com.google.android.gms.identitycredentials.internal.zzi
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                InternalIdentityCredentialClient.signalCredentialState$lambda$13(request, (IdentityCredentialClientImpl) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(32709).build());
    }
}
