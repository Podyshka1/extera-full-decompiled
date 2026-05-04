package com.google.android.gms.identitycredentials;

import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes4.dex */
public interface IdentityCredentialClient {
    Task createCredential(CreateCredentialRequest createCredentialRequest);

    Task getCredential(GetCredentialRequest getCredentialRequest);

    Task signalCredentialState(SignalCredentialStateRequest signalCredentialStateRequest);
}
