package com.google.android.gms.internal.p000authapi;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.auth.api.identity.GetSignInIntentRequest;
import com.google.android.gms.auth.api.identity.SignInClient;
import com.google.android.gms.auth.api.identity.SignInCredential;
import com.google.android.gms.auth.api.identity.zbv;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zbaq extends GoogleApi implements SignInClient {
    private static final Api.ClientKey zba;
    private static final Api.AbstractClientBuilder zbb;
    private static final Api zbc;
    private final String zbd;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zba = clientKey;
        zbal zbalVar = new zbal();
        zbb = zbalVar;
        zbc = new Api("Auth.Api.Identity.SignIn.API", zbalVar, clientKey);
    }

    @Override // com.google.android.gms.auth.api.identity.SignInClient
    public final Task beginSignIn(BeginSignInRequest beginSignInRequest) {
        Preconditions.checkNotNull(beginSignInRequest);
        BeginSignInRequest.Builder builderZba = BeginSignInRequest.zba(beginSignInRequest);
        builderZba.zba(this.zbd);
        final BeginSignInRequest beginSignInRequestBuild = builderZba.build();
        return doRead(TaskApiCall.builder().setFeatures(new Feature("auth_api_credentials_begin_sign_in", 8L)).run(new RemoteCall() { // from class: com.google.android.gms.internal.auth-api.zbaj
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zbw) ((zbar) obj).getService()).zbc(new zbam(this.zba, (TaskCompletionSource) obj2), (BeginSignInRequest) Preconditions.checkNotNull(beginSignInRequestBuild));
            }
        }).setAutoResolveMissingFeatures(false).setMethodKey(1553).build());
    }

    @Override // com.google.android.gms.auth.api.identity.SignInClient
    public final SignInCredential getSignInCredentialFromIntent(Intent intent) throws ApiException {
        if (intent == null) {
            throw new ApiException(Status.RESULT_INTERNAL_ERROR);
        }
        Status status = (Status) SafeParcelableSerializer.deserializeFromIntentExtra(intent, "status", Status.CREATOR);
        if (status == null) {
            throw new ApiException(Status.RESULT_CANCELED);
        }
        if (!status.isSuccess()) {
            throw new ApiException(status);
        }
        SignInCredential signInCredential = (SignInCredential) SafeParcelableSerializer.deserializeFromIntentExtra(intent, "sign_in_credential", SignInCredential.CREATOR);
        if (signInCredential != null) {
            return signInCredential;
        }
        throw new ApiException(Status.RESULT_INTERNAL_ERROR);
    }

    @Override // com.google.android.gms.auth.api.identity.SignInClient
    public final Task getSignInIntent(GetSignInIntentRequest getSignInIntentRequest) {
        Preconditions.checkNotNull(getSignInIntentRequest);
        GetSignInIntentRequest.Builder builderZba = GetSignInIntentRequest.zba(getSignInIntentRequest);
        builderZba.zba(this.zbd);
        final GetSignInIntentRequest getSignInIntentRequestBuild = builderZba.build();
        return doRead(TaskApiCall.builder().setFeatures(zbas.zbf).run(new RemoteCall() { // from class: com.google.android.gms.internal.auth-api.zbak
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zbw) ((zbar) obj).getService()).zbe(new zbao(this.zba, (TaskCompletionSource) obj2), (GetSignInIntentRequest) Preconditions.checkNotNull(getSignInIntentRequestBuild));
            }
        }).setMethodKey(1555).build());
    }

    @Override // com.google.android.gms.auth.api.identity.SignInClient
    public final Task signOut() {
        getApplicationContext().getSharedPreferences("com.google.android.gms.signin", 0).edit().clear().apply();
        Iterator it = GoogleApiClient.getAllClients().iterator();
        while (it.hasNext()) {
            ((GoogleApiClient) it.next()).maybeSignOut();
        }
        GoogleApiManager.reportSignOut();
        return doWrite(TaskApiCall.builder().setFeatures(zbas.zbb).run(new RemoteCall() { // from class: com.google.android.gms.internal.auth-api.zbai
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                this.zba.zbb((zbar) obj, (TaskCompletionSource) obj2);
            }
        }).setAutoResolveMissingFeatures(false).setMethodKey(1554).build());
    }

    final /* synthetic */ void zbb(zbar zbarVar, TaskCompletionSource taskCompletionSource) {
        ((zbw) zbarVar.getService()).zbf(new zban(this, taskCompletionSource), this.zbd);
    }

    public zbaq(Context context, zbv zbvVar) {
        super(context, zbc, zbvVar, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.zbd = zbat.zba();
    }
}
