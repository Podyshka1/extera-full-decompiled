package com.google.android.gms.identitycredentials.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.identitycredentials.ClearCreationOptionsResponse;
import com.google.android.gms.identitycredentials.ClearCredentialStateResponse;
import com.google.android.gms.identitycredentials.ClearExportResponse;
import com.google.android.gms.identitycredentials.ClearRegistryResponse;
import com.google.android.gms.identitycredentials.CreateCredentialHandle;
import com.google.android.gms.identitycredentials.CreateCredentialResponse;
import com.google.android.gms.identitycredentials.CredentialTransferCapabilities;
import com.google.android.gms.identitycredentials.ExportCredentialsToDeviceSetupResponse;
import com.google.android.gms.identitycredentials.ImportCredentialsForDeviceSetupResponse;
import com.google.android.gms.identitycredentials.PendingGetCredentialHandle;
import com.google.android.gms.identitycredentials.PendingImportCredentialsHandle;
import com.google.android.gms.identitycredentials.RegisterCreationOptionsResponse;
import com.google.android.gms.identitycredentials.RegisterExportResponse;
import com.google.android.gms.identitycredentials.RegistrationResponse;
import com.google.android.gms.identitycredentials.SignalCredentialStateResponse;
import com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b \u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\u001a\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u000bH\u0016J\u001a\u0010\f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\rH\u0016J\u001a\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0013H\u0016J\u001a\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0015H\u0016J\u001a\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0017H\u0016J\u001a\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0019H\u0016J\u001a\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u001bH\u0016J\u001a\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u001dH\u0016J\u001a\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u001fH\u0016J\u001a\u0010 \u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010!H\u0016J\u001a\u0010\"\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010#H\u0016J\u001a\u0010$\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010%H\u0016¨\u0006&"}, d2 = {"Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialBaseCallbacks;", "Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialCallbacks$Stub;", "<init>", "()V", "onRegisterCredentials", _UrlKt.FRAGMENT_ENCODE_SET, "status", "Lcom/google/android/gms/common/api/Status;", "result", "Lcom/google/android/gms/identitycredentials/RegistrationResponse;", "onGetCredential", "Lcom/google/android/gms/identitycredentials/PendingGetCredentialHandle;", "onCreateCredential", "Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;", "onCreateCredentialV2", "Lcom/google/android/gms/identitycredentials/CreateCredentialHandle;", "onClearRegistry", "Lcom/google/android/gms/identitycredentials/ClearRegistryResponse;", "onImportCredentials", "Lcom/google/android/gms/identitycredentials/PendingImportCredentialsHandle;", "onRegisterExport", "Lcom/google/android/gms/identitycredentials/RegisterExportResponse;", "onRegisterCreationOptions", "Lcom/google/android/gms/identitycredentials/RegisterCreationOptionsResponse;", "onClearCredentialState", "Lcom/google/android/gms/identitycredentials/ClearCredentialStateResponse;", "onSignalCredentialState", "Lcom/google/android/gms/identitycredentials/SignalCredentialStateResponse;", "onClearExport", "Lcom/google/android/gms/identitycredentials/ClearExportResponse;", "onImportCredentialsForDeviceSetup", "Lcom/google/android/gms/identitycredentials/ImportCredentialsForDeviceSetupResponse;", "onExportCredentialsToDeviceSetup", "Lcom/google/android/gms/identitycredentials/ExportCredentialsToDeviceSetupResponse;", "onGetCredentialTransferCapabilities", "Lcom/google/android/gms/identitycredentials/CredentialTransferCapabilities;", "onClearCreationOptions", "Lcom/google/android/gms/identitycredentials/ClearCreationOptionsResponse;", "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class IdentityCredentialBaseCallbacks extends IIdentityCredentialCallbacks.Stub {
    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onClearCreationOptions(Status status, ClearCreationOptionsResponse result) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onClearCredentialState(Status status, ClearCredentialStateResponse result) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onClearExport(Status status, ClearExportResponse result) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onClearRegistry(Status status, ClearRegistryResponse result) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onCreateCredential(Status status, CreateCredentialResponse result) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onCreateCredentialV2(Status status, CreateCredentialHandle result) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onExportCredentialsToDeviceSetup(Status status, ExportCredentialsToDeviceSetupResponse result) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onGetCredential(Status status, PendingGetCredentialHandle result) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onGetCredentialTransferCapabilities(Status status, CredentialTransferCapabilities result) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onImportCredentials(Status status, PendingImportCredentialsHandle result) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onImportCredentialsForDeviceSetup(Status status, ImportCredentialsForDeviceSetupResponse result) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onRegisterCreationOptions(Status status, RegisterCreationOptionsResponse result) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onRegisterCredentials(Status status, RegistrationResponse result) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onRegisterExport(Status status, RegisterExportResponse result) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
    public void onSignalCredentialState(Status status, SignalCredentialStateResponse result) {
        throw new UnsupportedOperationException();
    }
}
